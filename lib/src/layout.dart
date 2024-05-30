import 'package:flutter/material.dart';

// This functions are responsible to make UI responsive across all the mobile devices.
MediaQueryData mediaQuery = MediaQueryData.fromView(WidgetsBinding.instance.platformDispatcher.views.single);
//MediaQueryData mediaQueryData = MediaQueryData.fromWindow(ui.window);

const num designWidth = 360;

const num designHeight = 800;

const num designStatusBar = 0;

extension ResponsiveExtension on num {
  get _deviceWidth => mediaQuery.size.width;

  get _deviceHeight {
    num statusBar = mediaQuery.viewPadding.top;
    num bottomBar = mediaQuery.viewPadding.bottom;
    num screenHeight = mediaQuery.size.height - statusBar - bottomBar;

    return screenHeight;
  }

  get _figmaHeight {
    num figmaHeight = designHeight - designStatusBar;

    return figmaHeight;
  }

  get _figmaWidth {
    num figmaWidth = designWidth;

    return figmaWidth;
  }

  ///This method is used to set padding/margin (for the left and Right side) & width of the screen or widget according to the Viewport width.
  double get w => ((this * _deviceWidth) / _figmaWidth);

  ///This method is used to set padding/margin (for the top and bottom side) & height of the screen or widget according to the Viewport height.
  double get h => ((this * _deviceHeight) / _figmaHeight);

  ///This method is used to set smallest px in image height and width
  double get adaptSize => h < w ? h.toDoubleValue() : w.toDoubleValue();

  ///This method is used to set text font size according to Viewport
  double get fSize => adaptSize;
}

extension FormatExtension on double {
  double toDoubleValue({int fractionDigits = 2}) {
    return double.parse(toStringAsFixed(fractionDigits));
  }
}
