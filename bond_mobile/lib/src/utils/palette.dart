import 'package:flutter/material.dart';

class Palette {
  static MaterialColor dark =
      MaterialColor(const Color(0xff090A0A).value, const {
    10: Color(0xff72777A),
    40: Color(0xff404446),
    60: Color(0xff303437),
    80: Color(0xff202325),
    100: Color(0xff090A0A),
  });
  static Color inkDarker = const Color(0xff202325);
  static Color skyDark = const Color(0xff979C9E);
  static const transparent = Colors.transparent;
  static Color inkLight = const Color(0xff6C7072);
  static Color white = const Color(0xffffffff);
  static Color black = const Color(0xff000000);
  static MaterialColor primary =
      MaterialColor(const Color(0xffDCAE52).value, const {
    10: Color(0xffFFF1D4),
    20: Color(0xffEEC36D),
    40: Color(0xffF9D183),
    80: Color(0xffB58527),
    100: Color(0x000000ff),
  });
  static Color cancel = const Color(0xff0A84FF);
  static Color removeCard = const Color(0xffFF453A);

  // static Color green = const Color(0xff23c16b);

  static MaterialColor gray =
      MaterialColor(const Color(0xff979c9e).value, const {
    10: Color(0xffF7F9FA),
    20: Color(0xffF2F4F5),
    40: Color(0xffE3E5E6),
    60: Color(0xffCDCFD0),
    80: Color(0xff979C9E),
  });
  static MaterialColor yellow =
      MaterialColor(const Color(0xffA05E03).value, const {
    20: Color(0xffFFD188),
    60: Color(0xffffb323),
    80: Color(0xffA05E03),
  });

  static const MaterialColor red = MaterialColor(
    0xFFFF5247,
    {
      100: Color(0xffB0010D),
      80: Color(0xFFD3180C),
      40: Color(0xFFFF6D6D),
      20: Color(0xFFFF9898),
      10: Color(0xFFFFE5E5),
    },
  );

  static const MaterialColor green = MaterialColor(
    0xFF23C16B,
    {
      80: Color(0xFF198155),
      40: Color(0xFF4CD571),
      20: Color(0xFF7DDE86),
      15: Color(0xFFb9ff9f),
      10: Color(0xFFECFCE5),
    },
  );

  static const MaterialColor blue = MaterialColor(
    0xFF23C16B,
    {
      80: Color(0xFF0065D0),
      60: Color(0xFF48A7F8),
      20: Color(0xFF9BDCFD),
    },
  );

  static const MaterialColor grey = MaterialColor(
    0xFFCDCFD0,
    {
      100: Color(0xFF979C9E),
      80: Color(0xFFE3E5E5),
      40: Color(0xFFF2F4F5),
      20: Color(0xFFF7F9FA)
    },
  );

  static const Color light = Colors.white;
  static const Color danger = Color(0xFFBA000D);
  static const Color info = Color(0xFF006978);
  static const Color warning = Color(0xFFE1980C);
  static const Color primo = Color(0xFF005B9F);
  static const Color indigo = Color(0xFF673AB7);
  static const Color bordo = Color(0xFFA00037);
  static const Color orange = Color(0xFFFFCA75);

  static const ColorSwatch blackSwatch = ColorSwatch(
    80,
    <int, Color>{
      100: Color(0xFF090A0A),
      80: Color(0xFF303437),
      40: Color(0xFF404446),
      20: Color(0xFF6C7072)
    },
  );

  static List<Color> sessionColors = const [
    Color(0xFFBA000D),
    Color(0xFF006978),
    Color(0xFFE1980C),
    Color(0xFF673AB7),
    Color(0xFFA00037),
    Color(0xFF00766C),
    Color(0xFF00600F),
    Color(0xFFBC5100)
  ];

  static const LinearGradient shimmerGradient = LinearGradient(
    colors: [
      Color(0xFFEBEBF4),
      Color(0xFFF4F4F4),
      Color(0xFFEBEBF4),
    ],
    stops: [
      0.1,
      0.3,
      0.4,
    ],
    begin: Alignment(-1.0, -0.3),
    end: Alignment(1.0, 0.3),
    tileMode: TileMode.clamp,
  );
}
