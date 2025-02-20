import 'package:fluttertoys/src/presentation/presentation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class BlocProviderScope extends StatelessWidget {
  final Widget child;
  const BlocProviderScope({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<SettingBloc>(create: (context) => SettingBloc()),
      ],
      child: child,
    );
  }
}
