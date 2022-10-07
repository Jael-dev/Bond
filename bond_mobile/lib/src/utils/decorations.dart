import 'package:bond_mobile/src/utils/palette.dart';
import 'package:flutter/material.dart';

class Decorations {
  static BoxDecoration get transperentButton => BoxDecoration(
      borderRadius: BorderRadius.circular(25),
      border: Border.all(color: Palette.gray, width: 1));
  static BoxDecoration get orderSummaryBox => BoxDecoration(
      borderRadius: BorderRadius.circular(5),
      border: Border.all(color: Palette.grey, width: 1));
  static BoxDecoration get orderSummaryBoxHeader => BoxDecoration(
        color: Palette.gray[40],
      );
  static BoxDecoration get countDownTimer => BoxDecoration(
        color: Palette.danger,
        borderRadius: BorderRadius.circular(15),
      );
  static BoxDecoration get discountChip => BoxDecoration(
        color: Palette.dark,
        borderRadius: BorderRadius.circular(4),
      );

  static InputDecoration inputBoxDecoration(String hint, IconData? icon) =>
      InputDecoration(
        hintText: hint,
        labelStyle: TextStyle(color: Palette.dark),
        prefixIcon: icon != null
            ? Icon(
                icon,
                color: Palette.dark,
              )
            : null,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(6),
          borderSide: BorderSide(
            color: Palette.dark,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Palette.dark),
          borderRadius: BorderRadius.circular(6),
        ),
        contentPadding:
            const EdgeInsets.only(left: 15, bottom: 11, top: 11, right: 15),
      );
}
