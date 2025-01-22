import 'package:flutter/material.dart';

extension StringExtension on String {
  String lcfirst() {
    if (trim().isEmpty) return this;
    final index = indexOf(RegExp(r'\S'));
    return replaceCharAt(index, this[index].toLowerCase());
  }

  String replaceCharAt(int index, String newChar) {
    return substring(0, index) + newChar + substring(index + 1);
  }

  int toInt() {
    return int.parse(this);
  }

  ThemeMode toThemeMode() {
    switch (toLowerCase()) {
      case 'dark':
        return ThemeMode.dark;
      case 'light':
        return ThemeMode.light;
      case 'system':
        return ThemeMode.system;
      default:
        throw Exception('ThemeMode not recognized: $this.');
    }
  }

  String ucfirst() {
    if (trim().isEmpty) return this;
    final index = indexOf(RegExp(r'\S'));
    return replaceCharAt(index, this[index].toUpperCase());
  }
}
