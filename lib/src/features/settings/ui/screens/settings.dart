import 'dart:async';
import 'dart:io';
import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:file_picker/file_picker.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutility/src/features/presentation.dart';
import 'package:flutility/src/app/app.dart';
import 'package:path/path.dart' as path;
import 'package:path_provider/path_provider.dart';
import 'package:flutility/generated/l10n.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  Future<void> _restoreBackupFiles() async {
    try {
      FilePickerResult? result =
          await FilePicker.pickFiles(allowMultiple: true);

      if (result != null) {
        List<File> files = result.paths.map((path) => File(path!)).toList();

        // Copy the selected files to the application support directory
        Directory appSupportDir = await getApplicationSupportDirectory();
        for (File file in files) {
          String newFilePath =
              path.join(appSupportDir.path, file.uri.pathSegments.last);
          if (file.uri.pathSegments.last ==
                  LocalDirectory.sharedPreferencesFileName) {
            await file.copy(newFilePath);
            // Inform the user
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                  content: Text(
                      'Backup files is copied to Application Support Directory.'
                          )),
            );
          } else {
            // Inform the user
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(S.of(context).backupFilesIsNotValid)),
            );
          }
        }
      }
    } catch (e) {
      DebugLog.error("${S.of(context).errorPickingFiles} $e");
    }
  }

  Future<void> _createBackupFiles() async {
    Directory appSupportDir = await getApplicationSupportDirectory();
    final List<String> targetFilePaths = [
      path.join(appSupportDir.path, LocalDirectory.sharedPreferencesFileName),
    ];
    try {
      // Pick a directory
      String? directoryPath = await FilePicker.getDirectoryPath();

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
                  Text(S.of(context).backupFilesAreSavedToSelectedDirectory)),
        );
      } else {
        // User canceled the directory picker
      }
    } catch (e) {
      print("${S.of(context).errorPickingDirectoryOrCopyingFiles} $e");
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
        title: Text(S.of(context).settings),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Section(title: S.of(context).common, children: [
            /// Theme switcher
            Row(
              children: [
                SizedBox(
                    width: 80,
                    child: Text(
                      S.of(context).theme,
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
                      S.of(context).language,
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
                          S.of(context).restoreFromABackupFile,
                          style: context.theme.textTheme.titleSmall,
                        ),
                        subtitle: Text(
                          S.of(context).personalDataNotice,
                        ))),
                8.width,
                SizedBox(
                  width: 200,
                  child: Column(
                    children: [
                      FilledButton.tonal(
                          child: Text(S.of(context).createANewBackup),
                          onPressed: () {
                            _createBackupFiles();
                          }),
                      8.height,
                      DividerWithText(text: S.of(context).or),
                      8.height,
                      FilledButton.tonal(
                          child: Text(S.of(context).restore),
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
                S.of(context).resetToDefaultSettings,
                style: context.theme.textTheme.titleSmall,
              ),
              subtitle: Text(
                  'Restore the settings to their default as when the application was first installed.'
                      ),
              onTap: () {
                context.showAlertDialog(
                    title: S.of(context).resetToDefaultSettings,
                    content:
                        'Restore the settings to their default as when the application was first installed.'
                            ,
                    action: () {
                      Properties.instance
                          .saveSettings(DefaultSettings.settings);
                      context.showSnackBar(
                          content: 'Default settings are restored.');
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
  final supportedLanguages = ['English', 'Tiếng Việt', 'System default'];

  @override
  Widget build(BuildContext context) {
    final settingBloc = context.read<SettingBloc>();
    return StreamBuilder<String>(
        stream: languageStreamController.stream,
        initialData: Properties.instance.settings.language,
        builder: (context, languageState) {
          // The language is already stored as display name (e.g., 'English', 'Tiếng Việt')
          final language = languageState.data ?? 'System default';
          return DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              focusColor: context.theme.scaffoldBackgroundColor,
              borderRadius: BorderRadius.circular(16),
              value: supportedLanguages.contains(language)
                  ? language
                  : 'System default',
              onChanged: (String? displayName) {
                if (displayName != null) {
                  // Save the display name directly (not the locale code)
                  languageStreamController.add(displayName);
                  settingBloc.add(ChangeLanguageEvent(language: displayName));
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
