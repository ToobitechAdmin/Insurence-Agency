import 'package:flutter/cupertino.dart';

TextStyle getregular(double fontsize, Color color) {
  return TextStyle(
      color: color, fontSize: fontsize, fontFamily: 'skuufrregular');
}

TextStyle getbold(double fontsize, Color color) {
  return TextStyle(color: color, fontSize: fontsize, fontFamily: 'skuufrbold');
}

TextStyle getmedium(double fontsize, Color color) {
  return TextStyle(
      color: color,
      fontSize: fontsize,
      fontFamily: 'skuufrregular',
      fontWeight: FontWeight.w500);
}
