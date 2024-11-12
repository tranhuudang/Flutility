import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/home/ui/screens/desktop_home_screen.dart';
import 'package:flutter_toolkits/src/presentation/presentation.dart';
import 'package:url_launcher/url_launcher.dart';

final List<Map<String, String>> items = [
  {
    'title': 'Get started',
    'description': 'Set up your environment and start building.',
    'url': 'https://flutter.dev/docs/get-started/install',
  },
  {
    'title': 'Widget catalog',
    'description':
        'Dip into the rich set of Flutter widgets available in the SDK.',
    'url': 'https://flutter.dev/docs/development/ui/widgets',
  },
  {
    'title': 'API docs',
    'description': 'Bookmark the API reference docs for the Flutter framework.',
    'url': 'https://api.flutter.dev/',
  },
  {
    'title': 'Cookbook',
    'description': 'Browse the cookbook for many easy Flutter recipes.',
    'url': 'https://flutter.dev/docs/cookbook',
  },
  {
    'title': 'Samples',
    'description': 'Check out the Flutter examples.',
    'url': 'https://flutter.dev/docs/samples',
  },
  {
    'title': 'Videos',
    'description': 'View the many videos on the Flutter YouTube channel.',
    'url': 'https://www.youtube.com/flutterdev',
  },
];

class DocumentationScreen extends StatelessWidget {
  const DocumentationScreen({super.key});

  // Documentation items and URLs

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.document_search_16_regular),
        title: Text('Flutter Documentation'.i18n),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, mainAxisExtent: 90),
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];
            return DocumentationItem(
              title: item['title']!,
              description: item['description']!,
              url: item['url']!,
            );
          },
        ),
      ),
    );
  }
}

class DocumentationItem extends StatelessWidget {
  final String title;
  final String description;
  final String url;

  const DocumentationItem(
      {super.key, required this.title, required this.description, required this.url});

  @override
  Widget build(BuildContext context) {
    return OverviewItem(
      icon: null,
      title: title,
      subtitle: description,
      onTap: () async {
        if (await canLaunch(url)) {
          await launch(url);
        } else {
          throw 'Could not launch $url';
        }
      },
    );

  }
}
