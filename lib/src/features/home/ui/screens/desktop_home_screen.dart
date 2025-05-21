import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutility/src/features/home/data/utils/model/terrace_advertise.dart';
import 'package:flutility/src/features/home/ui/widgets/advertisement_card.dart';
import 'package:flutility/src/features/home/ui/widgets/dashboard_shape.dart';
import 'package:flutility/src/features/home/ui/widgets/overview_item.dart';
import 'package:intl/intl.dart';
import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutility/src/app/router/route_configurations_desktop.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../presentation.dart';
import '../widgets/toggle_diague.dart';

class DesktopHomeScreen extends StatefulWidget {
  const DesktopHomeScreen({super.key});

  @override
  State<DesktopHomeScreen> createState() => _DesktopHomeScreenState();
}

class _DesktopHomeScreenState extends State<DesktopHomeScreen> {
  late bool isJsonFormatterEnabled;
  late bool isImageCompressorEnabled;
  late bool isApiTestingEnabled;
  late bool isDatabaseExplorerEnabled;
  List<TerraceAdvertise> advertisements = [];
  int indexx = 0;
  @override
  void initState() {
    super.initState();
    isJsonFormatterEnabled = Properties.instance.settings.enableJsonFormatter;
    isImageCompressorEnabled = Properties.instance.settings.enableImageCompress;
    isApiTestingEnabled = Properties.instance.settings.enableApiTesting;
    isDatabaseExplorerEnabled =
        Properties.instance.settings.enableDatabaseExplorer;
    _seekFeedback();
    _loadAdvertisements();
  }

  void _loadAdvertisements() async {
    final ads = await _getAdvertisements();
    if (mounted) {
      setState(() {
        advertisements = ads;
      });
    }
  }

  Future<List<TerraceAdvertise>> _getAdvertisements() async {
    try {
      final snapshot = await FirebaseFirestore.instance
          .collection('Advertisements')
          .where('isActive', isEqualTo: true)
          .orderBy('order', descending: false)
          .get();

      final now = DateTime.now();
      final ads = snapshot.docs.map((doc) {
        final data = doc.data();
        // Add document ID to the data
        data['id'] = doc.id;
        return TerraceAdvertise.fromJson(data);
      }).where((ad) {
        // Filter by date if start and end date are specified
        final startDate = ad.startDate;
        final endDate = ad.endDate;

        if (startDate != null && endDate != null) {
          return now.isAfter(startDate) && now.isBefore(endDate);
        } else if (startDate != null) {
          return now.isAfter(startDate);
        } else if (endDate != null) {
          return now.isBefore(endDate);
        }

        return true; // No date constraints
      }).toList();

      DebugLog.info('Loaded ${ads.length} advertisements');
      return ads;
    } catch (e) {
      DebugLog.error('Error loading advertisements: ${e.toString()}');
      return [];
    }
  }

  void _seekFeedback() async {
    final didRateApp = Properties.instance.settings.didRateApp;
    final openAppCount = Properties.instance.settings.openAppCount;
    DebugLog.info('Open App Count: $openAppCount');
    if ((!didRateApp && openAppCount != 0 && openAppCount % 2 == 0) ||
        (didRateApp && openAppCount % 50 == 0)) {
      await Future.delayed(const Duration(seconds: 2), () {
        context.showAlertDialog(
            actionButtonTitle: 'Feedback'.i18n,
            title: 'Help Us Improve'.i18n,
            content:
                "Share your feedback on how we can improve or let us know what you enjoy about our app."
                    .i18n,
            action: () {
              goToStoreListing();
              Properties.instance.saveSettings(
                  Properties.instance.settings.copyWith(didRateApp: true));
            });
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Row(children: [
            Expanded(
              child: Container(
                height: 140,
                color: context.theme.colorScheme.surfaceContainerLow,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Stack(
                    children: [
                      Opacity(
                        opacity: .3,
                        child: Align(
                            alignment: Alignment.centerRight,
                            child: Image.asset('assets/flutter.png')),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                8.height,
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      indexx++;
                                    });
                                  },
                                  child: Text(
                                    DefaultSettings.appName,
                                    style: context.theme.textTheme.headlineLarge
                                        ?.copyWith(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                const SizedBox(width: 100, child: Divider()),
                                Text(DefaultSettings.appDescription.i18n)
                              ],
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              _buildIconButton(
                                  icon: const Icon(
                                    FontAwesomeIcons.github,
                                    size: 16,
                                  ),
                                  url: OnlineDirectoryBase.githubURL),
                              _buildIconButton(
                                  icon: const Icon(
                                    Icons.mail,
                                    size: 20,
                                  ),
                                  url: OnlineDirectoryBase.email),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ]),
          const Divider(
            height: 0,
          ),
          Row(
            children: [
              Expanded(
                child: DashboardShape(
                  backgroundColor:
                      context.theme.colorScheme.surfaceContainerHigh,
                  textColor: context.theme.colorScheme.onSurface,
                  text: 'Surface Container High',
                ),
              ),
              DashboardShape(
                backgroundColor: context.theme.colorScheme.primary,
                textColor: context.theme.colorScheme.onPrimary,
                text: 'Primary',
              ),
              DashboardShape(
                backgroundColor: context.theme.colorScheme.onSurface,
                textColor: context.theme.colorScheme.onPrimary,
                text: 'On Surface',
              ),
            ],
          ),

          /// Overview
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Text('Documentation'.i18n,
                style: context.theme.textTheme.titleSmall),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 90),
                    shrinkWrap: true,
                    children: [
                      OverviewItem(
                          icon: FluentIcons.document_search_16_regular,
                          title: 'Flutter Documentation'.i18n,
                          subtitle:
                              'Explore setup steps, API references, and example projects to accelerate your development.'
                                  .i18n,
                          onTap: () {
                            goBranch(4);
                          }),
                      OverviewItem(
                          icon: FluentIcons.tasks_app_20_regular,
                          title: 'Common Flutter CLI Commands'.i18n,
                          subtitle:
                              'A command-line interface for managing Flutter project.'
                                  .i18n,
                          onTap: () {
                            goBranch(5);
                          }),
                      OverviewItem(
                        icon: FluentIcons.map_16_regular,
                        title: 'Flutter Learning Roadmap'.i18n,
                        subtitle:
                            'A structured guide to help you advance from beginner to expert in Flutter.'
                                .i18n,
                        onTap: () {
                          goBranch(6);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Core
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                Text('Features'.i18n,
                    style: context.theme.textTheme.titleSmall),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 90),
                    shrinkWrap: true,
                    children: [
                      OverviewItem(
                          icon: FluentIcons.text_font_16_regular,
                          title: 'Fonts Preview'.i18n,
                          subtitle:
                              'Choose your preferred font style and size.'.i18n,
                          onTap: () {
                            goBranch(7);
                          }),
                      OverviewItem(
                        icon: FluentIcons.color_16_regular,
                        title: 'Color Picker'.i18n,
                        subtitle:
                            'Pick the perfect color for your project.'.i18n,
                        onTap: () {
                          goBranch(8);
                        },
                      ),
                      OverviewItem(
                        icon: FluentIcons.icons_20_regular,
                        title: 'Icons Preview'.i18n,
                        subtitle:
                            'Browse and select from a variety of icons.'.i18n,
                        onTap: () {
                          goBranch(9);
                        },
                      ),
                      OverviewItem(
                        icon: FluentIcons.apps_settings_16_regular,
                        title: 'App Icon Setter for Flutter'.i18n,
                        subtitle:
                            'Create custom icons tailored to your needs.'.i18n,
                        onTap: () {
                          goBranch(11);
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          /// Core
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                Text('Additional Tools'.i18n,
                    style: context.theme.textTheme.titleSmall),
                const Spacer(),
                TextButton(
                    onPressed: () async {
                      // Function to show the dialog in your main widget
                      showDialog(
                        context: context,
                        builder: (BuildContext context) =>
                            const ToggleToolsDialog(),
                      ).then((result) {
                        if (result != null) {
                          setState(() {
                            // Handle the result (toggle values) here
                            isJsonFormatterEnabled = result['jsonFormatter'];
                            isImageCompressorEnabled =
                                result['imageCompressor'];
                            isApiTestingEnabled = result['apiTesting'];
                          });
                        }
                      });
                    },
                    child: Text('Options'.i18n))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: GridView(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, mainAxisExtent: 90),
                    shrinkWrap: true,
                    children: [
                      if (isJsonFormatterEnabled)
                        OverviewItem(
                          icon: FluentIcons.data_pie_20_regular,
                          title: 'JSON Formatter'.i18n,
                          subtitle:
                              'Format your JSON data for better readability.'
                                  .i18n,
                          onTap: () {
                            goBranch(10);
                          },
                        ),
                      if (isImageCompressorEnabled)
                        OverviewItem(
                          icon: Icons.compress,
                          title: 'Image Compress'.i18n,
                          subtitle:
                              'Reduce image file sizes without sacrificing quality.'
                                  .i18n,
                          onTap: () {
                            goBranch(12);
                          },
                        ),
                      if (isApiTestingEnabled)
                        OverviewItem(
                          icon: FluentIcons.network_check_20_regular,
                          title: 'API Testing'.i18n,
                          subtitle:
                              'Test and debug your API endpoints efficiently.'
                                  .i18n,
                          onTap: () {
                            goBranch(13);
                          },
                        ),
                      if (isDatabaseExplorerEnabled)
                        OverviewItem(
                          icon: FluentIcons.database_search_20_regular,
                          title: 'Database Explorer'.i18n,
                          subtitle:
                              'View and manage SQLite and Hive databases in your Flutter projects.'
                                  .i18n,
                          onTap: () {
                            goBranch(16);
                          },
                        ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Row(
              children: [
                Text('Your go-to tools, built by us'.i18n,
                    style: context.theme.textTheme.titleSmall),
                const Spacer(),
                if (indexx > 10)
                  TextButton.icon(
                    icon: const Icon(Icons.add_circle_outline),
                    label: Text('New Ad'.i18n),
                    onPressed: () => _showCreateAdDialog(context),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 14, right: 14),
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, mainAxisExtent: 150),
              shrinkWrap: true,
              itemCount: advertisements.length,
              itemBuilder: (context, index) {
                final ad = advertisements[index];
                return AdvertisementCard(
                  ad: ad,
                  isEditorMode: indexx > 10,
                );
              },
            ),
          ),
          32.height,
        ],
      ),
    );
  }

  Future<void> _createNewAd({
    required String title,
    required String description,
    required String iconUrl,
    required String link,
    String? previewImage,
    required int order,
    required bool isActive,
    DateTime? startDate,
    DateTime? endDate,
  }) async {
    try {
      final docRef = FirebaseFirestore.instance
          .collection("Advertisements")
          .doc(); // Automatically generate ID

      final adData = {
        'title': title,
        'description': description,
        'iconUrl': iconUrl,
        'link': link,
        'order': order,
        'isActive': isActive,
        'createdAt': FieldValue.serverTimestamp(),
        'updatedAt': FieldValue.serverTimestamp(),
      };

      if (previewImage != null && previewImage.isNotEmpty) {
        adData['previewImage'] = previewImage;
      }

      if (startDate != null) {
        adData['startDate'] = Timestamp.fromDate(startDate);
      }

      if (endDate != null) {
        adData['endDate'] = Timestamp.fromDate(endDate);
      }

      await docRef.set(adData);
      DebugLog.info('Created new advertisement with ID: ${docRef.id}');

      // Refresh advertisements
      _loadAdvertisements();

      ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Advertisement created successfully'.i18n)));
    } catch (e) {
      DebugLog.error('Error creating advertisement: ${e.toString()}');
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          content: Text('Error creating advertisement: ${e.toString()}'.i18n)));
    }
  }

  Future<void> _showCreateAdDialog(BuildContext context) async {
    final titleController = TextEditingController();
    final descriptionController = TextEditingController();
    final iconUrlController = TextEditingController();
    final linkController = TextEditingController();
    final previewImageController = TextEditingController();
    final orderController = TextEditingController(text: '0');
    bool isActive = true;
    DateTime? startDate;
    DateTime? endDate;

    showDialog(
      context: context,
      builder: (dialogContext) => AlertDialog(
        title: Text('Create New Announcement'.i18n),
        content: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Title'.i18n,
                  border: const OutlineInputBorder(),
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: descriptionController,
                decoration: InputDecoration(
                  labelText: 'Description'.i18n,
                  border: const OutlineInputBorder(),
                ),
                maxLines: 3,
              ),
              const SizedBox(height: 16),
              TextField(
                controller: iconUrlController,
                decoration: InputDecoration(
                  labelText: 'Icon URL'.i18n,
                  border: const OutlineInputBorder(),
                  hintText: 'https://example.com/icon.png',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: linkController,
                decoration: InputDecoration(
                  labelText: 'Link'.i18n,
                  border: const OutlineInputBorder(),
                  hintText: 'https://example.com or /route/name',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: previewImageController,
                decoration: InputDecoration(
                  labelText: 'Preview Image URL (Optional)'.i18n,
                  border: const OutlineInputBorder(),
                  hintText: 'https://example.com/preview.png',
                ),
              ),
              const SizedBox(height: 16),
              TextField(
                controller: orderController,
                decoration: InputDecoration(
                  labelText: 'Display Order'.i18n,
                  border: const OutlineInputBorder(),
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(height: 16),
              StatefulBuilder(
                builder: (context, setState) => SwitchListTile(
                  title: Text('Active'.i18n),
                  value: isActive,
                  onChanged: (value) {
                    setState(() {
                      isActive = value;
                    });
                  },
                ),
              ),
              const SizedBox(height: 8),
              Text('Date Range (Optional)'.i18n,
                  style: const TextStyle(fontWeight: FontWeight.bold)),
              const SizedBox(height: 8),
              Row(
                children: [
                  Expanded(
                    child: StatefulBuilder(
                      builder: (context, setState) => ListTile(
                        title: Text(startDate != null
                            ? DateFormat('yyyy-MM-dd').format(startDate!)
                            : 'Start Date (Optional)'.i18n),
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate: startDate ?? DateTime.now(),
                            firstDate: DateTime.now()
                                .subtract(const Duration(days: 365)),
                            lastDate: DateTime.now()
                                .add(const Duration(days: 365 * 2)),
                          );
                          if (date != null) {
                            setState(() {
                              startDate = date;
                            });
                          }
                        },
                        trailing: const Icon(Icons.calendar_today),
                      ),
                    ),
                  ),
                  Expanded(
                    child: StatefulBuilder(
                      builder: (context, setState) => ListTile(
                        title: Text(endDate != null
                            ? DateFormat('yyyy-MM-dd').format(endDate!)
                            : 'End Date (Optional)'.i18n),
                        onTap: () async {
                          final date = await showDatePicker(
                            context: context,
                            initialDate: endDate ??
                                DateTime.now().add(const Duration(days: 30)),
                            firstDate: DateTime.now(),
                            lastDate: DateTime.now()
                                .add(const Duration(days: 365 * 2)),
                          );
                          if (date != null) {
                            setState(() {
                              endDate = date;
                            });
                          }
                        },
                        trailing: const Icon(Icons.calendar_today),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(dialogContext),
            child: Text('Cancel'.i18n),
          ),
          ElevatedButton(
            onPressed: () {
              if (titleController.text.isEmpty ||
                  descriptionController.text.isEmpty ||
                  iconUrlController.text.isEmpty ||
                  linkController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: Text('Please fill in all required fields'.i18n)));
                return;
              }

              _createNewAd(
                title: titleController.text,
                description: descriptionController.text,
                iconUrl: iconUrlController.text,
                link: linkController.text,
                previewImage: previewImageController.text.isNotEmpty
                    ? previewImageController.text
                    : null,
                order: int.tryParse(orderController.text) ?? 0,
                isActive: isActive,
                startDate: startDate,
                endDate: endDate,
              ).then((_) => Navigator.pop(dialogContext));
            },
            child: Text('Create'.i18n),
          ),
        ],
      ),
    );
  }

  Widget _buildIconButton({required Icon icon, required String url}) {
    return IconButton(
        onPressed: () async {
          final Uri uri = Uri.parse(url);
          if (!await launchUrl(uri, mode: LaunchMode.externalApplication)) {
            throw Exception('Could not launch $uri');
          }
        },
        icon: icon);
  }
}
