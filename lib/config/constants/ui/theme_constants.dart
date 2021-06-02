import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

/// Const colors
const default_gradient_start = Color(0xFFEBEEF2);
const default_gradient_end = Color(0xFFC3C6C9);

class DefaultColors {
  Color get gradientStart => default_gradient_start;
  Color get gradientEnd => default_gradient_end;
}

abstract class MyTheme {
  final DefaultColors colorSet;

  MyTheme({required this.colorSet});

  BoxDecoration get background => BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorSet.gradientStart,
            colorSet.gradientEnd
          ]));


  String get name;
}

class DefaultTheme extends MyTheme {
  DefaultTheme() : super(colorSet: DefaultColors());

  @override
  String get name => 'Default';
}

class MyThemeController extends GetxController {

  final Rx<MyTheme> _theme = _defaultTheme.obs;
  MyTheme get theme => _theme.value;

  static final MyTheme _defaultTheme = DefaultTheme();

  ThemeData get themeData => ThemeData(

  );

  BoxDecoration get background => theme.background;
}