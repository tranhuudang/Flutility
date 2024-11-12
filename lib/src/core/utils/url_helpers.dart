import 'package:http/http.dart' as http;
class UrlHelpers{
  static String? extractLink(String text) {
    final RegExp regex = RegExp(
      r'http[s]?://(?:[a-zA-Z]|[0-9]|[$-_@.&+]|[!*\\(\\),]|(?:%[0-9a-fA-F][0-9a-fA-F]))+',
      caseSensitive: false,
    );

    final match = regex.firstMatch(text);
    if (match != null) {
      return match.group(0);
    }
    return null;
  }

  static Future<String?> getIP() async {
    try {
      const url = 'https://api.ipify.org';
      var response = await http.get(Uri.parse(url));
      if (response.statusCode == 200) {
        return response.body;
      } else {
        return null;
      }
    } catch (exception) {
      return null;
    }
  }
}