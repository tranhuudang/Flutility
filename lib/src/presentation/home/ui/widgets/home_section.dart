import 'package:flutility/src/core/core.dart';
import 'package:flutility/src/presentation/presentation.dart';

class HomeSection extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;
  final VoidCallback? onTap;
  final Widget? icon;
  const HomeSection(
      {super.key,
      this.title = '',
      required this.children,
      this.mainAxisAlignment = MainAxisAlignment.start,
      this.crossAxisAlignment = CrossAxisAlignment.center,
      this.onTap,
      this.icon});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(left: .5, right: .5, bottom: 4),
      child: InkWell(
        mouseCursor: onTap != null
            ? WidgetStateMouseCursor.clickable
            : SystemMouseCursors.basic,
        hoverColor: onTap != null
            ? Theme.of(context).hoverColor
            : context.theme.cardTheme.color,
        borderRadius: BorderRadius.circular(16),
        onTap: () {
          onTap != null ? onTap!.call() : () {};
        },
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            children: [
              if (title != '' || icon != null) ...[
                Row(
                  children: [
                    if (icon != null) ...[icon!, 8.width],
                    Expanded(
                      child: Text(
                        maxLines: 1,
                        title,
                        style: context.theme.textTheme.titleMedium?.copyWith(
                          color: context.theme.colorScheme.primary,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ),
                  ],
                ),
                16.height,
              ],
              Column(
                crossAxisAlignment: crossAxisAlignment,
                mainAxisAlignment: mainAxisAlignment,
                children: children,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
