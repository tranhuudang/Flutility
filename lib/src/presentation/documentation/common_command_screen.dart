import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/shared/ui/components/highlight_text.dart';
import 'package:flutter_toolkits/src/presentation/shared/ui/components/see_more_section.dart';
part 'flutter_commands.dart';
class CommandLineScreen extends StatefulWidget {
  const CommandLineScreen({super.key});

  @override
  State<CommandLineScreen> createState() => _CommandLineScreenState();
}

class _CommandLineScreenState extends State<CommandLineScreen> {

  // List of unique topics for filtering
  List<String> get topics =>
      flutterCommands.map((command) => command['topic']!).toSet().toList();

  // Current selected topic for filtering
  String? selectedTopic;

  @override
  Widget build(BuildContext context) {
    // Filtered list of commands based on selected topic
    final filteredCommands = selectedTopic == null
        ? flutterCommands
        : flutterCommands
            .where((command) => command['topic'] == selectedTopic)
            .toList();

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.tasks_app_20_regular),
        title: Text('Common Flutter CLI Commands'.i18n),
        actions: [
          DropdownButton<String>(
            borderRadius: BorderRadius.circular(5),
            padding: const EdgeInsets.symmetric(horizontal: 8),
            value: selectedTopic,
            hint: Text("Select Topic".i18n,
                style: const TextStyle(color: Colors.white)),
            icon: const Icon(Icons.filter_list),
            underline: Container(),
            items: [
              DropdownMenuItem(
                value: null,
                child: Text("All".i18n),
              ),
              ...topics.map((topic) => DropdownMenuItem(
                    value: topic,
                    child: Text(topic[0].toUpperCase() + topic.substring(1)),
                  )),
            ],
            onChanged: (value) {
              setState(() {
                selectedTopic = value;
              });
            },
          ),
          10.width,
        ],
      ),
      body: ListView.builder(
        padding: const EdgeInsets.only(left: 10, right: 10),
        itemCount: filteredCommands.length,
        itemBuilder: (context, index) {
          final command = filteredCommands[index];
          return SeeMoreSection(
            title: SelectableText(
              command['command']!,
              style: context.theme.textTheme.titleMedium
                  ?.copyWith(color: context.theme.colorScheme.primary),
            ),
            subtitle: SelectableText(command['description']!),
            onTap: () {
              Clipboard.setData(
                ClipboardData(text: command['command']!),
              );
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Copied to clipboard'.i18n),
                ),
              );
            },
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: HighlightedText(
                  highlightedColor: context.theme.colorScheme.secondary,
                  onHighlightedColor: context.theme.colorScheme.onSecondary,
                  text: command['details'] ?? 'No additional details provided.',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
