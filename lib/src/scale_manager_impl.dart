import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class ScaleManager {
  static late Size deviceBlockSize;
  static late double heightMultiplier;
  static late double imageSizeMultiplier;
  static bool isMobilePortrait = false;
  static bool isPortrait = true;
  static late double textMultiplier;
  static late double widthMultiplier;

  static double _blockHeight = 0;
  static double _blockWidth = 0;
  static late double _screenHeight;
  static late double _screenWidth;

  void init(
      BoxConstraints constraints, Orientation orientation, Size mockupSize) {
    if (orientation == Orientation.portrait) {
      _screenWidth = mockupSize.width;
      _screenHeight = mockupSize.height;
      isPortrait = true;
      if (_screenWidth < 450) {
        isMobilePortrait = true;
      }
    } else {
      _screenWidth = mockupSize.height;
      _screenHeight = mockupSize.width;
      isPortrait = false;
      isMobilePortrait = false;
    }

    _blockWidth = _screenWidth / 100;
    _blockHeight = _screenHeight / 100;

    textMultiplier = _blockHeight;
    imageSizeMultiplier = _blockWidth;
    heightMultiplier = _blockHeight;
    widthMultiplier = _blockWidth;
    deviceBlockSize = Size(_blockWidth, _blockHeight);
  }
}
