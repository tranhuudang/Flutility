import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutter/material.dart';

class DevNoteScreen extends StatelessWidget {
  const DevNoteScreen({super.key});

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
      body: const NoteEditorScreen(
        isShowAppBar: false,
        devNotesFileName: LocalDirectory.devNotesFileName,
      ),
    );
  }
}
