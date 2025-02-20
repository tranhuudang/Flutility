import 'package:fluttertoys/bloc_provider_scope.dart';
import 'package:window_manager/window_manager.dart';
import 'package:fluttertoys/src/core/core.dart';
import 'package:fluttertoys/src/presentation/presentation.dart';
import 'package:windows_status_bar/windows_status_bar.dart';
import 'app.dart';
part 'initializer.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await _Initializer.start();
  runApp(
    const BlocProviderScope(
      child: App(),
    ),
  );
}
