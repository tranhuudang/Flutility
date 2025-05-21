part of 'main.dart';

class _Initializer {
  static Future<void> start() async {
    await _initialFirebase();
    if (isWindows) {
      await _initForWindows();
    }
    if (isMacOS) {
      await _initForMacOS();
    }
    if (isWeb) {
      await _initForWeb();
    }
  }

  static Future<void> _initialFirebase() async {
    FirebaseOptions? options;

    if (isWindows) {
      options = DefaultFirebaseOptions.windows;
    } else if (isMacOS) {
      options = DefaultFirebaseOptions.macos;
    } else if (isWeb) {
      options = DefaultFirebaseOptions.web;
    }

    if (options == null) {
      throw UnsupportedError(
          'Unsupported platform for Firebase initialization');
    }

    await Firebase.initializeApp(options: options);

    // Configure Firestore persistence
    if (!isWeb) {
      if (isWindows) {
        await _configureWindowsFirestore();
      } else {
        FirebaseFirestore.instance.settings =
            const Settings(persistenceEnabled: true);
      }
    }
  }

  static Future<void> _configureWindowsFirestore() async {
    try {
      await FirebaseFirestore.instance.clearPersistence();
      FirebaseFirestore.instance.settings =
          const Settings(persistenceEnabled: true);
    } catch (e) {
      DebugLog.error('Failed to configure Windows Firestore persistence: $e');
    }
  }

  static Future<void> _initForWeb() async {
    // ui
    await Properties.initialize().then((_) {});

    /// No longer use open ai but deepgram instead
    // Future.delayed(const Duration(seconds: 10), () {
    //   OpenAIKeySelector.init();
    // });
  }

  static Future<void> _initForWindows() async {
    // ui
    await Properties.initialize().then((_) {});
    await WindowsStatusBar.initialize();
    await windowManager.ensureInitialized();
    // Get setting and set default value for windows size, title
    Size savedWindowsSize = Size(Properties.instance.settings.windowsWidth,
        Properties.instance.settings.windowsHeight);
    WindowManager.instance.setSize(savedWindowsSize);
    WindowManager.instance.setMinimumSize(DefaultSettings.minWindowsSize);
    WindowManager.instance.setMaximumSize(DefaultSettings.maxWindowsSize);
    WindowManager.instance.setTitle(DefaultSettings.appName);
    WindowManager.instance.setTitleBarStyle(TitleBarStyle.hidden);
  }

  static Future<void> _initForMacOS() async {
    // ui
    await Properties.initialize().then((_) {});

    await windowManager.ensureInitialized();
    // Get setting and set default value for windows size, title
    Size savedWindowsSize = Size(Properties.instance.settings.windowsWidth,
        Properties.instance.settings.windowsHeight);
    WindowManager.instance.setSize(savedWindowsSize);
    WindowManager.instance.setMinimumSize(DefaultSettings.minWindowsSize);
    WindowManager.instance.setMaximumSize(DefaultSettings.maxWindowsSize);
    WindowManager.instance.setTitle(DefaultSettings.appName);
    // Future.delayed(const Duration(seconds: 10), () {
    //   OpenAIKeySelector.init();
    // });
  }
}
