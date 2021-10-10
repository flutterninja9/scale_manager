import 'package:flutter/material.dart';
import 'package:scale_manager/scale_manager.dart';

final Size defaultDeviceBlockSize = ScaleManager.deviceBlockSize;

extension ScaleText on num {
  // Use for Text Sizing
  double get ts {
    return this / defaultDeviceBlockSize.height * ScaleManager.textMultiplier;
  }

  // Use for Image/Icon Sizing
  double get ims {
    return this /
        defaultDeviceBlockSize.width *
        ScaleManager.imageSizeMultiplier;
  }

  // Use for Height Sizing
  double get h {
    return this / defaultDeviceBlockSize.height * ScaleManager.heightMultiplier;
  }

  // Use for Width Sizing
  double get w {
    return this / defaultDeviceBlockSize.width * ScaleManager.widthMultiplier;
  }
}
