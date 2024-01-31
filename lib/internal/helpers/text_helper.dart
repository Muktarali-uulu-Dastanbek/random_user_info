import 'package:flutter/material.dart';
import 'package:tapbarr_exemple/internal/helpers/theme_helper.dart';

abstract class TextHelper {
  static TextStyle w600s12 = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.w600,
    color: ThemeColor.colorText,
  );

  static TextStyle w600s14 = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    color: ThemeColor.colorText,
  );

  static TextStyle w600s16 = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    color: ThemeColor.colorText,
  );
}
