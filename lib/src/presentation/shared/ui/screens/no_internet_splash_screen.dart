import 'package:fluttertoys/src/core/core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class NoInternetApp extends StatelessWidget {
  const NoInternetApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: NoInternetScreen(),
    );
  }
}

class NoInternetScreen extends StatelessWidget {
  const NoInternetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _showNoInternetDialog(context);
    });

    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(child: Text('No internet connection.'.i18n)),
    );
  }

  void _showNoInternetDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('No Internet'.i18n),
        content: Text('Please check your internet connection or update your app if this bug persists.'.i18n),
        actions: [
          TextButton(
            onPressed: () {
              SystemNavigator.pop();
            },
            child: const Text('OK'),
          ),
        ],
      ),
      barrierDismissible: false,
    );
  }
}
