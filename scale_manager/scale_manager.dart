library scale_manager;

import 'package:flutter/material.dart';

class ScaleManager {
  /// Basic [BuildContext] of your app
  final BuildContext context;

  /// Device mockup width used in Figma
  /// PS: Hover on any Figma mockup screen to get it
  final double kMockupWidth;

  ScaleManager({
    @required this.context,
    @required this.kMockupWidth,
  });

  /// Returns the current [deviceWidth] fetched via [MediaQuery]
  double get deviceWidth => MediaQuery.of(context).size.width;

  /// Returns the calculated [imageFactor] which should be used in Image parts
  double get imageFactor => kMockupWidth / deviceWidth;

  /// Returns the calculated [textScaleFactor] which should be used in Text styling
  double get textScaleFactor => deviceWidth / kMockupWidth;

  /// Returns the calculated [spaceScale] which should be used in
  /// places like Padding or Margin values, SizedBox values or other const places
  double spaceScale({@required double space}) =>
      space / kMockupWidth * deviceWidth;
}
