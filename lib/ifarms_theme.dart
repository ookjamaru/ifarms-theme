library ifarms_theme;

export 'package:flutter_svg/flutter_svg.dart';
export 'package:flutter_screenutil/flutter_screenutil.dart';
export 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'ifarms_theme.dart';
part 'src/ifarms_textstyles.dart';
part 'src/ifarms_colors.dart';
part 'src/ifarms_buttons.dart';
part 'src/ifarms_dialogs.dart';
part 'src/ifarms_bottomsheet.dart';
part 'src/ifarms_chip.dart';
part 'src/ifarms_input.dart';
part 'src/ifarms_utils.dart';
part 'src/ifarms_assets.dart';

enum ButtonType {
  primary,
  warning,
  danger,
  success,
  outline,
  outlineGreen,
  outlineRed,
  text,
  disabled,
}

enum ButtonMode {
  common,
  circle,
  rounded,
  iconLabel,
  large,
  text,
}

enum MandatoryStatus {
  required,
  optional,
  etc,
}

enum ButtonIconPosition {
  left,
  right,
  center,
}

enum DialogType {
  primary,
  info,
  warning,
  danger,
  noAction,
}

enum SuffixType {
  svg,
  text,
  widget,
  noSuffix,
}

enum PrefixType {
  svg,
  text,
  widget,
  noSuffix,
}

enum DialogIconType {
  svg,
  widget,
  none,
}

class IFTheme {
  IFTheme._internal();
  static final _singleton = IFTheme._internal();
  factory IFTheme() => _singleton;
  static IFTextStyles textStyle = IFTextStyles();
  static IFColor color = IFColor();
  static String fontName = 'DM Sans';
  static IFButton button = IFButton();
  static IFDialog dialog = IFDialog();
  static IFChip chip = IFChip();
  static IFInput input = IFInput();
  static IFFormValidator validator = IFFormValidator();
  static IFUtils utils = IFUtils();
  static IFAssets assets = IFAssets();
}

class IFFormValidator {
  dynamic nikValidator(String s) {
    if (s.isEmpty) {
      return 'NIK harus diisi';
    }
    if (!IFTheme.utils.isNumericOnly(s)) {
      return 'NIk hanya boleh berisi angka';
    }
    if (!IFTheme.utils.isLengthEqualTo(s, 16)) {
      return 'NIK harus 16 angka';
    }
    return null;
  }
}
