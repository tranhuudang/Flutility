import 'package:flutility/src/core/core.dart';
import 'package:flutility/src/presentation/presentation.dart';

extension BuildContextExtension on BuildContext {
  ThemeData get theme => Theme.of(this);
  Size get screenSize => MediaQuery.sizeOf(this);
  bool get isSmallScreen => screenSize.width < 800;
  bool get isMediumScreen => screenSize.width >= 800 && screenSize.width < 1300;
  bool get isLargeScreen => screenSize.width >= 1300;
  void showAlertDialog(
      {required String title,
      required String content,
      String actionButtonTitle = 'OK',
      required VoidCallback action}) {
    showDialog(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                action();
                Navigator.of(context).pop();
              },
              child: Text(actionButtonTitle),
            ),
            TextButton(
              onPressed: () {
                // Close the alert dialog
                Navigator.of(context).pop();
              },
              child: Text('Cancel'.i18n),
            ),
          ],
        );
      },
    );
  }

  void showAlertDialogWithoutAction(
      {required String title, required String content}) {
    showDialog(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: () {
                // Close the alert dialog
                Navigator.of(context).pop();
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void showPremiumFeatureDialog(
      BuildContext context, int currentToken, int deductToken) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Premium feature'.i18n),
          content: Text(
            '${'This function is for premium users only.'.i18n}\n'
            '${'Each message will deduct'.i18n} $deductToken token.\n\n'
            '${'Your current tokens'.i18n}: $currentToken',
          ),
          actions: <Widget>[
            TextButton(
              child: const Text('OK'),
              onPressed: () {
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }

  void showLoadingAlertDialog(
      {required String title, required String content}) {
    showDialog(
      context: this,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text(title),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              FlickrLoadingIndicator(content: content),
            ],
          ),
        );
      },
    );
  }

  void showSnackBar({required String content}) =>
      ScaffoldMessenger.of(this).showSnackBar(
        SnackBar(
          backgroundColor: theme.colorScheme.inverseSurface,
          content: Text(
            content,
            style: theme.textTheme.bodyMedium
                ?.copyWith(color: theme.colorScheme.onInverseSurface),
          ),
        ),
      );
}
