import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/presentation.dart';
import 'package:flutter_sizer/flutter_sizer.dart';

class DesktopLogoutSuccessful extends StatelessWidget {
  const DesktopLogoutSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SizedBox(
          width: 60.w,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              50.height,
              Illustration(assetImage: LocalDirectory.textRecognizerIllustration),
              Text(
                'Logout successful'.i18n,
                style: context.theme.textTheme.headlineSmall,
              ),
              16.height,
              Opacity(
                opacity: .5,
                child: Text(
                    'Your data will not be synchronized and some features will not work when you are not logged in.'
                        .i18n),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
