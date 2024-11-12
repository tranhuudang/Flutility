import 'package:flutter_toolkits/src/core/core.dart';

import '../../../presentation.dart';

class EmptyHistory extends StatelessWidget {
  final String? label;
  const EmptyHistory({
    super.key, this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Illustration(assetImage: LocalDirectory.historyIllustration),
          16.height,
          Opacity(
            opacity: .5,
            child: Text(label ?? "Oops, it's a ghost town in here!".i18n,
                style: context.theme.textTheme.bodyMedium),
          ),
        ],
      ),
    );
  }
}
