import 'package:flutter_toolkits/src/core/core.dart';
import 'package:flutter_toolkits/src/presentation/presentation.dart';

class RequiredLoginScreen extends StatelessWidget {
  const RequiredLoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const ChevronBackButton(),
        title: Text('Login is required'.i18n),
      ),
      body: Center(
        child: Column(
          children: [
            Illustration(assetImage: LocalDirectory.textRecognizerIllustration),
            Opacity(
                opacity: .5,
                child: Text('You need to login to use this function.'.i18n)),
          ],
        ),
      ),
    );
  }
}
