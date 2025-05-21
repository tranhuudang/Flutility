import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:marina_labs_common/marina_labs_common.dart';
import 'package:flutility/bloc_provider_scope.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutility/src/features/presentation.dart';
import 'package:windows_status_bar/windows_status_bar.dart';
import 'app.dart';
import 'firebase_options.dart';
part 'initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _Initializer.start();
  runApp(
    const BlocProviderScope(
      child: ProviderScope(child: App()),
    ),
  );
}
