import 'package:books_app/utility/u_color.dart';
import 'package:flutter/material.dart';

mixin UFont {
  static TextStyle h1 = TextStyle(fontSize: 30, fontWeight: FontWeight.normal, color: UColor.white);
  static TextStyle h1Black = const TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black);
  static TextStyle title = TextStyle(fontSize: 20, fontWeight: FontWeight.normal, color: UColor.yankeesBlue);
  static TextStyle desciption = TextStyle(fontSize: 15, fontWeight: FontWeight.normal, color: UColor.grey);
}
