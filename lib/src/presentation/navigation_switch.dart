import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/presentation.dart';
import 'package:go_router/go_router.dart';
import 'package:responsive_builder/responsive_builder.dart';

class NavigationSwitchView extends StatefulWidget {
  final StatefulNavigationShell navigationShell;
  const NavigationSwitchView({
    super.key,
    required this.navigationShell,
  });

  @override
  State<NavigationSwitchView> createState() => _NavigationSwitchViewState();
}

class _NavigationSwitchViewState extends State<NavigationSwitchView> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout.builder(
      mobile: (context) {
        if (isMobile || isWebMobile) {
          return DesktopNavigationFrame(
              navigationShell: widget.navigationShell);
        } else {
          return DesktopNavigationFrame(
              navigationShell: widget.navigationShell);
        }
      },
      tablet: (context) {
        return DesktopNavigationFrame(navigationShell: widget.navigationShell);
      },
    );
  }
}
