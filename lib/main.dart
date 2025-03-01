import 'package:dak_solutions_common/dak_solutions_common.dart';
import 'package:flutility/bloc_provider_scope.dart';
import 'package:window_manager/window_manager.dart';
import 'package:flutility/src/app/app.dart';
import 'package:flutility/src/presentation/presentation.dart';
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
