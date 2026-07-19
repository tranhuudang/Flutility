import 'dart:io';
import 'dart:convert';

void main() async {
  final file = File('lib/src/app/localization/i18n.dart');
  final content = await file.readAsString();

  final regex = RegExp(r"(?:'|\x22)(.*?)(?:'|\x22)\s*:\s*\{([^}]+)\}");
  final matches = regex.allMatches(content);

  final en = <String, String>{};
  final vi = <String, String>{};
  // ARB headers
  en['@@locale'] = 'en';
  vi['@@locale'] = 'vi';

  int i = 0;
  for (final match in matches) {
    String originalKey = match.group(1)!;
    String dict = match.group(2)!;
    
    // Ignore empty translations which might be templates
    if (originalKey.trim().isEmpty) continue;
    if (dict.contains('"en-US": ""')) continue;
    
    // Extract each translation
    String? getVal(String key) {
      final r = RegExp("(?:'|\x22)$key(?:'|\x22)\\s*:\\s*(?:'|\x22)(.*?)(?:'|\x22)");
      final m = r.firstMatch(dict);
      return m?.group(1);
    }
    
    String enVal = getVal('en-US') ?? originalKey;
    String viVal = getVal('vi-VN') ?? originalKey;

    // We need to convert originalKey to a valid dart variable name
    String camelKey = toCamelCase(originalKey);
    // In case of duplicates or empty, ensure unique valid keys
    if (camelKey.isEmpty) camelKey = 'key$i';
    // ensure starts with lowercase
    camelKey = camelKey[0].toLowerCase() + camelKey.substring(1);
    // ensure no invalid characters
    camelKey = camelKey.replaceAll(RegExp(r'[^a-zA-Z0-9]'), '');
    
    if (camelKey == 'continue') camelKey = 'continueLabel';
    if (camelKey == 'default') camelKey = 'defaultLabel';
    
    // Append suffix if duplicate
    int suffix = 1;
    String baseKey = camelKey;
    while(en.containsKey(camelKey)) {
      camelKey = '$baseKey$suffix';
      suffix++;
    }

    en[camelKey] = enVal;
    vi[camelKey] = viVal;
    
    i++;
  }
  
  await Directory('lib/l10n').create(recursive: true);
  await File('lib/l10n/intl_en.arb').writeAsString(JsonEncoder.withIndent('  ').convert(en));
  await File('lib/l10n/intl_vi.arb').writeAsString(JsonEncoder.withIndent('  ').convert(vi));
  
  print('Generated ${en.length - 1} translation keys.');
}

String toCamelCase(String text) {
  text = text.replaceAll(RegExp(r'[^\w\s]'), ' ');
  List<String> words = text.split(RegExp(r'\s+')).where((e) => e.isNotEmpty).toList();
  if (words.isEmpty) return 'key';
  
  String result = words[0].toLowerCase();
  for (int i = 1; i < words.length; i++) {
    result += words[i][0].toUpperCase() + words[i].substring(1).toLowerCase();
  }
  return result;
}
