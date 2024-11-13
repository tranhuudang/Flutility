import 'package:flutter_toolkits/src/core/core.dart';
import 'package:fluentui_system_icons/fluentui_system_icons.dart';

import '../../../presentation.dart';

class SidebarWidget extends StatefulWidget {
  final int selectedIndex;
  final Function(int) onDestinationSelected;

  const SidebarWidget({
    super.key,
    required this.selectedIndex,
    required this.onDestinationSelected,
  });

  @override
  State<SidebarWidget> createState() => _SidebarWidgetState();
}

class _SidebarWidgetState extends State<SidebarWidget> {
  int selectedItemIndex = -1;
  final scrollController = ScrollController();

  void onItemTap(int index) {
    setState(() {
      selectedItemIndex = index; // Update the selected item index
      widget.onDestinationSelected(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: context.theme.scaffoldBackgroundColor,
      child: Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 55),
            child: ScrollConfiguration(
              behavior:
                  ScrollConfiguration.of(context).copyWith(scrollbars: false),
              child: ListView(
                controller: scrollController,
                children: [
                  ExpansionTile(
                    backgroundColor: context.theme.colorScheme.surfaceContainer
                        .withOpacity(1),
                    leading: const Icon( FluentIcons.document_search_16_regular,),
                    tilePadding: const EdgeInsets.only(
                        left: 14, right: 10, top: 0, bottom: 4),
                    title: Text(
                      'Documentation'.i18n,
                      style: context.theme.textTheme.titleSmall,
                    ),
                    children: [
                      _buildSidebarItem(
                          icon: FluentIcons.document_search_16_regular,
                          selectedIcon: FluentIcons.document_search_16_filled,
                          label: 'Flutter Docs'.i18n,
                          index: 4),
                      const Divider(
                        thickness: .3,
                      ),
                      _buildSidebarItem(
                          icon: FluentIcons.tasks_app_20_regular,
                          selectedIcon: FluentIcons.tasks_app_20_filled,
                          label: 'Common Flutter CLI Commands'.i18n,
                          index: 5),
                      const Divider(
                        thickness: .3,
                      ),
                      _buildSidebarItem(
                          icon: FluentIcons.map_16_regular,
                          selectedIcon: FluentIcons.map_16_filled,
                          label: 'Flutter Learning Roadmap'.i18n,
                          index: 6),
                      8.height,
                    ],
                  ),
                  const Divider(
                    thickness: .3,
                    height: 0,
                  ),
                  ExpansionTile(
                    backgroundColor: context.theme.colorScheme.surfaceContainer
                        .withOpacity(1),
                    leading: const Icon(FluentIcons.toolbox_16_regular),
                    tilePadding: const EdgeInsets.only(
                        left: 14, right: 10, top: 0, bottom: 4),
                    title: Text(
                      'Features'.i18n,
                      style: context.theme.textTheme.titleSmall,
                    ),
                    children: [
                      _buildSidebarItem(
                          icon: FluentIcons.text_font_16_regular,
                          selectedIcon: FluentIcons.text_font_16_filled,
                          label: 'Fonts'.i18n,
                          index: 7),
                      const Divider(
                        thickness: .3,
                      ),
                      _buildSidebarItem(
                          icon: FluentIcons.color_16_regular,
                          selectedIcon: FluentIcons.color_16_filled,
                          label: 'Color Picker'.i18n,
                          index: 8),
                      const Divider(
                        thickness: .3,
                      ),
                      _buildSidebarItem(
                          icon: FluentIcons.icons_20_regular,
                          selectedIcon: FluentIcons.icons_20_filled,
                          label: 'Icons'.i18n,
                          index: 9),
                      8.height,
                      const Divider(
                        thickness: .3,
                      ),
                      _buildSidebarItem(
                          icon: FluentIcons.apps_settings_16_regular,
                          selectedIcon: FluentIcons.apps_settings_16_filled,
                          label: 'App Icon Generator'.i18n,
                          index: 11),
                      8.height,
                    ],
                  ),
                  const Divider(
                    thickness: .3,
                    height: 0,
                  ),
                  if (Properties.instance.settings.enableImageCompress ||
                      Properties.instance.settings.enableApiTesting ||
                      Properties.instance.settings.enableJsonFormatter)
                    ExpansionTile(
                      backgroundColor:
                          context.theme.colorScheme.surfaceContainer,
                      leading: const Icon(FluentIcons.apps_add_in_16_regular),
                      tilePadding: const EdgeInsets.only(
                          left: 14, right: 10, top: 0, bottom: 0),
                      title: Text(
                        'Additional Tools'.i18n,
                        style: context.theme.textTheme.titleSmall,
                      ),
                      children: [
                        if (Properties
                            .instance.settings.enableJsonFormatter) ...[
                          8.height,
                          const Divider(
                            thickness: .3,
                            height: 0,
                          ),
                          _buildSidebarItem(
                              icon: FluentIcons.data_pie_20_regular,
                              selectedIcon: FluentIcons.data_pie_20_filled,
                              label: 'JSON Formatter'.i18n,
                              index: 10),
                        ],
                        if (Properties
                            .instance.settings.enableImageCompress) ...[
                          8.height,
                          const Divider(
                            thickness: .3,
                            height: 0,
                          ),
                          _buildSidebarItem(
                              icon: Icons.compress,
                              selectedIcon: Icons.compress,
                              label: 'Image Compress'.i18n,
                              index: 12),
                          8.height,
                        ],
                        if (Properties.instance.settings.enableApiTesting) ...[
                          const Divider(
                            thickness: .3,
                            height: 0,
                          ),
                          8.height,
                          _buildSidebarItem(
                              icon: FluentIcons.network_check_20_regular,
                              selectedIcon: FluentIcons.network_check_20_filled,
                              label: 'API Testing'.i18n,
                              index: 13),
                          8.height,
                        ],
                      ],
                    ),
                  // const Divider(
                  //   thickness: .3,
                  //   height: 0,
                  // ),
                  // 8.height,
                  // _buildSidebarItem(
                  //     icon: FluentIcons.network_check_20_regular,
                  //     selectedIcon: FluentIcons.network_check_20_filled,
                  //     label: 'API Testing'.i18n,
                  //     index: 11),
                ],
              ),
            ),
          ),
          Column(
            children: [
              4.height,
              _buildSidebarItem(
                  icon: FluentIcons.home_12_regular,
                  label: 'Dashboard'.i18n,
                  selectedIcon: FluentIcons.home_12_filled,
                  index: 0),
              const Divider(
                thickness: .3,
              ),
              const Spacer(),
              if (!isWindows) ...[
                _buildSidebarItem(
                  icon: Icons.settings,
                  selectedIcon: Icons.settings,
                  label: 'Settings'.i18n,
                  index: 2,
                ),
              ],
            ],
          )
        ],
      ),
    );
  }


  Widget _buildSidebarItem(
      {required IconData icon,
      IconData? selectedIcon,
      required String label,
      required int index}) {
    return InkWell(
      onTap: () => onItemTap(index),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 2, horizontal: 8),
        child: Container(
          decoration: BoxDecoration(
              // Highlight the selected item
              color: selectedItemIndex == index
                  ? context.theme.colorScheme.secondaryContainer
                  : Colors.transparent,
              borderRadius: BorderRadius.circular(8)),
          padding: const EdgeInsets.symmetric(
            horizontal: 8.0,
            vertical: 8.0,
          ),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Icon(
                  selectedItemIndex == index && selectedIcon != null
                      ? selectedIcon
                      : icon,
                  color: selectedItemIndex == index
                      ? context.theme.colorScheme.onSecondaryContainer
                      : context.theme.colorScheme.onSurface,
                  size: 20),
              14.width,
              Expanded(
                child: Text(
                  label,
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                  style: context.theme.textTheme.titleSmall?.copyWith(
                      color: selectedItemIndex == index
                          ? context.theme.colorScheme.onSecondaryContainer
                          : context.theme.colorScheme.onSurface),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
