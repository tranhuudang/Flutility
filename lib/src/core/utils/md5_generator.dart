import 'dart:convert';
import 'dart:math';
import 'package:crypto/crypto.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter_toolkits/src/core/core.dart';

class Md5Generator {
  static Future<String?> composeMD5IdForFirebaseDbDesktopLogin() async {
    if (isWindows) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      WindowsDeviceInfo windowsInfo = await deviceInfo.windowsInfo;
      var deviceId = windowsInfo.deviceId;
      var bytes = utf8.encode(deviceId);
      var resultMd5 = md5.convert(bytes);
      DebugLog.info('Created MD5 for Windows login');
      return resultMd5.toString();
    } else if (isMacOS) {
      DeviceInfoPlugin deviceInfo = DeviceInfoPlugin();
      MacOsDeviceInfo macInfo = await deviceInfo.macOsInfo;
      var deviceId = macInfo.systemGUID!;
      var bytes = utf8.encode(deviceId);
      var resultMd5 = md5.convert(bytes);
      DebugLog.info('Created MD5 for MacOS login');
      return resultMd5.toString();
    } else {
      final webIP = await UrlHelpers.getIP();
      if (webIP != null) {
        var randomNumberForWebLogin = Properties.instance.settings.randomNumberForWebLogin;
        if (randomNumberForWebLogin == 0) {
          var random = Random();
          // Generate a random integer between 0 and 999
          int randomNumber = random.nextInt(1000);
          var newSettings = Properties.instance.settings.copyWith(
              randomNumberForWebLogin: randomNumber);
          Properties.instance.saveSettings(newSettings);
        }
        var bytes = utf8.encode('$webIP$randomNumberForWebLogin');
        var resultMd5 = md5.convert(bytes);
        DebugLog.info('Created MD5 for Web login');
        DebugLog.info(resultMd5.toString());
        return resultMd5.toString();
      }
      else {
        DebugLog.error("Can't create MD5 for Web login");
        return null;
      }
    }
  }



  static String composeMd5IdForFirebaseDbPremium({required String userEmail}) {
    userEmail = userEmail.trim().toLowerCase();
    var composeString = userEmail + Env.premiumToken;
    var bytes = utf8.encode(composeString);
    var resultMd5 = md5.convert(bytes);
    return resultMd5.toString();
  }

  static String composeMd5IdForStoryFirebaseDb({required String sentence}) {
    return _composeMd5(fromString: sentence);
  }

  static String composeMd5IdForWordDefinitionFirebaseDb(
      {required String word,  String options = '', required String lang}) {
    word = word.trim().toLowerCase();
    options = options.trim();
    var composeString = word + options + lang;
    var bytes = utf8.encode(composeString);
    var resultMd5 = md5.convert(bytes);
    return resultMd5.toString();
  }

  static String composeMd5IdForSoloConversationFileName(
      {required String sentence}) {
    return _composeMd5(fromString: sentence);
  }

  static String _composeMd5({required String fromString}) {
    fromString = fromString.toLowerCase().trim();
    final composeString = fromString;
    final bytes = utf8.encode(composeString);
    final resultMd5 = md5.convert(bytes);
    final result = resultMd5.toString();
    DebugLog.info(result);
    return result;
  }
}
