// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Copy`
  String get copy {
    return Intl.message('Copy', name: 'copy', desc: '', args: []);
  }

  /// `Documentation`
  String get documentation {
    return Intl.message(
      'Documentation',
      name: 'documentation',
      desc: '',
      args: [],
    );
  }

  /// `Additional Flutter Resources`
  String get additionalFlutterResources {
    return Intl.message(
      'Additional Flutter Resources',
      name: 'additionalFlutterResources',
      desc: '',
      args: [],
    );
  }

  /// `Don`
  String
  get donTForgetToPressEnterAfterChangingTheNameOfTheColorToSaveTheChanges {
    return Intl.message(
      'Don',
      name: 'donTForgetToPressEnterAfterChangingTheNameOfTheColorToSaveTheChanges',
      desc: '',
      args: [],
    );
  }

  /// `Official Documentation Websites`
  String get officialDocumentationWebsites {
    return Intl.message(
      'Official Documentation Websites',
      name: 'officialDocumentationWebsites',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Docs`
  String get flutterDocs {
    return Intl.message(
      'Flutter Docs',
      name: 'flutterDocs',
      desc: '',
      args: [],
    );
  }

  /// `Common Flutter CLI Commands`
  String get commonFlutterCliCommands {
    return Intl.message(
      'Common Flutter CLI Commands',
      name: 'commonFlutterCliCommands',
      desc: '',
      args: [],
    );
  }

  /// `Features`
  String get features {
    return Intl.message('Features', name: 'features', desc: '', args: []);
  }

  /// `Additional Tools`
  String get additionalTools {
    return Intl.message(
      'Additional Tools',
      name: 'additionalTools',
      desc: '',
      args: [],
    );
  }

  /// `Supports developers in working more efficiently when developing applications on Flutter.`
  String
  get supportsDevelopersInWorkingMoreEfficientlyWhenDevelopingApplicationsOnFlutter {
    return Intl.message(
      'Supports developers in working more efficiently when developing applications on Flutter.',
      name: 'supportsDevelopersInWorkingMoreEfficientlyWhenDevelopingApplicationsOnFlutter',
      desc: '',
      args: [],
    );
  }

  /// `Others`
  String get others {
    return Intl.message('Others', name: 'others', desc: '', args: []);
  }

  /// `Enable Additional Tools`
  String get enableAdditionalTools {
    return Intl.message(
      'Enable Additional Tools',
      name: 'enableAdditionalTools',
      desc: '',
      args: [],
    );
  }

  /// `Image Compressor`
  String get imageCompressor {
    return Intl.message(
      'Image Compressor',
      name: 'imageCompressor',
      desc: '',
      args: [],
    );
  }

  /// `Reduce image file sizes.`
  String get reduceImageFileSizesWithoutQualityLoss {
    return Intl.message(
      'Reduce image file sizes.',
      name: 'reduceImageFileSizesWithoutQualityLoss',
      desc: '',
      args: [],
    );
  }

  /// `Test and debug your API endpoints.`
  String get testAndDebugYourApiEndpoints {
    return Intl.message(
      'Test and debug your API endpoints.',
      name: 'testAndDebugYourApiEndpoints',
      desc: '',
      args: [],
    );
  }

  /// `Select Topic`
  String get selectTopic {
    return Intl.message(
      'Select Topic',
      name: 'selectTopic',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get all {
    return Intl.message('All', name: 'all', desc: '', args: []);
  }

  /// `See more`
  String get seeMore {
    return Intl.message('See more', name: 'seeMore', desc: '', args: []);
  }

  /// `Collapse`
  String get collapse {
    return Intl.message('Collapse', name: 'collapse', desc: '', args: []);
  }

  /// `Essential Tools for Flutter Developers.`
  String get essentialToolsForFlutterDevelopers {
    return Intl.message(
      'Essential Tools for Flutter Developers.',
      name: 'essentialToolsForFlutterDevelopers',
      desc: '',
      args: [],
    );
  }

  /// `A command-line interface for managing Flutter project.`
  String get aCommandLineInterfaceForManagingFlutterProject {
    return Intl.message(
      'A command-line interface for managing Flutter project.',
      name: 'aCommandLineInterfaceForManagingFlutterProject',
      desc: '',
      args: [],
    );
  }

  /// `Fonts Preview`
  String get fontsPreview {
    return Intl.message(
      'Fonts Preview',
      name: 'fontsPreview',
      desc: '',
      args: [],
    );
  }

  /// `Icons Preview`
  String get iconsPreview {
    return Intl.message(
      'Icons Preview',
      name: 'iconsPreview',
      desc: '',
      args: [],
    );
  }

  /// `App Icon Setter for Flutter`
  String get appIconSetterForFlutter {
    return Intl.message(
      'App Icon Setter for Flutter',
      name: 'appIconSetterForFlutter',
      desc: '',
      args: [],
    );
  }

  /// `Options`
  String get options {
    return Intl.message('Options', name: 'options', desc: '', args: []);
  }

  /// `Flutter Documentation`
  String get flutterDocumentation {
    return Intl.message(
      'Flutter Documentation',
      name: 'flutterDocumentation',
      desc: '',
      args: [],
    );
  }

  /// `Explore setup steps, API references, and example projects to accelerate your development.`
  String
  get exploreSetupStepsApiReferencesAndExampleProjectsToAccelerateYourDevelopment {
    return Intl.message(
      'Explore setup steps, API references, and example projects to accelerate your development.',
      name: 'exploreSetupStepsApiReferencesAndExampleProjectsToAccelerateYourDevelopment',
      desc: '',
      args: [],
    );
  }

  /// `Have feedback or suggestions for us?`
  String get haveFeedbackOrSuggestionsForUs {
    return Intl.message(
      'Have feedback or suggestions for us?',
      name: 'haveFeedbackOrSuggestionsForUs',
      desc: '',
      args: [],
    );
  }

  /// `What`
  String get whatSNew {
    return Intl.message('What', name: 'whatSNew', desc: '', args: []);
  }

  /// `Save`
  String get save {
    return Intl.message('Save', name: 'save', desc: '', args: []);
  }

  /// `Sending your feedbacks...`
  String get sendingYourFeedbacks {
    return Intl.message(
      'Sending your feedbacks...',
      name: 'sendingYourFeedbacks',
      desc: '',
      args: [],
    );
  }

  /// `Please check your internet connection or update your app if this bug persists.`
  String get pleaseCheckYourInternetConnectionOrUpdateYourAppIfThisBugPersists {
    return Intl.message(
      'Please check your internet connection or update your app if this bug persists.',
      name: 'pleaseCheckYourInternetConnectionOrUpdateYourAppIfThisBugPersists',
      desc: '',
      args: [],
    );
  }

  /// `Report bugs or feedback about our app:`
  String get reportBugsOrFeedbackAboutOurApp {
    return Intl.message(
      'Report bugs or feedback about our app:',
      name: 'reportBugsOrFeedbackAboutOurApp',
      desc: '',
      args: [],
    );
  }

  /// `Feedback`
  String get feedback {
    return Intl.message('Feedback', name: 'feedback', desc: '', args: []);
  }

  /// `Type your report here`
  String get typeYourReportHere {
    return Intl.message(
      'Type your report here',
      name: 'typeYourReportHere',
      desc: '',
      args: [],
    );
  }

  /// `Loading...`
  String get loading {
    return Intl.message('Loading...', name: 'loading', desc: '', args: []);
  }

  /// `You can learn how to use Fluent UI System Icons in your Flutter app by following the documentation.`
  String
  get youCanLearnHowToUseFluentUiSystemIconsInYourFlutterAppByFollowingTheDocumentation {
    return Intl.message(
      'You can learn how to use Fluent UI System Icons in your Flutter app by following the documentation.',
      name: 'youCanLearnHowToUseFluentUiSystemIconsInYourFlutterAppByFollowingTheDocumentation',
      desc: '',
      args: [],
    );
  }

  /// `Back`
  String get back {
    return Intl.message('Back', name: 'back', desc: '', args: []);
  }

  /// `Feedback submitted successfully!`
  String get feedbackSubmittedSuccessfully {
    return Intl.message(
      'Feedback submitted successfully!',
      name: 'feedbackSubmittedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Rate us`
  String get rateUs {
    return Intl.message('Rate us', name: 'rateUs', desc: '', args: []);
  }

  /// `Sign up`
  String get signUp {
    return Intl.message('Sign up', name: 'signUp', desc: '', args: []);
  }

  /// `Don`
  String get donTHaveAnAccount {
    return Intl.message('Don', name: 'donTHaveAnAccount', desc: '', args: []);
  }

  /// `Continues`
  String get continues {
    return Intl.message('Continues', name: 'continues', desc: '', args: []);
  }

  /// `Manage account`
  String get manageAccount {
    return Intl.message(
      'Manage account',
      name: 'manageAccount',
      desc: '',
      args: [],
    );
  }

  /// `Log out and remove all local data from this device.`
  String get logOutAndRemoveAllLocalDataFromThisDevice {
    return Intl.message(
      'Log out and remove all local data from this device.',
      name: 'logOutAndRemoveAllLocalDataFromThisDevice',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message('Password', name: 'password', desc: '', args: []);
  }

  /// `The quick brown fox jumps over the lazy dog.`
  String get theQuickBrownFoxJumpsOverTheLazyDog {
    return Intl.message(
      'The quick brown fox jumps over the lazy dog.',
      name: 'theQuickBrownFoxJumpsOverTheLazyDog',
      desc: '',
      args: [],
    );
  }

  /// `You`
  String get youReNotConnected {
    return Intl.message('You', name: 'youReNotConnected', desc: '', args: []);
  }

  /// `We`
  String get weDLoveToHearYourFeedback {
    return Intl.message(
      'We',
      name: 'weDLoveToHearYourFeedback',
      desc: '',
      args: [],
    );
  }

  /// `Give feedbacks`
  String get giveFeedbacks {
    return Intl.message(
      'Give feedbacks',
      name: 'giveFeedbacks',
      desc: '',
      args: [],
    );
  }

  /// `Later`
  String get later {
    return Intl.message('Later', name: 'later', desc: '', args: []);
  }

  /// `No internet. You are not connected to the internet, or your internet connection is experiencing an issue.`
  String get subsentenceinnointernetbubble {
    return Intl.message(
      'No internet. You are not connected to the internet, or your internet connection is experiencing an issue.',
      name: 'subsentenceinnointernetbubble',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message('Cancel', name: 'cancel', desc: '', args: []);
  }

  /// `All rights reserved.`
  String get allRightsReserved {
    return Intl.message(
      'All rights reserved.',
      name: 'allRightsReserved',
      desc: '',
      args: [],
    );
  }

  /// `Available at`
  String get availableAt {
    return Intl.message(
      'Available at',
      name: 'availableAt',
      desc: '',
      args: [],
    );
  }

  /// `Oops, it`
  String get oopsItSAGhostTownInHere {
    return Intl.message(
      'Oops, it',
      name: 'oopsItSAGhostTownInHere',
      desc: '',
      args: [],
    );
  }

  /// `Press back again to exit`
  String get pressBackAgainToExit {
    return Intl.message(
      'Press back again to exit',
      name: 'pressBackAgainToExit',
      desc: '',
      args: [],
    );
  }

  /// `About`
  String get about {
    return Intl.message('About', name: 'about', desc: '', args: []);
  }

  /// `No Internet`
  String get noInternet {
    return Intl.message('No Internet', name: 'noInternet', desc: '', args: []);
  }

  /// `No internet connection.`
  String get noInternetConnection {
    return Intl.message(
      'No internet connection.',
      name: 'noInternetConnection',
      desc: '',
      args: [],
    );
  }

  /// `Permission Required`
  String get permissionRequired {
    return Intl.message(
      'Permission Required',
      name: 'permissionRequired',
      desc: '',
      args: [],
    );
  }

  /// `You not connected to the internet or the application having trouble while trying to connect to the network.`
  String
  get youNotConnectedToTheInternetOrTheApplicationHavingTroubleWhileTryingToConnectToTheNetwork {
    return Intl.message(
      'You not connected to the internet or the application having trouble while trying to connect to the network.',
      name: 'youNotConnectedToTheInternetOrTheApplicationHavingTroubleWhileTryingToConnectToTheNetwork',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Toolkit`
  String get flutterToolkit {
    return Intl.message(
      'Flutter Toolkit',
      name: 'flutterToolkit',
      desc: '',
      args: [],
    );
  }

  /// `Storage permission denied.`
  String get storagePermissionDenied {
    return Intl.message(
      'Storage permission denied.',
      name: 'storagePermissionDenied',
      desc: '',
      args: [],
    );
  }

  /// `Instructions`
  String get instructions {
    return Intl.message(
      'Instructions',
      name: 'instructions',
      desc: '',
      args: [],
    );
  }

  /// `Restore the settings to their default as when the application was first installed.`
  String
  get restoreTheSettingsToTheirDefaultAsWhenTheApplicationWasFirstInstalled {
    return Intl.message(
      'Restore the settings to their default as when the application was first installed.',
      name: 'restoreTheSettingsToTheirDefaultAsWhenTheApplicationWasFirstInstalled',
      desc: '',
      args: [],
    );
  }

  /// `Default settings are restored`
  String get defaultSettingsAreRestored {
    return Intl.message(
      'Default settings are restored',
      name: 'defaultSettingsAreRestored',
      desc: '',
      args: [],
    );
  }

  /// `Reset to default settings`
  String get resetToDefaultSettings {
    return Intl.message(
      'Reset to default settings',
      name: 'resetToDefaultSettings',
      desc: '',
      args: [],
    );
  }

  /// `Copied to clipboard`
  String get copiedToClipboard {
    return Intl.message(
      'Copied to clipboard',
      name: 'copiedToClipboard',
      desc: '',
      args: [],
    );
  }

  /// `Licenses`
  String get licenses {
    return Intl.message('Licenses', name: 'licenses', desc: '', args: []);
  }

  /// `Our app utilizes various open-source libraries. Here, you can view the licenses and attributions for the third-party software integrated into our product.`
  String get descriptiontextforlicenses {
    return Intl.message(
      'Our app utilizes various open-source libraries. Here, you can view the licenses and attributions for the third-party software integrated into our product.',
      name: 'descriptiontextforlicenses',
      desc: '',
      args: [],
    );
  }

  /// `Release notes`
  String get releaseNotes {
    return Intl.message(
      'Release notes',
      name: 'releaseNotes',
      desc: '',
      args: [],
    );
  }

  /// `System default`
  String get systemDefault {
    return Intl.message(
      'System default',
      name: 'systemDefault',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get english {
    return Intl.message('English', name: 'english', desc: '', args: []);
  }

  /// `Tiếng Việt`
  String get tingVit {
    return Intl.message('Tiếng Việt', name: 'tingVit', desc: '', args: []);
  }

  /// `Use System Theme`
  String get useSystemTheme {
    return Intl.message(
      'Use System Theme',
      name: 'useSystemTheme',
      desc: '',
      args: [],
    );
  }

  /// `Accent color`
  String get accentColor {
    return Intl.message(
      'Accent color',
      name: 'accentColor',
      desc: '',
      args: [],
    );
  }

  /// `We hold your privacy in high regard and assure you that your personal data will not be disclosed to any third party.`
  String get desciptiontextforprivacypolicy {
    return Intl.message(
      'We hold your privacy in high regard and assure you that your personal data will not be disclosed to any third party.',
      name: 'desciptiontextforprivacypolicy',
      desc: '',
      args: [],
    );
  }

  /// `For more information about our privacy policy, please visit:`
  String get forMoreInformationAboutOurPrivacyPolicyPleaseVisit {
    return Intl.message(
      'For more information about our privacy policy, please visit:',
      name: 'forMoreInformationAboutOurPrivacyPolicyPleaseVisit',
      desc: '',
      args: [],
    );
  }

  /// `Privacy Policy`
  String get privacyPolicy {
    return Intl.message(
      'Privacy Policy',
      name: 'privacyPolicy',
      desc: '',
      args: [],
    );
  }

  /// `Settings`
  String get settings {
    return Intl.message('Settings', name: 'settings', desc: '', args: []);
  }

  /// `Note: The changes will become effective the next time you open the app.`
  String get theChangesWillBecomeEffectiveTheNextTimeYouOpenTheApp {
    return Intl.message(
      'Note: The changes will become effective the next time you open the app.',
      name: 'theChangesWillBecomeEffectiveTheNextTimeYouOpenTheApp',
      desc: '',
      args: [],
    );
  }

  /// `Common`
  String get common {
    return Intl.message('Common', name: 'common', desc: '', args: []);
  }

  /// `Language`
  String get language {
    return Intl.message('Language', name: 'language', desc: '', args: []);
  }

  /// `Select a language`
  String get selectALanguage {
    return Intl.message(
      'Select a language',
      name: 'selectALanguage',
      desc: '',
      args: [],
    );
  }

  /// `Log out`
  String get logOut {
    return Intl.message('Log out', name: 'logOut', desc: '', args: []);
  }

  /// `Account`
  String get account {
    return Intl.message('Account', name: 'account', desc: '', args: []);
  }

  /// `User`
  String get user {
    return Intl.message('User', name: 'user', desc: '', args: []);
  }

  /// `Light`
  String get lightMode {
    return Intl.message('Light', name: 'lightMode', desc: '', args: []);
  }

  /// `Dark`
  String get darkMode {
    return Intl.message('Dark', name: 'darkMode', desc: '', args: []);
  }

  /// `Adaptive`
  String get adaptive {
    return Intl.message('Adaptive', name: 'adaptive', desc: '', args: []);
  }

  /// `Theme`
  String get theme {
    return Intl.message('Theme', name: 'theme', desc: '', args: []);
  }

  /// `Customize`
  String get customize {
    return Intl.message('Customize', name: 'customize', desc: '', args: []);
  }

  /// `Preferences`
  String get preferences {
    return Intl.message('Preferences', name: 'preferences', desc: '', args: []);
  }

  /// `Response`
  String get response {
    return Intl.message('Response', name: 'response', desc: '', args: []);
  }

  /// `Status`
  String get status {
    return Intl.message('Status', name: 'status', desc: '', args: []);
  }

  /// `OK`
  String get ok {
    return Intl.message('OK', name: 'ok', desc: '', args: []);
  }

  /// `Fonts`
  String get fonts {
    return Intl.message('Fonts', name: 'fonts', desc: '', args: []);
  }

  /// `Image Compress`
  String get imageCompress {
    return Intl.message(
      'Image Compress',
      name: 'imageCompress',
      desc: '',
      args: [],
    );
  }

  /// `Icons`
  String get icons {
    return Intl.message('Icons', name: 'icons', desc: '', args: []);
  }

  /// `Image`
  String get image {
    return Intl.message('Image', name: 'image', desc: '', args: []);
  }

  /// `Dashboard`
  String get dashboard {
    return Intl.message('Dashboard', name: 'dashboard', desc: '', args: []);
  }

  /// `App Icon Setter`
  String get appIconSetter {
    return Intl.message(
      'App Icon Setter',
      name: 'appIconSetter',
      desc: '',
      args: [],
    );
  }

  /// `App Icon Setter for Flutter Program`
  String get appIconSetterForFlutterProject {
    return Intl.message(
      'App Icon Setter for Flutter Program',
      name: 'appIconSetterForFlutterProject',
      desc: '',
      args: [],
    );
  }

  /// `Color Picker`
  String get colorPicker {
    return Intl.message(
      'Color Picker',
      name: 'colorPicker',
      desc: '',
      args: [],
    );
  }

  /// `Font Previewer`
  String get fontPreviewer {
    return Intl.message(
      'Font Previewer',
      name: 'fontPreviewer',
      desc: '',
      args: [],
    );
  }

  /// `For implementation steps, visit:`
  String get forImplementationStepsVisit {
    return Intl.message(
      'For implementation steps, visit:',
      name: 'forImplementationStepsVisit',
      desc: '',
      args: [],
    );
  }

  /// `Google Fonts on pub.dev`
  String get googleFontsOnPubDev {
    return Intl.message(
      'Google Fonts on pub.dev',
      name: 'googleFontsOnPubDev',
      desc: '',
      args: [],
    );
  }

  /// `You can learn how to use Google Fonts in your Flutter app by following the documentation.`
  String
  get youCanLearnHowToUseGoogleFontsInYourFlutterAppByFollowingTheDocumentation {
    return Intl.message(
      'You can learn how to use Google Fonts in your Flutter app by following the documentation.',
      name: 'youCanLearnHowToUseGoogleFontsInYourFlutterAppByFollowingTheDocumentation',
      desc: '',
      args: [],
    );
  }

  /// `Image Compression`
  String get imageCompression {
    return Intl.message(
      'Image Compression',
      name: 'imageCompression',
      desc: '',
      args: [],
    );
  }

  /// `Step 1: Pick Images to Compress`
  String get step1PickImagesToCompress {
    return Intl.message(
      'Step 1: Pick Images to Compress',
      name: 'step1PickImagesToCompress',
      desc: '',
      args: [],
    );
  }

  /// `You can select multiple JPG or PNG images to compress. Click the button below to start.`
  String
  get youCanSelectMultipleJpgOrPngImagesToCompressClickTheButtonBelowToStart {
    return Intl.message(
      'You can select multiple JPG or PNG images to compress. Click the button below to start.',
      name: 'youCanSelectMultipleJpgOrPngImagesToCompressClickTheButtonBelowToStart',
      desc: '',
      args: [],
    );
  }

  /// `Pick Images`
  String get pickImages {
    return Intl.message('Pick Images', name: 'pickImages', desc: '', args: []);
  }

  /// `Selected Images`
  String get selectedImages {
    return Intl.message(
      'Selected Images',
      name: 'selectedImages',
      desc: '',
      args: [],
    );
  }

  /// `No images selected.`
  String get noImagesSelected {
    return Intl.message(
      'No images selected.',
      name: 'noImagesSelected',
      desc: '',
      args: [],
    );
  }

  /// `Step 2: Adjust Quality of Compression`
  String get step2AdjustQualityOfCompression {
    return Intl.message(
      'Step 2: Adjust Quality of Compression',
      name: 'step2AdjustQualityOfCompression',
      desc: '',
      args: [],
    );
  }

  /// `Use the slider below to set the quality for compression (0 = low quality, 100 = high quality).`
  String
  get useTheSliderBelowToSetTheQualityForCompression0LowQuality100HighQuality {
    return Intl.message(
      'Use the slider below to set the quality for compression (0 = low quality, 100 = high quality).',
      name: 'useTheSliderBelowToSetTheQualityForCompression0LowQuality100HighQuality',
      desc: '',
      args: [],
    );
  }

  /// `Quality:`
  String get quality {
    return Intl.message('Quality:', name: 'quality', desc: '', args: []);
  }

  /// `Step 3: Choose Output Directory`
  String get step3ChooseOutputDirectory {
    return Intl.message(
      'Step 3: Choose Output Directory',
      name: 'step3ChooseOutputDirectory',
      desc: '',
      args: [],
    );
  }

  /// `Select Output Directory`
  String get selectOutputDirectory {
    return Intl.message(
      'Select Output Directory',
      name: 'selectOutputDirectory',
      desc: '',
      args: [],
    );
  }

  /// `Output Directory: `
  String get outputDirectory {
    return Intl.message(
      'Output Directory: ',
      name: 'outputDirectory',
      desc: '',
      args: [],
    );
  }

  /// `Step 4: Compress Images`
  String get step4CompressImages {
    return Intl.message(
      'Step 4: Compress Images',
      name: 'step4CompressImages',
      desc: '',
      args: [],
    );
  }

  /// `Compress Images`
  String get compressImages {
    return Intl.message(
      'Compress Images',
      name: 'compressImages',
      desc: '',
      args: [],
    );
  }

  /// `Compression completed!`
  String get compressionCompleted {
    return Intl.message(
      'Compression completed!',
      name: 'compressionCompleted',
      desc: '',
      args: [],
    );
  }

  /// `JSON Formatter`
  String get jsonFormatter {
    return Intl.message(
      'JSON Formatter',
      name: 'jsonFormatter',
      desc: '',
      args: [],
    );
  }

  /// `Enter your JSON below and click \`
  String
  get enterYourJsonBelowAndClickFormatJsonToPrettifyItMakeSureItSValidJsonFormat {
    return Intl.message(
      'Enter your JSON below and click \\',
      name: 'enterYourJsonBelowAndClickFormatJsonToPrettifyItMakeSureItSValidJsonFormat',
      desc: '',
      args: [],
    );
  }

  /// `Enter JSON`
  String get enterJson {
    return Intl.message('Enter JSON', name: 'enterJson', desc: '', args: []);
  }

  /// `Format JSON`
  String get formatJson {
    return Intl.message('Format JSON', name: 'formatJson', desc: '', args: []);
  }

  /// `Formatted JSON will appear here`
  String get formattedJsonWillAppearHere {
    return Intl.message(
      'Formatted JSON will appear here',
      name: 'formattedJsonWillAppearHere',
      desc: '',
      args: [],
    );
  }

  /// `action`
  String get action {
    return Intl.message('action', name: 'action', desc: '', args: []);
  }

  /// `alert`
  String get alert {
    return Intl.message('alert', name: 'alert', desc: '', args: []);
  }

  /// `av`
  String get av {
    return Intl.message('av', name: 'av', desc: '', args: []);
  }

  /// `communication`
  String get communication {
    return Intl.message(
      'communication',
      name: 'communication',
      desc: '',
      args: [],
    );
  }

  /// `content`
  String get content {
    return Intl.message('content', name: 'content', desc: '', args: []);
  }

  /// `device`
  String get device {
    return Intl.message('device', name: 'device', desc: '', args: []);
  }

  /// `editor`
  String get editor {
    return Intl.message('editor', name: 'editor', desc: '', args: []);
  }

  /// `file`
  String get file {
    return Intl.message('file', name: 'file', desc: '', args: []);
  }

  /// `hardware`
  String get hardware {
    return Intl.message('hardware', name: 'hardware', desc: '', args: []);
  }

  /// `home`
  String get home {
    return Intl.message('home', name: 'home', desc: '', args: []);
  }

  /// `image`
  String get image1 {
    return Intl.message('image', name: 'image1', desc: '', args: []);
  }

  /// `maps`
  String get maps {
    return Intl.message('maps', name: 'maps', desc: '', args: []);
  }

  /// `navigation`
  String get navigation {
    return Intl.message('navigation', name: 'navigation', desc: '', args: []);
  }

  /// `notification`
  String get notification {
    return Intl.message(
      'notification',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `places`
  String get places {
    return Intl.message('places', name: 'places', desc: '', args: []);
  }

  /// `search`
  String get search {
    return Intl.message('search', name: 'search', desc: '', args: []);
  }

  /// `social`
  String get social {
    return Intl.message('social', name: 'social', desc: '', args: []);
  }

  /// `toggle`
  String get toggle {
    return Intl.message('toggle', name: 'toggle', desc: '', args: []);
  }

  /// `API Testing`
  String get apiTesting {
    return Intl.message('API Testing', name: 'apiTesting', desc: '', args: []);
  }

  /// `API Testing Tool`
  String get apiTestingTool {
    return Intl.message(
      'API Testing Tool',
      name: 'apiTestingTool',
      desc: '',
      args: [],
    );
  }

  /// `This API Testing Tool allows you to perform basic HTTP requests like GET, POST, and DELETE. Enter a URL to test the response and see the status code and data returned by the server.`
  String
  get thisApiTestingToolAllowsYouToPerformBasicHttpRequestsLikeGetPostAndDeleteEnterAUrlToTestTheResponseAndSeeTheStatusCodeAndDataReturnedByTheServer {
    return Intl.message(
      'This API Testing Tool allows you to perform basic HTTP requests like GET, POST, and DELETE. Enter a URL to test the response and see the status code and data returned by the server.',
      name: 'thisApiTestingToolAllowsYouToPerformBasicHttpRequestsLikeGetPostAndDeleteEnterAUrlToTestTheResponseAndSeeTheStatusCodeAndDataReturnedByTheServer',
      desc: '',
      args: [],
    );
  }

  /// `Choose your preferred font style and size.`
  String get chooseYourPreferredFontStyleAndSize {
    return Intl.message(
      'Choose your preferred font style and size.',
      name: 'chooseYourPreferredFontStyleAndSize',
      desc: '',
      args: [],
    );
  }

  /// `Pick the perfect color for your project.`
  String get pickThePerfectColorForYourProject {
    return Intl.message(
      'Pick the perfect color for your project.',
      name: 'pickThePerfectColorForYourProject',
      desc: '',
      args: [],
    );
  }

  /// `Browse and select from a variety of icons.`
  String get browseAndSelectFromAVarietyOfIcons {
    return Intl.message(
      'Browse and select from a variety of icons.',
      name: 'browseAndSelectFromAVarietyOfIcons',
      desc: '',
      args: [],
    );
  }

  /// `Format your JSON data for better readability.`
  String get formatYourJsonDataForBetterReadability {
    return Intl.message(
      'Format your JSON data for better readability.',
      name: 'formatYourJsonDataForBetterReadability',
      desc: '',
      args: [],
    );
  }

  /// `Create custom icons tailored to your needs.`
  String get createCustomIconsTailoredToYourNeeds {
    return Intl.message(
      'Create custom icons tailored to your needs.',
      name: 'createCustomIconsTailoredToYourNeeds',
      desc: '',
      args: [],
    );
  }

  /// `Reduce image file sizes without sacrificing quality.`
  String get reduceImageFileSizesWithoutSacrificingQuality {
    return Intl.message(
      'Reduce image file sizes without sacrificing quality.',
      name: 'reduceImageFileSizesWithoutSacrificingQuality',
      desc: '',
      args: [],
    );
  }

  /// `Test and debug your API endpoints efficiently.`
  String get testAndDebugYourApiEndpointsEfficiently {
    return Intl.message(
      'Test and debug your API endpoints efficiently.',
      name: 'testAndDebugYourApiEndpointsEfficiently',
      desc: '',
      args: [],
    );
  }

  /// `Step 1: Select a PNG Image`
  String get step1SelectAPngImage {
    return Intl.message(
      'Step 1: Select a PNG Image',
      name: 'step1SelectAPngImage',
      desc: '',
      args: [],
    );
  }

  /// `Choose a PNG image that will be used to generate icons for various platforms. The image should be clear and high-resolution.`
  String
  get chooseAPngImageThatWillBeUsedToGenerateIconsForVariousPlatformsTheImageShouldBeClearAndHighResolution {
    return Intl.message(
      'Choose a PNG image that will be used to generate icons for various platforms. The image should be clear and high-resolution.',
      name: 'chooseAPngImageThatWillBeUsedToGenerateIconsForVariousPlatformsTheImageShouldBeClearAndHighResolution',
      desc: '',
      args: [],
    );
  }

  /// `Select PNG Image`
  String get selectPngImage {
    return Intl.message(
      'Select PNG Image',
      name: 'selectPngImage',
      desc: '',
      args: [],
    );
  }

  /// `Change Image`
  String get changeImage {
    return Intl.message(
      'Change Image',
      name: 'changeImage',
      desc: '',
      args: [],
    );
  }

  /// `Step 2: Select the Flutter Project Location`
  String get step2SelectTheFlutterProjectLocation {
    return Intl.message(
      'Step 2: Select the Flutter Project Location',
      name: 'step2SelectTheFlutterProjectLocation',
      desc: '',
      args: [],
    );
  }

  /// `Pick the root directory of your Flutter project. Icons will be generated and placed in the appropriate folders for Android, iOS, macOS, Windows, and Web platforms.`
  String
  get pickTheRootDirectoryOfYourFlutterProjectIconsWillBeGeneratedAndPlacedInTheAppropriateFoldersForAndroidIosMacosWindowsAndWebPlatforms {
    return Intl.message(
      'Pick the root directory of your Flutter project. Icons will be generated and placed in the appropriate folders for Android, iOS, macOS, Windows, and Web platforms.',
      name: 'pickTheRootDirectoryOfYourFlutterProjectIconsWillBeGeneratedAndPlacedInTheAppropriateFoldersForAndroidIosMacosWindowsAndWebPlatforms',
      desc: '',
      args: [],
    );
  }

  /// `Select Flutter Project`
  String get selectFlutterProject {
    return Intl.message(
      'Select Flutter Project',
      name: 'selectFlutterProject',
      desc: '',
      args: [],
    );
  }

  /// `Change Project Path`
  String get changeProjectPath {
    return Intl.message(
      'Change Project Path',
      name: 'changeProjectPath',
      desc: '',
      args: [],
    );
  }

  /// `Project Path:`
  String get projectPath {
    return Intl.message(
      'Project Path:',
      name: 'projectPath',
      desc: '',
      args: [],
    );
  }

  /// `Step 3: Generate Icons`
  String get step3GenerateIcons {
    return Intl.message(
      'Step 3: Generate Icons',
      name: 'step3GenerateIcons',
      desc: '',
      args: [],
    );
  }

  /// `Click the \`
  String
  get clickTheGenerateIconsButtonToCreateIconsForEachPlatformMakeSureYouHaveSelectedAValidPngImageAndFlutterProjectLocationBeforeProceeding {
    return Intl.message(
      'Click the \\',
      name: 'clickTheGenerateIconsButtonToCreateIconsForEachPlatformMakeSureYouHaveSelectedAValidPngImageAndFlutterProjectLocationBeforeProceeding',
      desc: '',
      args: [],
    );
  }

  /// `Generate Icons`
  String get generateIcons {
    return Intl.message(
      'Generate Icons',
      name: 'generateIcons',
      desc: '',
      args: [],
    );
  }

  /// `Icons generated successfully!`
  String get iconsGeneratedSuccessfully {
    return Intl.message(
      'Icons generated successfully!',
      name: 'iconsGeneratedSuccessfully',
      desc: '',
      args: [],
    );
  }

  /// `Error:`
  String get error {
    return Intl.message('Error:', name: 'error', desc: '', args: []);
  }

  /// `Add this color to Collection`
  String get addThisColorToCollection {
    return Intl.message(
      'Add this color to Collection',
      name: 'addThisColorToCollection',
      desc: '',
      args: [],
    );
  }

  /// `Label`
  String get label {
    return Intl.message('Label', name: 'label', desc: '', args: []);
  }

  /// `Overview`
  String get overview {
    return Intl.message('Overview', name: 'overview', desc: '', args: []);
  }

  /// `Color Collection`
  String get colorCollection {
    return Intl.message(
      'Color Collection',
      name: 'colorCollection',
      desc: '',
      args: [],
    );
  }

  /// `The following folders will be changed.`
  String get theFollowingFoldersWillBeChanged {
    return Intl.message(
      'The following folders will be changed.',
      name: 'theFollowingFoldersWillBeChanged',
      desc: '',
      args: [],
    );
  }

  /// `Help Us Improve`
  String get helpUsImprove {
    return Intl.message(
      'Help Us Improve',
      name: 'helpUsImprove',
      desc: '',
      args: [],
    );
  }

  /// `Flutter Learning Roadmap`
  String get flutterLearningRoadmap {
    return Intl.message(
      'Flutter Learning Roadmap',
      name: 'flutterLearningRoadmap',
      desc: '',
      args: [],
    );
  }

  /// `A structured guide to help you advance from beginner to expert in Flutter.`
  String get aStructuredGuideToHelpYouAdvanceFromBeginnerToExpertInFlutter {
    return Intl.message(
      'A structured guide to help you advance from beginner to expert in Flutter.',
      name: 'aStructuredGuideToHelpYouAdvanceFromBeginnerToExpertInFlutter',
      desc: '',
      args: [],
    );
  }

  /// `Refer to https://github.com/olexale/flutter_roadmap for the latest version and links.`
  String
  get referToHttpsGithubComOlexaleFlutterroadmapForTheLatestVersionAndLinks {
    return Intl.message(
      'Refer to https://github.com/olexale/flutter_roadmap for the latest version and links.',
      name: 'referToHttpsGithubComOlexaleFlutterroadmapForTheLatestVersionAndLinks',
      desc: '',
      args: [],
    );
  }

  /// `This guide will help you progress from a beginner to an advanced Flutter developer. It outlines key concepts, tools, and best practices you need to master, including Dart programming, Flutter widgets, UI design, and state management. Follow this roadmap to build a solid foundation in Flutter and start developing powerful mobile applications.`
  String get introductionroadmap {
    return Intl.message(
      'This guide will help you progress from a beginner to an advanced Flutter developer. It outlines key concepts, tools, and best practices you need to master, including Dart programming, Flutter widgets, UI design, and state management. Follow this roadmap to build a solid foundation in Flutter and start developing powerful mobile applications.',
      name: 'introductionroadmap',
      desc: '',
      args: [],
    );
  }

  /// `Basics`
  String get basics {
    return Intl.message('Basics', name: 'basics', desc: '', args: []);
  }

  /// `Getting Deeper`
  String get gettingDeeper {
    return Intl.message(
      'Getting Deeper',
      name: 'gettingDeeper',
      desc: '',
      args: [],
    );
  }

  /// `Report Issues`
  String get reportIssues {
    return Intl.message(
      'Report Issues',
      name: 'reportIssues',
      desc: '',
      args: [],
    );
  }

  /// `Almost there`
  String get almostThere {
    return Intl.message(
      'Almost there',
      name: 'almostThere',
      desc: '',
      args: [],
    );
  }

  /// `The End`
  String get theEnd {
    return Intl.message('The End', name: 'theEnd', desc: '', args: []);
  }

  /// `Must have`
  String get mustHave {
    return Intl.message('Must have', name: 'mustHave', desc: '', args: []);
  }

  /// `Nice to have`
  String get niceToHave {
    return Intl.message('Nice to have', name: 'niceToHave', desc: '', args: []);
  }

  /// `Optional`
  String get optional {
    return Intl.message('Optional', name: 'optional', desc: '', args: []);
  }

  /// `Resources`
  String get resources {
    return Intl.message('Resources', name: 'resources', desc: '', args: []);
  }

  /// `Importance`
  String get importance {
    return Intl.message('Importance', name: 'importance', desc: '', args: []);
  }

  /// `Development Fund`
  String get developmentFund {
    return Intl.message(
      'Development Fund',
      name: 'developmentFund',
      desc: '',
      args: [],
    );
  }

  /// `Join the 2%`
  String get joinThe2 {
    return Intl.message('Join the 2%', name: 'joinThe2', desc: '', args: []);
  }

  /// `When 2 percent of users donate, more developers will be supported to work on UI and tools. Free and Open Source for everyone, forever.`
  String get descriptionDonation {
    return Intl.message(
      'When 2 percent of users donate, more developers will be supported to work on UI and tools. Free and Open Source for everyone, forever.',
      name: 'descriptionDonation',
      desc: '',
      args: [],
    );
  }

  /// `or`
  String get or {
    return Intl.message('or', name: 'or', desc: '', args: []);
  }

  /// `cup of coffee`
  String get cupOfCoffee {
    return Intl.message(
      'cup of coffee',
      name: 'cupOfCoffee',
      desc: '',
      args: [],
    );
  }

  /// `cups of coffee`
  String get cupsOfCoffee {
    return Intl.message(
      'cups of coffee',
      name: 'cupsOfCoffee',
      desc: '',
      args: [],
    );
  }

  /// `A generous soul`
  String get aGenerousSoul {
    return Intl.message(
      'A generous soul',
      name: 'aGenerousSoul',
      desc: '',
      args: [],
    );
  }

  /// `Donate`
  String get donate {
    return Intl.message('Donate', name: 'donate', desc: '', args: []);
  }

  /// `Total amount`
  String get totalAmount {
    return Intl.message(
      'Total amount',
      name: 'totalAmount',
      desc: '',
      args: [],
    );
  }

  /// `To ensure data safety. Your settings and data are stored locally and are not shared with any third parties. Please manually restore your settings and personal data when switching to a new device.`
  String get personalDataNotice {
    return Intl.message(
      'To ensure data safety. Your settings and data are stored locally and are not shared with any third parties. Please manually restore your settings and personal data when switching to a new device.',
      name: 'personalDataNotice',
      desc: '',
      args: [],
    );
  }

  /// `Restore from a backup file`
  String get restoreFromABackupFile {
    return Intl.message(
      'Restore from a backup file',
      name: 'restoreFromABackupFile',
      desc: '',
      args: [],
    );
  }

  /// `Restore`
  String get restore {
    return Intl.message('Restore', name: 'restore', desc: '', args: []);
  }

  /// `Search`
  String get search1 {
    return Intl.message('Search', name: 'search1', desc: '', args: []);
  }

  /// `Create a new backup`
  String get createANewBackup {
    return Intl.message(
      'Create a new backup',
      name: 'createANewBackup',
      desc: '',
      args: [],
    );
  }

  /// `Error picking files:`
  String get errorPickingFiles {
    return Intl.message(
      'Error picking files:',
      name: 'errorPickingFiles',
      desc: '',
      args: [],
    );
  }

  /// `Backup files is copied to Application Support Directory.`
  String get backupFilesIsCopiedToApplicationSupportDirectory {
    return Intl.message(
      'Backup files is copied to Application Support Directory.',
      name: 'backupFilesIsCopiedToApplicationSupportDirectory',
      desc: '',
      args: [],
    );
  }

  /// `Backup files is not valid.`
  String get backupFilesIsNotValid {
    return Intl.message(
      'Backup files is not valid.',
      name: 'backupFilesIsNotValid',
      desc: '',
      args: [],
    );
  }

  /// `Backup files are saved to selected directory`
  String get backupFilesAreSavedToSelectedDirectory {
    return Intl.message(
      'Backup files are saved to selected directory',
      name: 'backupFilesAreSavedToSelectedDirectory',
      desc: '',
      args: [],
    );
  }

  /// `Error picking directory or copying files:`
  String get errorPickingDirectoryOrCopyingFiles {
    return Intl.message(
      'Error picking directory or copying files:',
      name: 'errorPickingDirectoryOrCopyingFiles',
      desc: '',
      args: [],
    );
  }

  /// `How do I remove the unwanted white border around my app icon on Android devices?`
  String get howDoIRemoveTheUnwantedWhiteBorderAroundMyAppIconOnAndroidDevices {
    return Intl.message(
      'How do I remove the unwanted white border around my app icon on Android devices?',
      name: 'howDoIRemoveTheUnwantedWhiteBorderAroundMyAppIconOnAndroidDevices',
      desc: '',
      args: [],
    );
  }

  /// `View and manage SQLite and Hive databases in your Flutter projects.`
  String get viewAndManageSqliteAndHiveDatabasesInYourFlutterProjects {
    return Intl.message(
      'View and manage SQLite and Hive databases in your Flutter projects.',
      name: 'viewAndManageSqliteAndHiveDatabasesInYourFlutterProjects',
      desc: '',
      args: [],
    );
  }

  /// `Database Explorer`
  String get databaseExplorer {
    return Intl.message(
      'Database Explorer',
      name: 'databaseExplorer',
      desc: '',
      args: [],
    );
  }

  /// `Search...`
  String get search2 {
    return Intl.message('Search...', name: 'search2', desc: '', args: []);
  }

  /// `Explorer`
  String get explorer {
    return Intl.message('Explorer', name: 'explorer', desc: '', args: []);
  }

  /// `Query`
  String get query {
    return Intl.message('Query', name: 'query', desc: '', args: []);
  }

  /// `Database Type:`
  String get databaseType {
    return Intl.message(
      'Database Type:',
      name: 'databaseType',
      desc: '',
      args: [],
    );
  }

  /// `Database Path`
  String get databasePath {
    return Intl.message(
      'Database Path',
      name: 'databasePath',
      desc: '',
      args: [],
    );
  }

  /// `Load`
  String get loadLabel {
    return Intl.message('Load', name: 'loadLabel', desc: '', args: []);
  }

  /// `SQL Query`
  String get sqlQuery {
    return Intl.message('SQL Query', name: 'sqlQuery', desc: '', args: []);
  }

  /// `Execute Query`
  String get executeQuery {
    return Intl.message(
      'Execute Query',
      name: 'executeQuery',
      desc: '',
      args: [],
    );
  }

  /// `Load a database first`
  String get loadADatabaseFirst {
    return Intl.message(
      'Load a database first',
      name: 'loadADatabaseFirst',
      desc: '',
      args: [],
    );
  }

  /// `Enter a SQL query and execute it to see results`
  String get enterASqlQueryAndExecuteItToSeeResults {
    return Intl.message(
      'Enter a SQL query and execute it to see results',
      name: 'enterASqlQueryAndExecuteItToSeeResults',
      desc: '',
      args: [],
    );
  }

  /// `Select a table to view its data`
  String get selectATableToViewItsData {
    return Intl.message(
      'Select a table to view its data',
      name: 'selectATableToViewItsData',
      desc: '',
      args: [],
    );
  }

  /// `Select a table`
  String get selectATable {
    return Intl.message(
      'Select a table',
      name: 'selectATable',
      desc: '',
      args: [],
    );
  }

  /// `Copy row`
  String get copyRow {
    return Intl.message('Copy row', name: 'copyRow', desc: '', args: []);
  }

  /// `Load a database to see available tables`
  String get loadADatabaseToSeeAvailableTables {
    return Intl.message(
      'Load a database to see available tables',
      name: 'loadADatabaseToSeeAvailableTables',
      desc: '',
      args: [],
    );
  }

  /// `Only for small databases`
  String get onlyForSmallDatabases {
    return Intl.message(
      'Only for small databases',
      name: 'onlyForSmallDatabases',
      desc: '',
      args: [],
    );
  }

  /// `Share your feedback on how we can improve or let us know what you enjoy about our app.`
  String
  get shareYourFeedbackOnHowWeCanImproveOrLetUsKnowWhatYouEnjoyAboutOurApp {
    return Intl.message(
      'Share your feedback on how we can improve or let us know what you enjoy about our app.',
      name: 'shareYourFeedbackOnHowWeCanImproveOrLetUsKnowWhatYouEnjoyAboutOurApp',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
