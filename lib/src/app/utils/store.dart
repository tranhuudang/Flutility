import 'package:dak_solutions_common/dak_solutions_common.dart';
import 'package:url_launcher/url_launcher.dart';

void goToStoreListing() async {
  late Uri url;
  if (isWindows) {
    url = Uri.parse('ms-windows-store://pdp/?productid=9nm16zpqh6bz');
  } else {
    url = Uri.parse('https://github.com/tranhuudang/flutter_toolkit');
  }
  if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $url');
  }
}

void goToBugReport() async {
  final Uri url =
      Uri.parse('https://github.com/tranhuudang/flutter_toolkit/issues');
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}
