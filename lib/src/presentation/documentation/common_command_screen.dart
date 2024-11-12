import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/shared/ui/components/highlight_text.dart';
import 'package:flutter_toolkits/src/presentation/shared/ui/components/see_more_section.dart';

class CommandLineScreen extends StatefulWidget {
  const CommandLineScreen({super.key});

  @override
  _CommandLineScreenState createState() => _CommandLineScreenState();
}

class _CommandLineScreenState extends State<CommandLineScreen> {
  // List of common Flutter commands with topic categorization
  final List<Map<String, String>> flutterCommands = [
    {
      'command': 'flutter create <project_name>',
      'description': 'Creates a new Flutter project with the specified name.',
      'details':
          'Use this command to set up a new Flutter project. Replace <project_name> with your desired name, which will create a directory with basic structure and configuration files. '
              'Make sure you are in the correct directory where you want this new project to be created. Example: `flutter create my_app`.',
      'topic': 'flutter'
    },
    {
      'command': 'flutter run',
      'description':
          'Runs the application on the connected device or emulator.',
      'details':
          'Runs your app on a connected device or emulator. Useful for testing the app’s real-time behavior and performance. Ensure a device or emulator is available by running `adb devices` for Android or opening an iOS Simulator. '
              'Use `flutter run -d <device_id>` to specify a device when multiple are connected. Example: `flutter run -d emulator-5554`.',
      'topic': 'flutter'
    },
    {
      'command': 'flutter build apk',
      'description': 'Builds a release APK for Android.',
      'details':
          'Creates a release APK, which is an optimized build for distribution (e.g., to the Google Play Store). Use this only after thoroughly testing in debug mode. '
              'Consider using `flutter build apk --release --split-per-abi` to generate smaller APK files for different CPU architectures.',
      'topic': 'flutter'
    },
    {
      'command': 'flutter build ios',
      'description':
          'Builds a release IPA for iOS (requires a Mac with Xcode).',
      'details':
          'Generates a release build for iOS. This requires a Mac and a properly configured Xcode environment. '
              'Use this to create an IPA file for App Store submission or ad-hoc distribution. To ensure the app meets App Store guidelines, test thoroughly on a physical device.',
      'topic': 'flutter'
    },
    {
      'command': 'flutter clean',
      'description':
          'Deletes the build/ and .dart_tool/ directories for a fresh build.',
      'details':
          'Removes temporary files and cached data from the build and .dart_tool folders. Use this command to resolve issues where Flutter might be caching outdated files, '
              'or when you want a completely fresh build of the project. This is useful before creating a release build or after upgrading dependencies.',
      'topic': 'flutter'
    },
    {
      'command': 'flutter pub get',
      'description': 'Gets the dependencies listed in your pubspec.yaml file.',
      'details':
          'Downloads and installs packages specified in pubspec.yaml. Use this whenever you add a new dependency to ensure it’s available to the project. '
              'This command may also run automatically when you open a project or modify the pubspec.yaml file.',
      'topic': 'package'
    },
    {
      'command': 'flutter pub upgrade',
      'description':
          'Upgrades all dependencies to the latest versions allowed.',
      'details':
          'Updates dependencies to the latest versions within the constraints specified in pubspec.yaml. Useful for keeping libraries up-to-date. '
              'Use with caution as some updates may introduce breaking changes.',
      'topic': 'package'
    },
    {
      'command': 'flutter pub run build_runner build',
      'description':
          'Runs code generation using build_runner (e.g., for JSON serialization).',
      'details':
          'Executes code generation for libraries requiring generated code, like `json_serializable`. Run this whenever you add or modify annotated classes. '
              'For example, use with packages like `json_serializable` to generate JSON serialization logic based on `@JsonSerializable` annotations.',
      'topic': 'build runner'
    },
    {
      'command': 'flutter pub run build_runner watch',
      'description':
          'Watches for file changes and re-runs code generation as needed.',
      'details':
          'Keeps the build runner running in the background, automatically regenerating code on file changes. Ideal for development, as it eliminates the need to manually re-run `build_runner build` after each change.',
      'topic': 'build runner'
    },
    {
      'command': 'flutter pub run build_runner clean',
      'description':
          'Cleans up generated files for a fresh build with build_runner.',
      'details':
          'Deletes all generated files, including files generated by `build_runner build`. Useful when build_runner files become out of sync with project files, which can cause errors in generated code.',
      'topic': 'build runner'
    },
    {
      'command': 'keytool -list -v -keystore <path_to_keystore>',
      'description': 'Shows details of the keystore (for Android signing).',
      'details':
          'Displays information about a keystore file, typically used to sign Android apps for production. Replace `<path_to_keystore>` with the path to your keystore file. '
              'Use this to verify the details of your app’s signing key, such as alias, validity, and fingerprint (SHA-1, SHA-256).',
      'topic': 'signing key'
    },
    {
      'command': 'flutter config --enable-web',
      'description': 'Enables Flutter for web development.',
      'details':
          'Configures the Flutter environment to support web development. After running this command, use `flutter devices` to confirm that a “web” device is available. '
              'This command is only required once per environment setup for web development.',
      'topic': 'flutter'
    },
    {
      'command': 'flutter build web',
      'description': 'Builds a web version of the application.',
      'details':
          'Generates an optimized version of the app for deployment on the web, placing it in the `build/web` directory. '
              'Before deploying, thoroughly test your app’s web performance and functionality.',
      'topic': 'flutter'
    },
    {
      'command': 'flutter build macos',
      'description': 'Builds a release version for macOS (requires macOS).',
      'details':
          'Creates a release build of your Flutter app for macOS. Use this only on a macOS machine with the necessary dependencies installed. '
              'The output can be used for distribution via the Mac App Store or direct download links.',
      'topic': 'flutter'
    },
    {
      'command': 'flutter build windows',
      'description': 'Builds a release version for Windows.',
      'details':
          'Compiles the Flutter app as a Windows executable (.exe), suitable for distribution. Before building, ensure all Windows-specific dependencies are properly configured. '
              'Consider code signing for Windows apps to enhance security and user trust.',
      'topic': 'flutter'
    },
    {
      'command': 'flutter upgrade',
      'description': 'Upgrades Flutter to the latest stable release.',
      'details':
          'Fetches and applies the latest stable Flutter SDK version. Run this periodically to stay up-to-date with the latest Flutter improvements. '
              'After upgrading, test your app thoroughly to ensure compatibility with the new version.',
      'topic': 'flutter'
    },
    {
      'command': 'flutter precache',
      'description': 'Downloads binaries for all platforms (useful for CI/CD).',
      'details':
          'Pre-downloads necessary binaries for different platforms to avoid on-the-fly downloads during builds, making CI/CD processes faster. '
              'This command is often used in CI pipelines to minimize runtime delays.',
      'topic': 'flutter'
    },
    // Firebase
    {
      "command": "firebase login",
      "description": "Logs in to Firebase CLI with your Google account.",
      "details":
      "Use this command to authenticate the Firebase CLI on your machine. It opens a browser window where you can sign in with your Google account to enable Firebase operations.",
      "topic": "firebase setup"
    },
    {
      "command": "firebase init",
      "description": "Initializes Firebase in your Flutter project.",
      "details":
      "Runs a setup wizard that helps configure Firebase features (such as Firestore, Auth, Functions, and Hosting) in your project. Follow the prompts to select the desired Firebase services.",
      "topic": "firebase setup"
    },
    {
      "command": "flutterfire configure",
      "description": "Configures Firebase automatically for a Flutter project.",
      "details":
      "Adds Firebase configuration to the Flutter project, updating `firebase_options.dart` automatically. Requires the FlutterFire CLI.",
      "topic": "firebase setup"
    },
    {
      "command": "dart pub global activate flutterfire_cli",
      "description": "Installs the FlutterFire CLI globally in your Dart environment.",
      "details": "This command installs the `flutterfire_cli` package, which is a tool for easily setting up Firebase in your Flutter project. The CLI helps automate tasks such as Firebase project configuration, Firebase app initialization, and generating Firebase configuration files (`firebase_options.dart`). After running this command, you can use Firebase tools directly within your Flutter project.",
      "topic": "firebase setup"
    },
    // Create msix setup on windows
    {
      "command": "dart run msix:create",
      "description": "Creates an MSIX package for your Flutter app.",
      "details": "This command packages your Flutter app into the MSIX format, which is suitable for deployment on Windows. It is typically used when you want to distribute your Flutter app as a Windows app, ensuring the app can be installed securely and easily via the Microsoft Store or other Windows distribution channels. This command may be part of a custom package or script designed to integrate MSIX packaging into your Flutter project workflow.",
      "topic": "msix packaging"
    },
    // freezed
    {
      "command":
      "flutter pub run build_runner build --delete-conflicting-outputs",
      "description":
      "Generates code for Freezed data classes, replacing any conflicting outputs.",
      "details":
      "Generates code for classes annotated with `@freezed`. Run this after defining Freezed models or when changes are made to regenerate supporting code, including copyWith, equality, and JSON support.",
      "topic": "freezed"
    },
    {
      "command":
      "flutter pub run build_runner watch --delete-conflicting-outputs",
      "description":
      "Watches for file changes and regenerates code for Freezed in real-time.",
      "details":
      "This command keeps `build_runner` in a watch mode for automatic regeneration when annotated files change, making development with Freezed smoother.",
      "topic": "freezed"
    },
    // intl
    {
      "command":
      "flutter pub run intl_translation:extract_to_arb --output-dir=<arb_directory>",
      "description": "Extracts messages to ARB files for localization.",
      "details":
      "Generates ARB files from your Dart code, which can be translated into different languages. Specify the output directory by replacing `<arb_directory>`.",
      "topic": "intl"
    },
    {
      "command":
      "flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n <dart_files> <arb_files>",
      "description": "Generates Dart localization files from ARB files.",
      "details":
      "After translations are added to ARB files, use this command to generate corresponding Dart files for localization. Replace `<dart_files>` with source files and `<arb_files>` with ARB files. Example: `flutter pub run intl_translation:generate_from_arb --output-dir=lib/l10n lib/*.dart lib/l10n/*.arb`.",
      "topic": "intl"
    },
    // Testing
    {
      "command": "flutter test --coverage",
      "description": "Runs tests and generates a test coverage report.",
      "details":
      "Executes all tests and produces a coverage report, saved in the `coverage` directory. This is especially helpful for tracking code coverage across the project.",
      "topic": "testing"
    },
    {
      "command": "genhtml coverage/lcov.info -o coverage/html",
      "description":
      "Converts the test coverage report into an HTML format for easy viewing.",
      "details":
      "After running `flutter test --coverage`, use this command to generate an HTML report from `lcov.info`. Install `lcov` for this to work.",
      "topic": "testing"
    },
  ];

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
