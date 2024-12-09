part of 'documentation_screen.dart';

final List<Map<String, dynamic>> data = [
  {
    'title': 'Dev Environment',
    'items': [
      {
        'name': 'Android Studio Shortcuts',
        'url': 'https://developer.android.com/studio/intro/keyboard-shortcuts'
      },
      {
        'name': 'VSCode Shortcuts (Windows)',
        'url':
            'https://code.visualstudio.com/shortcuts/keyboard-shortcuts-windows.pdf'
      },
      {
        'name': 'VSCode Shortcuts (macOS)',
        'url':
            'https://code.visualstudio.com/shortcuts/keyboard-shortcuts-macos.pdf'
      },
      {
        'name': 'Flutter CLI',
        'url': 'https://docs.flutter.dev/reference/flutter-cli'
      },
      {'name': 'Dart CLI', 'url': 'https://dart.dev/tools/dart-tool'},
      {'name': 'DartPad', 'url': 'https://dartpad.dev/'},
      {
        'name': 'DartPad Documentation',
        'url': 'https://dart.dev/tools/dartpad'
      },
      {'name': 'Zapp!', 'url': 'https://zapp.run'},
      {
        'name': 'Interactive Git Learning Online',
        'url': 'https://learngitbranching.js.org'
      },
    ],
  },
  {
    'title': 'Language',
    'items': [
      {
        'name': 'Dart Language Tour',
        'url': 'https://dart.dev/guides/language/language-tour'
      },
      {
        'name': 'Effective Dart',
        'url': 'https://dart.dev/guides/language/effective-dart'
      },
      {
        'name': 'Static Analysis Setup',
        'url': 'https://dart.dev/guides/language/analysis-options'
      },
      {
        'name': 'Sound Problems Guide',
        'url': 'https://dart.dev/guides/language/sound-problems'
      },
      {
        'name': 'Dart Linter Rules',
        'url': 'https://dart.dev/tools/linter-rules'
      },
      {'name': 'DCM Code Quality', 'url': 'https://dcm.dev/'},
    ],
  },
  {
    'title': 'Basic Widgets',
    'items': [
      {
        'name': 'Widget of the Week Playlist',
        'url':
            'https://youtube.com/playlist?list=PLjxrf2q8roU23XGwz3Km7sQZFTdB996iG'
      },
      {
        'name': 'Package of the Week Playlist',
        'url':
            'https://youtube.com/playlist?list=PLjxrf2q8roU1quF6ny8oFHJ2gBdrYN_AK'
      },
      {
        'name': 'Introduction to Widgets',
        'url': 'https://flutter.dev/docs/development/ui/widgets-intro'
      },
      {'name': 'Material Design', 'url': 'http://material.io'},
      {
        'name': 'Apple Design Guidelines',
        'url': 'https://developer.apple.com/design/'
      },
    ],
  },
  {
    'title': 'Core Design Patterns',
    'items': [
      {
        'name': 'Wikipedia: Design Patterns',
        'url': 'https://en.wikipedia.org/wiki/Design_Patterns'
      },
      {
        'name': 'Gang of Four Book',
        'url': 'https://en.wikipedia.org/wiki/Design_Patterns'
      },
      {
        'name': 'Flutter Design Patterns',
        'url': 'https://flutterdesignpatterns.com'
      },
      {
        'name': 'Refactoring Guru',
        'url': 'https://refactoring.guru/design-patterns'
      },
    ],
  },
  {
    'title': 'Core Design Principles',
    'items': [
      {
        'name': 'KISS Principle',
        'url': 'https://en.wikipedia.org/wiki/KISS_principle'
      },
      {
        'name': 'DRY Principle',
        'url': 'https://en.wikipedia.org/wiki/Don%27t_repeat_yourself'
      },
      {'name': 'SOLID', 'url': 'https://en.wikipedia.org/wiki/SOLID'},
      {'name': 'Clean Coders', 'url': 'https://cleancoders.com'},
      {'name': 'Provider Package', 'url': 'https://pub.dev/packages/provider'},
      {'name': 'Get It Package', 'url': 'https://pub.dev/packages/get_it'},
      {
        'name': 'Injectable Package',
        'url': 'https://pub.dev/packages/injectable'
      },
    ],
  },
  {
    'title': 'Networking',
    'items': [
      {
        'name': 'REST Architecture',
        'url': 'https://en.wikipedia.org/wiki/Representational_state_transfer'
      },
      {'name': 'Retrofit Package', 'url': 'https://pub.dev/packages/retrofit'},
      {
        'name': 'Json Serializable',
        'url': 'https://pub.dev/packages/json_serializable'
      },
    ],
  },
  {
    'title': 'Simple Persistence',
    'items': [
      {
        'name': 'Shared Preferences',
        'url': 'https://pub.dev/packages/shared_preferences'
      },
      {
        'name': 'Flutter Secure Storage',
        'url': 'https://pub.dev/packages/flutter_secure_storage'
      },
    ],
  },
  {
    'title': 'Database',
    'items': [
      {'name': 'Isar', 'url': 'https://pub.dev/packages/isar'},
      {'name': 'Sqflite', 'url': 'https://pub.dev/packages/sqflite'},
      {
        'name': 'Firebase Storage',
        'url': 'https://pub.dev/packages/firebase_storage'
      },
      {
        'name': 'Cloud Firestore',
        'url': 'https://pub.dev/packages/cloud_firestore'
      },
      {
        'name': 'iCloud Storage',
        'url': 'https://pub.dev/packages/icloud_storage'
      },
    ],
  },
  {
    'title': 'Architecture',
    'items': [
      {'name': 'Flutter Samples', 'url': 'https://fluttersamples.com'},
      {'name': 'Async Redux', 'url': 'https://pub.dev/packages/async_redux'},
      {'name': 'Flutter MobX', 'url': 'https://pub.dev/packages/flutter_mobx'},
      {'name': 'Flutter Bloc', 'url': 'https://pub.dev/packages/flutter_bloc'},
    ],
  },
  {
    'title': 'Testing',
    'items': [
      {
        'name': 'Test-driven Development (TDD)',
        'url': 'https://en.wikipedia.org/wiki/Test-driven_development'
      },
      {
        'name': 'Behavior-driven Development (BDD)',
        'url': 'https://en.wikipedia.org/wiki/Behavior-driven_development'
      },
      {
        'name': 'TDD by Kent Beck',
        'url':
        'https://www.amazon.com/Test-Driven-Development-Kent-Beck/dp/0321146530'
      },
    ],
  },
  {
    'title': 'Languages',
    'items': [
      {
        'name': 'Kotlin Android Course',
        'url':
        'https://www.udacity.com/course/developing-android-apps-with-kotlin--ud9012'
      },
      {
        'name': 'Stanford CS193P iOS Development',
        'url': 'https://cs193p.sites.stanford.edu'
      },
    ],
  },
];

final List<Map<String, dynamic>> dataSecondHaft = [

  {
    'title': 'Dart',
    'items': [
      {'name': 'Freezed Package', 'url': 'https://pub.dev/packages/freezed'},
      {'name': 'F# Inspiration', 'url': 'https://fsharpforfunandprofit.com'},
    ],
  },
  {
    'title': 'Package Manager',
    'items': [
      {
        'name': 'Developing Packages',
        'url':
            'https://flutter.dev/docs/development/packages-and-plugins/developing-packages'
      },
      {'name': 'CocoaPods', 'url': 'https://cocoapods.org'},
      {
        'name': 'Gradle',
        'url': 'https://docs.gradle.org/current/userguide/userguide.html'
      },
    ],
  },
  {
    'title': 'Profiling',
    'items': [
      {
        'name': 'UI Performance',
        'url': 'https://flutter.dev/docs/perf/rendering/ui-performance'
      },
      {
        'name': 'YouTube Performance Tips',
        'url': 'https://youtu.be/vVg9It7cOfY'
      },
    ],
  },
  {
    'title': 'Flutter Internals',
    'items': [
      {
        'name': 'Flutter YouTube Internals',
        'url': 'https://youtu.be/UUfXWzp0-DU'
      },
      {
        'name': 'Another Flutter Internal Guide',
        'url': 'https://youtu.be/dkyY9WCGMi0'
      },
      {
        'name': 'CMU Course Video',
        'url':
            'http://www.cs.cmu.edu/~bam/uicourse/830spring20/05-830-2020-03-23-Lecture-10-Flutter.mp4'
      },
      {'name': 'Dart VM Insights', 'url': 'https://mrale.ph/dartvm/'},
      {
        'name': 'Flutter Architecture Guide',
        'url': 'https://surf.dev/flutter-architecture-guide/'
      },
    ],
  },
  {
    'title': 'Security',
    'items': [
      {
        'name': 'OWASP MASVS',
        'url': 'https://owasp.org/www-project-mobile-app-security/'
      },
      {'name': 'FreeRasp Package', 'url': 'https://pub.dev/packages/freerasp'},
    ],
  },
  {
    'title': 'Continuous Integration',
    'items': [
      {'name': 'Fastlane', 'url': 'https://fastlane.tools'},
      {'name': 'Danger', 'url': 'https://danger.systems'},
      {'name': 'SonarQube', 'url': 'https://www.sonarqube.org'},
      {'name': 'Codemagic', 'url': 'https://codemagic.io/'},
      {'name': 'Travis CI', 'url': 'https://travis-ci.org'},
    ],
  },
  {
    'title': 'Analytics',
    'items': [
      {
        'name': 'Firebase Analytics',
        'url': 'https://firebase.google.com/docs/analytics'
      },
      {
        'name': 'App Center Analytics',
        'url': 'https://docs.microsoft.com/en-us/appcenter/analytics/'
      },
      {
        'name': 'Mixpanel Flutter SDK',
        'url': 'https://developer.mixpanel.com/docs/flutter'
      },
      {
        'name': 'Smartlook SDK',
        'url': 'https://docs.smartlook.com/docs/sdk/flutter'
      },
      {
        'name': 'Datadog Flutter Plugin',
        'url': 'https://pub.dev/packages/datadog_flutter_plugin'
      },
    ],
  },
  {
    'title': 'Store',
    'items': [
      {
        'name': 'App Store Guidelines',
        'url': 'https://developer.apple.com/app-store/review/guidelines/'
      },
      {
        'name': 'Google Play Developer Policy',
        'url': 'https://play.google.com/about/developer-content-policy/'
      },
      {
        'name': 'Android Launch Checklist',
        'url':
            'https://developer.android.com/distribute/best-practices/launch/launch-checklist'
      },
    ],
  },
];
