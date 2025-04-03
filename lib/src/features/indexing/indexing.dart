import '../../app/app.dart';

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
    keywords: ['dashboard', DefaultSettings.appDescription.i18n, 'home', 'welcome', 'Flutter Tools'],
  ),
  SearchIndex(
    index: 2,
    title: 'Settings',
    keywords: [
      'dark mode',
      'accent color',
      'backup files',
      'settings',
      'Common'.i18n,
      'Theme'.i18n,
      'Language'.i18n,
      'Restore from a backup file'.i18n,
      'Create a new backup'.i18n,
      'Reset to default settings'.i18n
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
      'About'.i18n
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
      'Official Documentation Websites'.i18n,
      'Additional Flutter Resources'.i18n
    ],
  ),
  SearchIndex(
    index: 5,
    title: 'Command Line',
    keywords: [
      'command line',
      'cli',
      'terminal',
      'Common Flutter CLI Commands'.i18n
    ],
  ),
  SearchIndex(
    index: 6,
    title: 'Roadmap',
    keywords: [
      'roadmap',
      "Flutter Learning Roadmap".i18n,
      'Basics'.i18n,
      'Getting Deeper'.i18n,
      'Almost there'.i18n,
      'Mastering Flutter'.i18n
    ],
  ),
  SearchIndex(
    index: 7,
    title: 'Fonts',
    keywords: [
      'fonts',
      'font picker',
      'The quick brown fox jumps over the lazy dog.'.i18n,
      'Font Collection',
      'Font Family',
      'Font Size',
      'Font Weight',
      'Font Style',
      'Font Decoration',
      'Google Fonts on pub.dev'.i18n
    ],
  ),
  SearchIndex(
    index: 8,
    title: 'Color Picker',
    keywords: [
      'color picker',
      'color palette',
      'color collection',
      'Color Picker'.i18n,
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
      "JSON Formatter".i18n,
      'JSON Beautifier',
      "Enter your JSON below and click 'Format JSON' to prettify it. Make sure it's valid JSON format."
          .i18n,
      "Format JSON".i18n
    ],
  ),
  SearchIndex(
    index: 11,
    title: 'Icon Generator',
    keywords: [
      'icon generator',
      'App Icon Setter for Flutter Project'.i18n,
      'Step 1: Select a PNG Image'.i18n,
      'Pick the root directory of your Flutter project. Icons will be generated and placed in the appropriate folders for Android, iOS, macOS, Windows, and Web platforms.'
          .i18n
    ],
  ),
  SearchIndex(
    index: 12,
    title: 'Image Compress',
    keywords: [
      'image compress',
      'Image Compression'.i18n,
      'Step 1: Pick Images to Compress'.i18n,
      'You can select multiple JPG or PNG images to compress. Click the button below to start.'
          .i18n,
      'image',
      'Compress Images'.i18n
    ],
  ),
  SearchIndex(
    index: 13,
    title: 'API Test',
    keywords: [
      'api test',
      "API Testing Tool".i18n,
      "This API Testing Tool allows you to perform basic HTTP requests like GET, POST, and DELETE. Enter a URL to test the response and see the status code and data returned by the server."
          .i18n,
      "Send Request",
      "Response".i18n
    ],
  ),
  const SearchIndex(
    index: 14,
    title: 'Note Taking',
    keywords: [
      'note taking',
      'note',
      'notes',
      'notebook',
      'notebooks',
      'Dev Notes'
    ],
  ),
  SearchIndex(
    index: 15,
    title: 'Donation',
    keywords: [
      'donation',
      'donate',
      'support',
      'sponsor',
      'sponsorship',
      'buy me a coffee',
      'Development Fund'.i18n
    ],
  ),
];
