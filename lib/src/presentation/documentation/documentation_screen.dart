import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/home/ui/screens/desktop_home_screen.dart';
import 'package:flutter_toolkits/src/presentation/presentation.dart';
import 'package:url_launcher/url_launcher.dart';
part 'additional_documentation.dart';
part 'official_documentation.dart';

class DocumentationScreen extends StatelessWidget {
  const DocumentationScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(FluentIcons.document_search_16_regular),
        title: Text('Flutter Documentation'.i18n),
      ),
      body: ListView(
        children: [
          /// Core
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                Text('Official Documentation Websites'.i18n,
                    style: context.theme.textTheme.titleSmall),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: GridView.builder(
              shrinkWrap: true,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                Text(
                  'Additional Flutter Resources',
                  style: Theme.of(context).textTheme.titleSmall,
                ),
              ],
            ),
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: data.length,
                  itemBuilder: (context, index) {
                    final section = data[index];
                    return ExpansionTile(
                      title: Text(
                        section['title'],
                        style: context.theme.textTheme.bodyMedium,
                      ),
                      children: section['items'].map<Widget>((item) {
                        return ListTile(
                          title: Text(
                            '- ${item['name']}',  style: context.theme.textTheme.bodyMedium,),
                          onTap: () => _launchURL(context, item['url']),
                          trailing: Icon(Icons.open_in_new),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
              Expanded(
                child: ListView.builder(
                  shrinkWrap: true,
                  itemCount: dataSecondHaft.length,
                  itemBuilder: (context, index) {
                    final section = dataSecondHaft[index];
                    return ExpansionTile(
                      title: Text(
                        section['title'],
                        style: context.theme.textTheme.bodyMedium,
                      ),
                      children: section['items'].map<Widget>((item) {
                        return ListTile(
                          title: Text(
                            '- ${item['name']}',  style: context.theme.textTheme.bodyMedium,),
                          onTap: () => _launchURL(context, item['url']),
                          trailing: Icon(Icons.open_in_new),
                        );
                      }).toList(),
                    );
                  },
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Future<void> _launchURL(BuildContext context, String url) async {
  if (!await launchUrl(Uri.parse(url), mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}

class DocumentationItem extends StatelessWidget {
  final String title;
  final String description;
  final String url;

  const DocumentationItem(
      {super.key,
      required this.title,
      required this.description,
      required this.url});

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
