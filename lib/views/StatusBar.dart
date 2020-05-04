import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBar {
  static void setTransparentStatusBar() {
    SystemUiOverlayStyle uiOverlayStyle = new SystemUiOverlayStyle(
      systemNavigationBarColor: Color(0xFF000000),
      systemNavigationBarDividerColor: null,
      statusBarColor: Colors.transparent,
      systemNavigationBarIconBrightness: Brightness.light,
      statusBarIconBrightness: Brightness.dark,
      statusBarBrightness: Brightness.light,
    );

    SystemChrome.setSystemUIOverlayStyle(uiOverlayStyle);
  }
}
