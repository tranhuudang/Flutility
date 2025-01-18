import 'dart:async';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_toolkits/src/presentation/presentation.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/shared/ui/widgets/divider_with_text.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
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
                          onPressed: () {}),
                      8.height,
                      DividerWithText(text: 'or'.i18n),
                      8.height,
                      FilledButton.tonal(
                          child: Text('Restore'.i18n), onPressed: () {}),
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
