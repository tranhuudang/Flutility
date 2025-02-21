import 'dart:async';
import 'dart:io';
import 'dart:convert';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart' as quill;
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';

class NoteEditorScreen extends StatefulWidget {
  const NoteEditorScreen({super.key});

  @override
  State<NoteEditorScreen> createState() => _NoteEditorScreenState();
}

class _NoteEditorScreenState extends State<NoteEditorScreen> {
  late quill.QuillController _controller;
  Timer? _debounceTimer;

  @override
  void initState() {
    super.initState();
    _initDefault();
    _initializeEditor();
  }

  @override
  void dispose() {
    _debounceTimer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  _initDefault() {
    final sampleContent = quill.Document()
      ..insert(0, 'Start typing your notes here. Your notes will auto-save.');
    _controller = quill.QuillController(
      document: sampleContent,
      selection: const TextSelection.collapsed(offset: 0),
    );
  }

  Future<void> _initializeEditor() async {
    final directory = await getApplicationSupportDirectory();
    final filePath = join(directory.path, LocalDirectory.devNotesFileName);

    DebugLog.info("Getting Dev Notes from: $filePath");

    if (await File(filePath).exists()) {
      // Load saved document
      final content = await File(filePath).readAsString();
      final doc = quill.Document.fromJson(jsonDecode(content));
      _controller = quill.QuillController(
        document: doc,
        selection: const TextSelection.collapsed(offset: 0),
      );
    }

    _controller.addListener(_onTextChanged);
    setState(() {}); // Update UI after initialization
  }

  void _onTextChanged() {
    // Reset the debounce timer on every text change
    if (_debounceTimer?.isActive ?? false) _debounceTimer!.cancel();

    // Save the document after 1.5 seconds of inactivity
    _debounceTimer = Timer(const Duration(milliseconds: 1500), () {
      _saveDocument();
    });
  }

  Future<void> _saveDocument() async {
    try {
      final content = jsonEncode(_controller.document.toDelta().toJson());
      final directory = await getApplicationSupportDirectory();
      final filePath = join(directory.path, LocalDirectory.devNotesFileName);

      final file = File(filePath);
      await file.writeAsString(content);

      DebugLog.info('Dev note auto-saved at $filePath');
    } catch (e) {
      DebugLog.info('Dev note failed to auto-save document: $e');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.notebook_16_regular),
        title: const Text('Dev Notes'),
        actions: const [
          // IconButton(
          //   icon: const Icon(FluentIcons.open_16_regular),
          //   onPressed: _loadDocument,
          //   tooltip: 'Open Note'.i18n,
          // ),
        ],
      ),
      body: Column(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 4, right: 0, bottom: 8),
              child: quill.QuillToolbar.simple(
                  controller: _controller,
                  configurations: const quill.QuillSimpleToolbarConfigurations(
                    toolbarIconAlignment: WrapAlignment.start,
                    showDividers: true,
                    showClipboardCopy: false,
                    showClipboardCut: false,
                    showClipboardPaste: false,
                    showFontFamily: false,
                    showSubscript: false,
                    showSuperscript: false,
                    showStrikeThrough: false,
                    showHeaderStyle: false,
                  )),
            ),
          ),
          Expanded(
            child: quill.QuillEditor.basic(
              configurations: const quill.QuillEditorConfigurations(
                  padding: EdgeInsets.symmetric(horizontal: 16)),
              controller: _controller,
              //readOnly: false, // Editor is editable
            ),
          ),
        ],
      ),
    );
  }
}
