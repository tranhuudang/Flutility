import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutility/src/presentation/icon_generator/riverpod/app_icon_generator_riverpod.dart';
import 'package:flutility/src/presentation/icon_generator/riverpod/app_icon_generator_state.dart';
import 'package:flutter/material.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:dotted_border/dotted_border.dart';

class AppIconGeneratorScreen extends ConsumerStatefulWidget {
  const AppIconGeneratorScreen({super.key});

  @override
  ConsumerState<AppIconGeneratorScreen> createState() =>
      _AppIconGeneratorScreenState();
}

class _AppIconGeneratorScreenState
    extends ConsumerState<AppIconGeneratorScreen> {
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    final state = ref.watch(appIconGeneratorProvider);
    final notifier = ref.read(appIconGeneratorProvider.notifier);

    ref.listen<AppIconGeneratorState>(appIconGeneratorProvider,
        (previous, next) {
      if (next.isGenerateSuccess &&
          !next.isGenerateError &&
          !next.isGenerating) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Icons generated successfully!')),
        );
      } else if (next.isGenerateError &&
          !next.isGenerateSuccess &&
          !next.isGenerating) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Failed to generate icons!')),
        );
      }
    });

    return Consumer(builder: (context, ref, _) {
      return Scaffold(
        appBar: AppBar(
          leading: const Icon(FluentIcons.apps_settings_16_regular),
          title: Text('App Icon Setter for Flutter Project'.i18n),
          actions: [
            IconButton(
              icon: const Icon(FluentIcons.question_circle_28_regular),
              onPressed: () {
                _scrollController.animateTo(
                  _scrollController.position.maxScrollExtent,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeOut,
                );
              },
            ),
            8.width,
          ],
        ),
        body: ListView(
          shrinkWrap: true,
          controller: _scrollController,
          padding: const EdgeInsets.only(bottom: 16, right: 16, left: 16),
          children: [
            // Step 1: Select PNG Image
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Step 1: Select a PNG Image'.i18n,
                            style: context.theme.textTheme.titleMedium,
                          ),
                          const SizedBox(height: 8),
                          Text(
                            'Choose a PNG image that will be used to generate icons for various platforms. The image should be clear and high-resolution.'
                                .i18n,
                            style: TextStyle(
                                fontSize: 14, color: Colors.grey[600]),
                          ),
                        ],
                      ),
                    ),
                    if (state.selectedImage != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0),
                        child: Image.file(
                          state.selectedImage!,
                          width: 128,
                          height: 128,
                        ),
                      ),
                  ],
                ),
                const SizedBox(height: 8),
                Center(
                  child: ElevatedButton(
                    onPressed: notifier.pickImage,
                    child: Text(state.selectedImage == null
                        ? 'Select PNG Image'.i18n
                        : 'Change Image'.i18n),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 16.0),
            // Step 2: Select Flutter Project Location
            Text(
              'Step 2: Select the Flutter Project Location'.i18n,
              style: context.theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Pick the root directory of your Flutter project. Icons will be generated and placed in the appropriate folders for Android, iOS, macOS, Windows, and Web platforms.'
                  .i18n,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),

            if (state.projectPath.isNotEmpty)
              Padding(
                padding: const EdgeInsets.only(top: 8.0),
                child: Row(
                  children: [
                    Text('${'Project Path:'.i18n} '),
                    Expanded(
                        child: Text(
                      state.projectPath,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: context.theme.colorScheme.primary),
                    )),
                  ],
                ),
              ),
            16.height,
            Center(
              child: ElevatedButton(
                onPressed: notifier.pickProjectPath,
                child: Text(state.projectPath.isEmpty
                    ? 'Select Flutter Project'.i18n
                    : 'Change Project Path'.i18n),
              ),
            ),
            24.height,
            // Step 3: Generate Icons
            Text(
              'Step 3: Generate Icons'.i18n,
              style: context.theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              'Click the "Generate Icons" button to create icons for each platform. Make sure you have selected a valid PNG image and Flutter project location before proceeding.'
                  .i18n,
              style: TextStyle(fontSize: 14, color: Colors.grey[600]),
            ),
            const SizedBox(height: 16),
            DottedBorder(
              dashPattern: const [4, 4],
              borderType: BorderType.RRect,
              strokeWidth: 1,
              radius: const Radius.circular(5),
              color: context.theme.dividerColor,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  // Generate for Android
                  SwitchListTile(
                    title: const Text('Android'),
                    value: state.generateForAndroid,
                    onChanged: (value) {
                      notifier.setGenerateForAndroid(value);
                    },
                  ),

                  // Generate for iOS
                  SwitchListTile(
                    title: const Text('iOS'),
                    value: state.generateForIos,
                    onChanged: (value) {
                      notifier.setGenerateForIos(value);
                    },
                  ),

                  // Generate for macOS
                  SwitchListTile(
                    title: const Text('macOS'),
                    value: state.generateForMacos,
                    onChanged: (value) {
                      notifier.setGenerateForMacos(value);
                    },
                  ),

                  // Generate for Windows
                  SwitchListTile(
                    title: const Text('Windows'),
                    value: state.generateForWindows,
                    onChanged: (value) {
                      notifier.setGenerateForWindows(value);
                    },
                  ),

                  // Generate for Web
                  SwitchListTile(
                    title: const Text('Web'),
                    value: state.generateForWeb,
                    onChanged: (value) {
                      notifier.setGenerateForWeb(value);
                    },
                  ),
                ],
              ),
            ),
            16.height,
            Center(
              child: ElevatedButton(
                onPressed: (state.selectedImage != null &&
                        state.projectPath.isNotEmpty &&
                        !state.isGenerating)
                    ? notifier.generateIcons
                    : null,
                child: state.isGenerating
                    ? const CircularProgressIndicator()
                    : Text('Generate Icons'.i18n),
              ),
            ),
            16.height,
            DottedBorder(
              dashPattern: const [4, 4],
              borderType: BorderType.RRect,
              strokeWidth: .5,
              radius: const Radius.circular(5),
              color: context.theme.dividerColor,
              child: Opacity(
                opacity: .5,
                child: Container(
                  padding: const EdgeInsets.all(8),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('The following folders will be changed.'.i18n),
                      const Text('<Flutter_Project_Location>\n'
                          '├── android/app/src/main/res/\n'
                          '│   ├── mipmap-mdpi/\n'
                          '│   ├── mipmap-hdpi/\n'
                          '│   ├── mipmap-xhdpi/\n'
                          '│   ├── mipmap-xxhdpi/\n'
                          '│   └── mipmap-xxxhdpi/\n'
                          '├── ios/Runner/Assets.xcassets/AppIcon.appiconset/\n'
                          '├── macos/Runner/Assets.xcassets/AppIcon.appiconset/\n'
                          '├── windows/runner/resources/\n'
                          '└── web/icons/\n'),
                    ],
                  ),
                ),
              ),
            ),
            16.height,

            const Divider(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '${'Resources'.i18n}:',
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                8.height,
                InkWell(
                  onTap: () =>
                      openUrl(OnlineDirectory.howToCustomizeIconOnAndroid),
                  child: Text(
                    'How do I remove the unwanted white border around my app icon on Android devices?'
                        .i18n,
                    style: const TextStyle(
                      fontSize: 14,
                      color: Colors.blueAccent,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
