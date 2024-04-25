import 'package:flutter/material.dart';

const red = Color.fromARGB(255, 248, 130, 121);
const white = Colors.white;
const black = Colors.black;
const blue = Colors.blue;
const yellow = Color.fromARGB(255, 255, 151, 5);
const lightyellow = Color.fromARGB(63, 247, 177, 79);
const grey = Colors.grey;
const lightgrey = Color.fromARGB(44, 190, 190, 190);
const buttonborder = Color.fromARGB(158, 190, 190, 190);
const darkbgcolor = Color.fromARGB(240, 49, 50, 63);

class SizeConfig {
  static late MediaQueryData _mediaQueryData;
  static late double screenWidth;
  static late double screenHeight;

  static void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
  }
}

const imageurl =
    "https://images.pexels.com/photos/2899097/pexels-photo-2899097.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500";
