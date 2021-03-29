// 'dart:math' is used to get access to the Random class
import 'dart:math';
import 'package:flutter/material.dart';

// class with a static method of color generation that can be reused within the app
class AppUtils {
  static Color getRandomColor() {
    final randomColor =
    Colors.primaries[Random().nextInt(Colors.primaries.length)];
    return randomColor;
  }
}