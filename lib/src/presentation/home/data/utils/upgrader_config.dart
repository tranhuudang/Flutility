import 'package:flutter_toolkits/src/core/core.dart';
import 'package:upgrader/upgrader.dart';

class UpgraderConfig {
  static const _appcastURL =
      'https://raw.githubusercontent.com/tranhuudang/diccon_dictionary/master/version.xml';
  static final upgrader = Upgrader(
    languageCode: Properties.instance.settings.language.toLocale().languageCode,
    // debugDisplayAlways: true,
    storeController: UpgraderStoreController(
      onAndroid: () => UpgraderAppcastStore(appcastURL: _appcastURL),
      onWindows: () => UpgraderAppcastStore(appcastURL: _appcastURL),
      onMacOS: () => UpgraderAppcastStore(appcastURL: _appcastURL),
    ),
  );
}