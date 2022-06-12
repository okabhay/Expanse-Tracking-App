import 'package:flutter/material.dart';

class XScreenSize {
  static double screenWidth(BuildContext context) => MediaQuery.of(context).size.width;
  static double screenHeight(BuildContext context) => MediaQuery.of(context).size.height;
  static double screenHeightPercentage(BuildContext context, {double percentage = 1}) => screenHeight(context) * percentage;
  static double screenWidthPercentage(BuildContext context, {double percentage = 1}) => screenWidth(context) * percentage;
}