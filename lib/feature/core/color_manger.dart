import 'package:flutter/cupertino.dart';

class ColorManager {
  ColorManager._();
  static final ColorManager instance = ColorManager._();

  final Color primaryColor = const Color(0xff00C569);
  final Color backgroundColor = const Color(0xFFFFFFFF);
  final Color blackColor = const Color(0xFF000000);
  final Color graykColor = const Color(0xFF929292);
  final Color borderColor = const Color(0xFFDDDDDD);
  final Color whiteColor = const Color(0xFFFFFFFF);

  final Color transparentColor = const Color(0x00000000);
}
