import 'package:flutter/material.dart';
const Map<int, Color> color =
{
  50:Color.fromRGBO(136,14,79, .1),
  100:Color.fromRGBO(136,14,79, .2),
  200:Color.fromRGBO(136,14,79, .3),
  300:Color.fromRGBO(136,14,79, .4),
  400:Color.fromRGBO(136,14,79, .5),
  500:Color.fromRGBO(136,14,79, .6),
  600:Color.fromRGBO(136,14,79, .7),
  700:Color.fromRGBO(136,14,79, .8),
  800:Color.fromRGBO(136,14,79, .9),
  900:Color.fromRGBO(136,14,79, 1),
};


const MaterialColor primaryColor = MaterialColor(0xFFB824F1, color);
const MaterialColor backgroundColor = MaterialColor(0xFFF2F2F2, color);


/// Banner Indicator Color Style
Map<String, MaterialColor> bannerIndicatorColorStyle = {
  'disabled': MaterialColor(0xFFA7A7A7, color),
  'enabled': MaterialColor(0xFF179AFD, color),
};


