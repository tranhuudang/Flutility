import '../../app/app.dart';
import 'package:flutility/generated/l10n.dart';

class SearchIndex {
  final int index;
  final String title;
  final List<String> keywords;

  const SearchIndex({
    required this.index,
    required this.title,
    required this.keywords,
  });
}

final List<SearchIndex> searchIndices = [
  SearchIndex(
    index: 0,
    title: 'Dashboard',
    keywords: ['dashboard', DefaultSettings.appDescription, 'home', 'welcome', 'Flutter Tools'],
  ),
  SearchIndex(
    index: 2,
    title: 'Settings',
    keywords: [
      'dark mode',
      'accent color',
      'backup files',
      'settings',
      S.current.common,
      S.current.theme,
      S.current.language,
      S.current.restoreFromABackupFile,
      S.current.createANewBackup,
      S.current.resetToDefaultSettings
    ],
  ),
  SearchIndex(
    index: 3,
    title: 'Info',
    keywords: [
      'info',
      'about',
      'version',
      'license',
      'privacy policy',
      S.current.about
    ],
  ),
  SearchIndex(
    index: 4,
    title: 'Documentation',
    keywords: [
      'documentation',
      'guide',
      'help',
      'faq',
      'tutorial',
      S.current.officialDocumentationWebsites,
      S.current.additionalFlutterResources
    ],
  ),
  SearchIndex(
    index: 5,
    title: 'Command Line',
    keywords: [
      'command line',
      'cli',
      'terminal',
      S.current.commonFlutterCliCommands
    ],
  ),
  SearchIndex(
    index: 6,
    title: 'Roadmap',
    keywords: [
      'roadmap',
      S.current.flutterLearningRoadmap,
      S.current.basics,
      S.current.gettingDeeper,
      S.current.almostThere,
      'Mastering Flutter'
    ],
  ),
  SearchIndex(
    index: 7,
    title: 'Fonts',
    keywords: [
      'fonts',
      'font picker',
      S.current.theQuickBrownFoxJumpsOverTheLazyDog,
      'Font Collection',
      'Font Family',
      'Font Size',
      'Font Weight',
      'Font Style',
      'Font Decoration',
      S.current.googleFontsOnPubDev
    ],
  ),
  SearchIndex(
    index: 8,
    title: 'Color Picker',
    keywords: [
      'color picker',
      'color palette',
      'color collection',
      S.current.colorPicker,
    ],
  ),
  const SearchIndex(
    index: 9,
    title: 'Icons',
    keywords: [
      'icons',
      'icon picker',
      'icon collection',
      'Material Icons',
      'Cupertino Icons',
      'Font Awesome Icons',
      'Iconly Icons',
      'Icons8 Icons',
      'Flutter Icons',
      'Icons8 Icons',
      'Icon Finder',
      'Icon Explorer',
      'Icon Search',
      'Icon Picker',
      'Icon Collection',
      'Icon Library',
      'Icon Repository',
      'Fluent Icons',
    ],
  ),
  SearchIndex(
    index: 10,
    title: 'JSON Formatter',
    keywords: [
      'json formatter',
      S.current.jsonFormatter,
      'JSON Beautifier',
      "Enter your JSON below and click 'Format JSON' to prettify it. Make sure it's valid JSON format."
          ,
      S.current.formatJson
    ],
  ),
  SearchIndex(
    index: 11,
    title: 'Icon Generator',
    keywords: [
      'icon generator',
      S.current.appIconSetterForFlutterProject,
      S.current.step1SelectAPngImage,
      'Pick the root directory of your Flutter project. Icons will be generated and placed in the appropriate folders for Android, iOS, macOS, Windows, and Web platforms.'
          
    ],
  ),
  SearchIndex(
    index: 12,
    title: 'Image Compress',
    keywords: [
      'image compress',
      S.current.imageCompression,
      S.current.step1PickImagesToCompress,
      'You can select multiple JPG or PNG images to compress. Click the button below to start.'
          ,
      'image',
      S.current.compressImages
    ],
  ),
  SearchIndex(
    index: 13,
    title: 'API Test',
    keywords: [
      'api test',
      S.current.apiTestingTool,
      "This API Testing Tool allows you to perform basic HTTP requests like GET, POST, and DELETE. Enter a URL to test the response and see the status code and data returned by the server."
          ,
      "Send Request",
      S.current.response
    ],
  ),
  SearchIndex(
    index: 14,
    title: 'Donation',
    keywords: [
      'donation',
      'donate',
      'support',
      'sponsor',
      'sponsorship',
      'buy me a coffee',
      S.current.developmentFund
    ],
  ),
];
