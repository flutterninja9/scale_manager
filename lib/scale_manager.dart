library scale_manager;

import 'package:flutter/cupertino.dart';

class ScaleManager {
  final BuildContext context;
  final double kMockupWidth;

  ScaleManager({
    @required this.context,
    @required this.kMockupWidth,
  });

  double get deviceWidth => MediaQuery.of(context).size.width;

  double get imageFactor => kMockupWidth / deviceWidth;
  double get textScaleFactor => deviceWidth / kMockupWidth;
  double spaceScale({@required double space}) =>
      space / kMockupWidth * deviceWidth;
}
