// ignore_for_file: unused_element
part of '../ifarms_theme.dart';

class IFUtils {
  bool isNumericOnly(String s) => _hasMatch(s, r'^\d+$');
  bool isAlphabetOnly(String s) => _hasMatch(s, r'^[a-zA-Z]+$');
  bool isLengthEqualTo(dynamic value, int otherLength) {
    final length = _obtainDynamicLength(value);
    if (length == null) {
      return false;
    }

    return length == otherLength;
  }

  static bool _hasMatch(String? value, String pattern) {
    return (value == null) ? false : RegExp(pattern).hasMatch(value);
  }

  static int? _obtainDynamicLength(dynamic value) {
    if (value == null) {
      return null;
    }
    if (_hasLength(value)) {
      return value.length as int?;
    }
    if (value is int) {
      return value.toString().length;
    }
    if (value is double) {
      return value.toString().replaceAll('.', '').length;
    }
    return null;
  }

  static bool _hasLength(dynamic value) {
    return value is Iterable || value is String || value is Map;
  }
}
