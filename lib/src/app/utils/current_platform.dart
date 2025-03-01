import 'dart:io' show Platform;

import 'package:flutter/foundation.dart';

bool get isWeb => kIsWeb;
bool get isWindows => !kIsWeb && Platform.isWindows;
bool get isMacOS => !kIsWeb && Platform.isMacOS;
bool get isAndroid => !kIsWeb && Platform.isAndroid;
bool get isIOS => !kIsWeb && Platform.isIOS;

bool get isWebMobile =>
    kIsWeb &&
    (defaultTargetPlatform == TargetPlatform.iOS ||
        defaultTargetPlatform == TargetPlatform.android);
bool get isWebDesktop =>
    kIsWeb &&
    (defaultTargetPlatform == TargetPlatform.windows ||
        defaultTargetPlatform == TargetPlatform.macOS ||
        defaultTargetPlatform == TargetPlatform.linux);

bool get isMobile => isIOS || isAndroid;
bool get isDesktop => isWindows || isMacOS;
