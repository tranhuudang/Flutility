import 'dart:convert';

import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:flutility/src/data/data.dart';
import 'package:flutility/src/presentation/presentation.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutter/services.dart';

class ReleaseNotesView extends StatefulWidget {
  final bool isShowingAsSingleScreen;
  const ReleaseNotesView({super.key, this.isShowingAsSingleScreen = true});

  @override
  State<ReleaseNotesView> createState() => _ReleaseNotesViewState();
}

class _ReleaseNotesViewState extends State<ReleaseNotesView> {
  List<ReleaseNote> releaseNotes = [];
  bool isLoading = true;

  // Use async/await for better readability
  @override
  void initState() {
    super.initState();
    _loadReleaseNotes();
  }

  Future<void> _loadReleaseNotes() async {
    final String response =
        await rootBundle.loadString(LocalDirectory.releaseNotes);
    final List<dynamic> data = json.decode(response);
    setState(() {
      releaseNotes = data.map((json) => ReleaseNote.fromJson(json)).toList();
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: widget.isShowingAsSingleScreen
          ? AppBar(
              title: Text(
                'Release notes'.i18n,
              ),
            )
          : null,
      body:
          isLoading ? const FlickrLoadingIndicator() : _buildReleaseNotesList(),
    );
  }

  // Extract list building logic for better organization
  Widget _buildReleaseNotesList() {
    return widget.isShowingAsSingleScreen
        ? ListView.builder(
            itemCount: releaseNotes.length,
            itemBuilder: (BuildContext context, int index) {
              return ReleaseNotesItem(
                releaseNote: releaseNotes[index],
              );
            },
          )
        : Card(
            margin: const EdgeInsets.only(left: .5, right: .5, bottom: 4),
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 8),
              itemCount: releaseNotes.length,
              itemBuilder: (BuildContext context, int index) {
                return ReleaseNotesItem(
                  releaseNote: releaseNotes[index],
                );
              },
            ),
          );
  }
}

// Simplify ReleaseNotesItem by passing the whole ReleaseNote object
class ReleaseNotesItem extends StatelessWidget {
  const ReleaseNotesItem({
    super.key,
    required this.releaseNote,
  });
  final ReleaseNote releaseNote;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Row(
        children: [
          Text(
            releaseNote.version,
            style: context.theme.textTheme.titleMedium
                ?.copyWith(color: context.theme.colorScheme.primary),
          ),
          const Spacer(),
          Opacity(
              opacity: .5,
              child: Text(
                releaseNote.date,
                style: context.theme.textTheme.bodySmall,
              )),
        ],
      ),
      subtitle: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: releaseNote.changesNote.map((e) => Text('- $e')).toList(),
      ),
    );
  }
}
