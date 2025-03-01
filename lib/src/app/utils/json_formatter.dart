import 'dart:convert';

import 'package:dak_solutions_common/dak_solutions_common.dart';

class JsonHandler {
// Function to prettify the JSON
  static String formatJson(String rawJson) {
    try {
      // Parse the JSON
      final decodedJson = json.decode(rawJson);

      // Convert the decoded JSON back to a pretty format with indentation
      final prettyJson =
          const JsonEncoder.withIndent('  ').convert(decodedJson);

      return prettyJson;
    } catch (error) {
      DebugLog.error("Invalid JSON format: $error");
      return rawJson;
    }
  }
}
