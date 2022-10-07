import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class Styles {
  static TextStyle get heading1 => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w600,
      );
  static TextStyle get heading2 => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get heading3 => const TextStyle(
        fontSize: 14, fontWeight: FontWeight.w700);
  static TextStyle get heading4 => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
      );
  static TextStyle get body => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w300,
      );
  static TextStyle get itemTitle => const TextStyle(
      fontSize: 20, fontWeight: FontWeight.w500, fontStyle: FontStyle.normal);
  static TextStyle get itemPrice =>
      const TextStyle(fontSize: 15, fontWeight: FontWeight.w400);
}
