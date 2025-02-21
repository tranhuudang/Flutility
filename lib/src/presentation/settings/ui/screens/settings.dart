import 'dart:async';
import 'dart:io';
import 'package:file_picker/file_picker.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_toolkits/src/presentation/presentation.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/shared/ui/widgets/divider_with_text.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {

  Future<void> _restoreBackupFiles() async {
    try {
      FilePickerResult? result =
          await FilePicker.platform.pickFiles(allowMultiple: true);

      if (result != null) {
        List<File> files = result.paths.map((path) => File(path!)).toList();

        // Copy the selected files to the application support directory
        Directory appSupportDir = await getApplicationSupportDirectory();
        for (File file in files.take(2)) {
          String newFilePath =
              path.join(appSupportDir.path, file.uri.pathSegments.last);
          if ((file.uri.pathSegments.last ==
                  LocalDirectory.sharedPreferencesFileName) ||
              (file.uri.pathSegments.last == LocalDirectory.devNotesFileName)) {
            await file.copy(newFilePath);
            // Inform the user
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(
                      'Backup files is copied to Application Support Directory.'
                          .i18n)),
            );
          } else {
            // Inform the user
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text('Backup files is not valid.'.i18n)),
            );
          }
        }
      }
    } catch (e) {
      DebugLog.error("${"Error picking files:".i18n} $e");
    }
  }

  Future<void> _createBackupFiles() async {
    Directory appSupportDir = await getApplicationSupportDirectory();
    final List<String> targetFilePaths = [
      path.join(appSupportDir.path, LocalDirectory.sharedPreferencesFileName),
      path.join(appSupportDir.path, LocalDirectory.devNotesFileName),
    ];
    try {
      // Pick a directory
      String? directoryPath = await FilePicker.platform.getDirectoryPath();

      if (directoryPath != null) {
        Directory selectedDirectory = Directory(directoryPath);

        // Copy the specified files to the picked directory
        for (String itemPath in targetFilePaths) {
          File file = File(itemPath);
          String newFilePath =
              path.join(selectedDirectory.path, file.uri.pathSegments.last);
          await file.copy(newFilePath);
        }

        // Inform the user
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
              content:
                  Text('Backup files are saved to selected directory'.i18n)),
        );
      } else {
        // User canceled the directory picker
      }
    } catch (e) {
      print("${"Error picking directory or copying files:".i18n} $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        scrolledUnderElevation: 0,
        leading: isDesktop || isWebDesktop
            ? const Icon(FluentIcons.settings_16_regular)
            : const ChevronBackButton(),
        title: Text('Settings'.i18n),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Section(title: 'Common'.i18n, children: [
            /// Theme switcher
            Row(
              children: [
                SizedBox(
                    width: 80,
                    child: Text(
                      'Theme'.i18n,
                      style: context.theme.textTheme.titleSmall,
                    )),
                isWindows || isMacOS || isWeb ? 8.width : 4.width,
                const ThemeSwitcher(),
              ],
            ),
            8.height,

            /// Language switcher
            Row(
              children: [
                SizedBox(
                    width: 80,
                    child: Text(
                      'Language'.i18n,
                      style: context.theme.textTheme.titleSmall,
                    )),
                8.width,
                const LanguageSwitcher(),
              ],
            ),
            16.height,
            const ThemeColorPalette(),
            8.height,
            const Divider(),
            Row(
              children: [
                Expanded(
                    child: ListTile(
                        minLeadingWidth: 0,
                        contentPadding: const EdgeInsets.symmetric(vertical: 8),
                        title: Text(
                          'Restore from a backup file'.i18n,
                          style: context.theme.textTheme.titleSmall,
                        ),
                        subtitle: Text(
                          'personal-data-notice'.i18n,
                        ))),
                8.width,
                SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      FilledButton.tonal(
                          child: Text('Create a new backup'.i18n),
                          onPressed: () {
                            _createBackupFiles();
                          }),
                      8.height,
                      DividerWithText(text: 'or'.i18n),
                      8.height,
                      FilledButton.tonal(
                          child: Text('Restore'.i18n),
                          onPressed: () {
                            _restoreBackupFiles();
                          }),
                    ],
                  ),
                ),
              ],
            ),

            const Divider(),
            ListTile(
              minLeadingWidth: 0,
              contentPadding: const EdgeInsets.symmetric(vertical: 8),
              title: Text(
                'Reset to default settings'.i18n,
                style: context.theme.textTheme.titleSmall,
              ),
              subtitle: Text(
                  'Restore the settings to their default as when the application was first installed.'
                      .i18n),
              onTap: () {
                context.showAlertDialog(
                    title: 'Reset to default settings'.i18n,
                    content:
                        'Restore the settings to their default as when the application was first installed.'
                            .i18n,
                    action: () {
                      Properties.instance
                          .saveSettings(DefaultSettings.settings);
                      context.showSnackBar(
                          content: 'Default settings are restored.'.i18n);
                    });
              },
              trailing: const Icon(Icons.restart_alt),
            ),
          ]),
        ],
      ),
    );
  }
}

class LanguageSwitcher extends StatefulWidget {
  const LanguageSwitcher({super.key});

  @override
  State<LanguageSwitcher> createState() => _LanguageSwitcherState();
}

class _LanguageSwitcherState extends State<LanguageSwitcher> {
  final languageStreamController = StreamController<String>();
  final supportedLanguages = ['English', 'Tiếng Việt', '中国', 'System default'];
  @override
  Widget build(BuildContext context) {
    final settingBloc = context.read<SettingBloc>();
    return StreamBuilder<String>(
        stream: languageStreamController.stream,
        initialData: Properties.instance.settings.language,
        builder: (context, languageState) {
          return DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              focusColor: context.theme.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(16),
              value: languageState.data,
              onChanged: (String? language) {
                if (language != null) {
                  languageStreamController.add(language);
                  settingBloc.add(ChangeLanguageEvent(language: language));
                }
              },
              items: supportedLanguages
                  .map<DropdownMenuItem<String>>((String language) {
                return DropdownMenuItem<String>(
                  value: language,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8),
                    child: Text(language),
                  ),
                );
              }).toList(),
            ),
          );
        });
  }
}
