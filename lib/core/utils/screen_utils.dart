import 'dart:ui';

import 'package:flutter/material.dart';

import '../constants/enums.dart';

class ScreenUtils {
  SizeType deviceSize;
  BuildContext context;
  double textScaleFactor = 1.0;

  ScreenUtils({
    required this.deviceSize,
    required this.context,
  }) {
    _detechDeviceSize();
    textScaleFactor = MediaQuery.of(context).textScaleFactor;
  }

  final Map<SizeType, double> _deviceSizeRateMultipliers = {
    SizeType.xxSmall: 0.70,
    SizeType.xSmall: 0.80,
    SizeType.small: 0.83,
    SizeType.middle: 0.85,
    SizeType.large: 0.90,
    SizeType.xLarge: 0.95,
    SizeType.xxLarge: 1.00,
    SizeType.ultra: 1.15,
    SizeType.mega: 1.50
  };

  final Map<SizeType, double> _fontOrFontSizeRateMultipliers = {
    SizeType.xxSmall: 1.25,
    SizeType.xSmall: 1.30,
    SizeType.small: 1.35,
    SizeType.middle: 1.37,
    SizeType.large: 1.40,
    SizeType.xLarge: 1.43,
    SizeType.xxLarge: 1.45,
    SizeType.ultra: 1.47,
    SizeType.mega: 1.50
  };

  final Map<SizeType, double> _deviceFontSizes = {
    SizeType.tiny: 10,
    SizeType.xxSmall: 12,
    SizeType.xSmall: 14,
    SizeType.small: 16,
    SizeType.middle: 18,
    SizeType.large: 20,
    SizeType.xLarge: 22,
    SizeType.xxLarge: 24,
    SizeType.ultra: 26,
    SizeType.mega: 35
  };

  final Map<SizeType, double> _deviceIconSizes = {
    SizeType.tiny: 12,
    SizeType.xxSmall: 16,
    SizeType.xSmall: 18,
    SizeType.small: 20,
    SizeType.middle: 22,
    SizeType.large: 24,
    SizeType.xLarge: 26,
    SizeType.xxLarge: 28,
    SizeType.ultra: 28,
    SizeType.mega: 37
  };

  _detechDeviceSize() {
    double width = window.physicalSize.width;
    double height = window.physicalSize.height;

    print("$width * $height");
    if (width <= 240) {
      deviceSize = SizeType.xxSmall;
    } else if (width <= 360) {
      deviceSize = SizeType.xSmall;
    } else if (width <= 480) {
      deviceSize = SizeType.small;
    } else if (width <= 540) {
      deviceSize = SizeType.middle;
    } else if (width <= 720) {
      deviceSize = SizeType.large;
    } else if (width <= 900) {
      deviceSize = SizeType.xLarge;
    } else if (width <= 1080) {
      deviceSize = SizeType.xxLarge;
    } else if (width <= 1440) {
      deviceSize = SizeType.ultra;
    } else {
      deviceSize = SizeType.mega;
    }
    print("$width $deviceSize");
  }

  get _sizeFontMultiplier {
    deviceSize = SizeType.middle;
    return textScaleFactor * _fontOrFontSizeRateMultipliers[deviceSize]!;
  }

  get _deviceSizeMultiplier {
    deviceSize = SizeType.mega;
    return _deviceSizeRateMultipliers[deviceSize];
  }

  double getIconSize(SizeType type) {
    return convertToDeviceSize(_deviceIconSizes[type]!) *
        _fontOrFontSizeRateMultipliers[deviceSize]!;
  }

  double getFontSize(SizeType type) {
    return convertToDeviceSize(_deviceFontSizes[type]!) * _sizeFontMultiplier;
  }

  double convertToDeviceSize(double size) {
    return size * _deviceSizeMultiplier;
  }
}
