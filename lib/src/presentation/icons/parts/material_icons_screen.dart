import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutility/src/core/core.dart';
import 'package:responsive_builder/responsive_builder.dart';

class MaterialIconsScreen extends StatefulWidget {
  const MaterialIconsScreen({super.key});

  @override
  State<MaterialIconsScreen> createState() => _MaterialIconsScreenState();
}

class _MaterialIconsScreenState extends State<MaterialIconsScreen> {
  Map<String, List<String>> iconsMap = {};
  List<String> topics = [];
  String selectedPlatform = 'android'; // Default platform selection
  String? selectedTopic;

  @override
  void initState() {
    super.initState();
    fetchIcons(); // Fetch icons based on the initial platform selection
  }

  Future<void> fetchIcons() async {
    try {
      // Fetch the list of topic subfolders from the repository.
      List<String> fetchedTopics = await getSubfolders(
          'https://api.github.com/repos/google/material-design-icons/contents/$selectedPlatform');

      setState(() {
        topics = fetchedTopics;
        selectedTopic = fetchedTopics.isNotEmpty
            ? fetchedTopics[0]
            : null; // Select the first topic by default
      });

      if (selectedTopic != null) {
        await fetchIconsForTopic(selectedTopic!);
      }
    } catch (e) {
      DebugLog.error('Error fetching icons: $e');
    }
  }

  Future<void> fetchIconsForTopic(String topic) async {
    try {
      List<String> iconNames = await getSubfolders(
          'https://api.github.com/repos/google/material-design-icons/contents/$selectedPlatform/$topic');

      setState(() {
        iconsMap = {topic: iconNames};
      });
    } catch (e) {
      DebugLog.error('Error fetching icons for topic $topic: $e');
    }
  }

  Future<List<String>> getSubfolders(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final List<dynamic> jsonResponse = jsonDecode(response.body);
      final List<String> subfolders = jsonResponse
          .where((item) => item['type'] == 'dir')
          .map((item) => item['name'] as String)
          .toList();
      return subfolders;
    } else {
      throw Exception('Failed to load subfolders from $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              // Dropdown for selecting the platform (android or ios)
              Container(
                decoration:BoxDecoration(
                  color: context.theme.colorScheme.surfaceBright,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    value: selectedPlatform,
                    borderRadius: BorderRadius.circular(10),
                    items: ['android', 'ios'].map((platform) {
                      return DropdownMenuItem<String>(
                        value: platform,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(platform),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedPlatform = newValue!;
                        iconsMap.clear(); // Clear the existing icons
                        selectedTopic = null; // Reset the selected topic
                        fetchIcons(); // Fetch new topics for the selected platform
                      });
                    },
                  ),
                ),
              ),
              const SizedBox(width: 20),
              // Dropdown for selecting the topic
              Container(
                decoration:BoxDecoration(
                  color: context.theme.colorScheme.surfaceBright,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: DropdownButtonHideUnderline(
                  child: DropdownButton<String>(
                    borderRadius: BorderRadius.circular(10),

                    value: selectedTopic,
                    hint: Text('Select Topic'.i18n),
                    items: topics.map((topic) {
                      return DropdownMenuItem<String>(
                        value: topic,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(topic.i18n),
                        ),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        selectedTopic = newValue!;
                        fetchIconsForTopic(
                            selectedTopic!); // Fetch icons for the selected topic
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
        16.height,
        Expanded(
          child: iconsMap.isEmpty || selectedTopic == null
              ? const Center(child: CircularProgressIndicator())
              : ResponsiveBuilder(builder: (context, info) {
                  var crossAxisCount = info.isMobile
                      ? 4
                      : info.isTablet
                          ? 5
                          : info.isDesktop
                              ? 7
                              : 4;
                  return GridView.builder(
                    padding: const EdgeInsets.all(16),
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: crossAxisCount,
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                    ),
                    itemCount: iconsMap[selectedTopic]?.length ?? 0,
                    itemBuilder: (context, index) {
                      String iconName = iconsMap[selectedTopic]![index];
                      String imageUrl = selectedPlatform == 'ios'
                          ? 'https://raw.githubusercontent.com/google/material-design-icons/refs/heads/master/ios/$selectedTopic/$iconName/materialicons/black/baseline_${iconName}_black_36pt.xcassets/baseline_${iconName}_black_36pt.imageset/baseline_${iconName}_black_36pt_1x.png'
                          : 'https://raw.githubusercontent.com/google/material-design-icons/refs/heads/master/android/$selectedTopic/$iconName/materialicons/black/res/drawable-hdpi/baseline_${iconName}_black_36.png';
                      return InkWell(
                        onTap: () {
                          Clipboard.setData(
                              ClipboardData(text: 'Icons.$iconName'));
                          context.showSnackBar(
                              content: 'Copied to clipboard'.i18n);
                        },
                        child: Column(
                          children: [
                            ColorFiltered(
                                colorFilter: ColorFilter.mode(
                                    context.theme.colorScheme.primary,
                                    BlendMode.srcIn),
                                child: CachedNetworkImage(
                                  imageUrl: imageUrl,
                                  height: 36,
                                  width: 36,
                                )),
                            4.height,
                            Text(
                              iconName,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      );
                    },
                  );
                }),
        ),
      ],
    );
  }
}
