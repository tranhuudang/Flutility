import 'package:flutter/material.dart';

extension StringExtenstion on String {
  Locale toLocale() {
    switch (this) {
      case 'English':
        return const Locale('en', 'US');
      case 'Tiếng Việt':
        return const Locale('vi', 'VI');
      case '中国':
        return const Locale('zh', 'CN');
      case 'System default':
        return WidgetsBinding.instance.platformDispatcher.locale;
      default:
        return WidgetsBinding.instance.platformDispatcher.locale;
    }
  }

  int numberOfWord() {
    if (isEmpty) return 0;
    // Split the sentence into words using whitespace as the delimiter
    List<String> words = split(' ');
    // Remove any leading or trailing whitespaces from each word
    words = words.map((word) => word.trim()).toList();
    // Remove any empty words (resulting from multiple spaces)
    words = words.where((word) => word.isNotEmpty).toList();
    // Return the count of words
    return words.length;
  }

  String removeSpecialCharacters() {
    RegExp regExp = RegExp(r"[^\p{L}\p{N}']+", unicode: true);
    var output = replaceAll('\'', '');
    output = output.replaceAll(regExp, '');
    return output;
  }

  String upperCaseFirstLetter() {
    if (isEmpty) {
      return this; // Return the original string if it's empty
    }
    var output =
        '${substring(0, 1).toUpperCase()}${substring(1).toLowerCase()}';
    return output;
  }

  /// Get the first letter in a Word
  String getFirstLetter() {
    return substring(0, 1);
  }

  int numberOfLine() {
    return split('\n').length;
  }
}
