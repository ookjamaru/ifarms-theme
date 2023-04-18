part of '../ifarms_theme.dart';

class IFColor {
  Color black = const Color(0xFF332C2B); //#332C2B
  Color blue = const Color(0xFF3473AE); //#3473AE
  Color lightGrey = const Color(0xFFDFDFDF); //#DFDFDF
  Color grey = const Color(0xFFA0A0A0); //#A0A0A0
  Color white = const Color(0xFFFFFFFF); //#FFFFFF
  Color green = const Color(0xFF479553); //#479553
  Color darkGrey = const Color(0xFF7D7D7D); //#7D7D7D
  Color lightGreen = const Color(0xFF8FBB5A); //#8FBB5A
  Color yellow = const Color(0xFFFFBE00); //#FFBE00
  Color orange = const Color(0xFFDB7F43); //#DB7F43
  Color red = const Color(0xFFE54646); //#E54646
  MaterialColor useMaterialColor(Color color) {
    final int red = color.red;
    final int green = color.green;
    final int blue = color.blue;
    final Map<int, Color> shades = {
      50: Color.fromRGBO(red, green, blue, .1),
      100: Color.fromRGBO(red, green, blue, .2),
      200: Color.fromRGBO(red, green, blue, .3),
      300: Color.fromRGBO(red, green, blue, .4),
      400: Color.fromRGBO(red, green, blue, .5),
      500: Color.fromRGBO(red, green, blue, .6),
      600: Color.fromRGBO(red, green, blue, .7),
      700: Color.fromRGBO(red, green, blue, .8),
      800: Color.fromRGBO(red, green, blue, .9),
      900: Color.fromRGBO(red, green, blue, 1),
    };
    return MaterialColor(color.value, shades);
  }
}
