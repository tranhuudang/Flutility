import 'package:envied/envied.dart';

part 'env.g.dart';

@Envied(path: 'openai_api.env')
abstract class Env {
  // dart run build_runner build

  @EnviedField(varName: 'PREMIUM_TOKEN', obfuscate: true)
  static final String premiumToken = _Env.premiumToken;

  @EnviedField(varName: 'API_MASTER_KEY', obfuscate: true)
  static final String apiMasterKey = _Env.apiMasterKey;
}