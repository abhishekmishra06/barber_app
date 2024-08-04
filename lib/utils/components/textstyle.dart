import 'package:barber_app/utils/components/imports.dart';

class Textstyle {
  static const TextStyle black = TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
  );

  static const TextStyle hinttextcolor = TextStyle(
    color: grey,
    fontWeight: FontWeight.bold,
  );

  static TextStyle customstyle(
    Color customColor,
    double fontSize,
  ) {
    return TextStyle(
        color: customColor, fontWeight: FontWeight.bold, fontSize: fontSize);
  }
}
