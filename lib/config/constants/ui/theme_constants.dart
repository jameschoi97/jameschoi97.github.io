import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

/// Const colors
const default_gradient_start = Color(0xFFEBEEF2);
const default_gradient_end = Color(0xFFC3C6C9);

const default_appbar = Color(0xFF64686B);
const default_appbar_selected = Color(0xFF484A4F);
const default_appbar_border = Color(0xFF32353C);
const default_appbar_hover_color = Color(0xFF929498);

const default_font_color = Color(0xFF212529);
const default_appbar_font_color = Color(0xFFCFD8DC);


class DefaultColors {
  Color get gradientStart => default_gradient_start;
  Color get gradientEnd => default_gradient_end;
  Color get appBar => default_appbar;
  Color get appBarSelected => default_appbar_selected;
  Color get appBarBorder => default_appbar_border;
  Color get fontColor => default_font_color;
  Color get appBarFontColor => default_appbar_font_color;
  Color get appBarHoverColor => default_appbar_hover_color;
}

class ResumeColors extends DefaultColors{
  @override
  Color get fontColor => Colors.black;
}

abstract class MyTheme {
  late final textTheme = TextTheme(
    headline1: TextStyle(color: colorSet.fontColor, fontSize: 96),
    headline2: TextStyle(color: colorSet.fontColor, fontSize: 60),
    headline3: TextStyle(color: colorSet.fontColor, fontSize: 48),
    headline4: TextStyle(color: colorSet.fontColor, fontSize: 34),
    headline5: TextStyle(color: colorSet.fontColor, fontSize: 24),
    headline6: TextStyle(color: colorSet.fontColor, fontSize: 20),
    subtitle1: TextStyle(color: colorSet.fontColor, fontSize: 16),
    subtitle2: TextStyle(color: colorSet.fontColor, fontSize: 14),
    bodyText1: TextStyle(color: colorSet.fontColor, fontSize: 16),
    bodyText2: TextStyle(color: colorSet.fontColor, fontSize: 14),
    button: TextStyle(color: colorSet.fontColor, fontSize: 14),
    caption: TextStyle(color: colorSet.fontColor, fontSize: 12),
    overline: TextStyle(color: colorSet.fontColor, fontSize: 10),
  );

  final DefaultColors colorSet;

  MyTheme({required this.colorSet});

  ThemeData get themeData => ThemeData(
      fontFamily: 'Montserrat',
      textTheme: textTheme,
      textButtonTheme: TextButtonThemeData(style: buttonStyle),

  );

  BoxDecoration get background => BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: [
            colorSet.gradientStart,
            colorSet.gradientEnd
          ]));

  ButtonStyle get buttonStyle => ButtonStyle(
      foregroundColor: MaterialStateProperty.all(colorSet.fontColor),
      padding: MaterialStateProperty.all(EdgeInsets.zero),
      minimumSize: MaterialStateProperty.all(Size.zero),
      overlayColor: MaterialStateProperty.all(
          Colors.lightBlue.withOpacity(0.15)));


  String get name;
}

class DefaultTheme extends MyTheme {
  DefaultTheme() : super(colorSet: DefaultColors());

  @override
  String get name => 'Default';
}

class ResumeTheme extends MyTheme {
  ResumeTheme() : super(colorSet: ResumeColors());

  @override
  String get name => 'Resume';

  @override
  ThemeData get themeData => ThemeData(
    fontFamily: 'TimesNewRoman',
    textTheme: textTheme,
  );

}

class MyThemeController extends GetxController {

  final Rx<MyTheme> _theme = _defaultTheme.obs;
  MyTheme get theme => _theme.value;

  static final MyTheme _defaultTheme = DefaultTheme();



  BoxDecoration get background => theme.background;
}