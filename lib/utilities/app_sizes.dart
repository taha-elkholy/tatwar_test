import 'package:flutter/material.dart';

class AppSizes {
  // Padding
  static const double padding4 = 4.0;
  static const double padding8 = 8.0;
  static const double padding16 = 16.0;
  static const double padding25 = 25.0;

  static double getCustomHorizontalPadding(context, value) =>
      MediaQuery.of(context).size.width * value;

  // Vertical & Horizontal Space
  static const double space8 = 8.0;
  static const double space14 = 14.0;
  static const double space16 = 16.0;
  static const double space40 = 40.0;
  static const double space50 = 50.0;

  // elevation
  static const double zeroElevation = 0.0;
  static const double elevation4 = 4.0;

  // Text Size
  static const double textSize12 = 12.0;
  static const double textSize14 = 14.0;
  static const double textSize15 = 15.0;
  static const double textSize16 = 16.0;
  static const double textSize18 = 18.0;
  static const double textSize19 = 19.0;
  static const double textSize35 = 35.0;

  // Icon Size
  static const double iconSize5 = 5.0;
  static const double iconSize11 = 11.0;
  static const double iconSize15 = 15.0;
  static const double iconSize16 = 16.0;
  static const double iconSize20 = 20.0;
  static const double iconSize38 = 38.0;
  static const double iconSize59 = 59.0;

  // widgets height
  static const double bottomSheetIndicatorHeight = 5.0;
  static const double bottomSheetIndicatorWidth = 36.0;
  static const double elevatedButtonHeight = 53.0;
  static const double chatItemMinHeight = 48.0;
  static const double horizontalListHeight = 120.0;
  static const double cardHeight = 242.0;
  static const double cardWidth = 185.0;

  // images
  static const double pathWidth = 236.0;
  static const double pathHeight = 256.0;
  static const double textPathHeight200 = 200.0;
  static const double botImageWidth = 241.0;
  static const double botImageHeight = 300.0;

  // Offsets
  static const double zeroOffset = 0;
  static const double offset15 = 15.0;
  static const double offset30 = 30.0;

  // Radius
  static const double radius8 = 8.0;
  static const double radius20 = 20.0;

  // Stroke Thickness
  static const double stroke05 = 0.5;

  // duration
  static const int duration200 = 200;
}
