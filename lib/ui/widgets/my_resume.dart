import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyResume extends StatelessWidget {
  final myName = 'James Choi';
  final myAddress = '303 E 5th St, New York, NY 10003';
  final myNumber = '(610) 392-3086';
  final myEmail = 'wc1414@nyu.edu';

  final double defaultFontSize = 16;

  @override
  Widget build(BuildContext context) {
    double convert(double originalValue) {
      var screenWidth = MediaQuery.of(context).size.width;
      return originalValue / 720 * screenWidth;
    }

    Widget makeSection(
        String title, List<Widget> children, EdgeInsetsGeometry? margin) {
      return Column(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          margin: margin == null ? EdgeInsets.zero : margin,
          decoration: BoxDecoration(
              border: Border(
                  bottom: BorderSide(
            color: Colors.black,
            width: convert(2),
          ))),
          child: TextBox(
            text: title,
            fontSize: convert(defaultFontSize),
            style: TextStyle(
              fontFamily: 'TimesNewRoman',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
        Column(
          children: children,
        )
      ]);
    }

    return Container(
        width: 210 * 4,
        height: 297 * 4,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextBox(
                text: myName,
                fontSize: convert(30),
                margin: EdgeInsets.only(top: convert(40), bottom: convert(10)),
                style: TextStyle(
                  fontFamily: 'TimesNewRoman',
                  fontWeight: FontWeight.w600,
                )),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextBox(text: myAddress, fontSize: convert(defaultFontSize)),
                TextBox(text: '|', fontSize: convert(defaultFontSize), margin: EdgeInsets.symmetric(horizontal: convert(10)),),
                TextBox(text: myNumber, fontSize: convert(defaultFontSize), onPressed: () => launch('sms:+1 $myNumber')),
                TextBox(text: '|', fontSize: convert(defaultFontSize), margin: EdgeInsets.symmetric(horizontal: convert(10)),),
                TextBox(text: myEmail, fontSize: convert(defaultFontSize), onPressed: () => launch('mailto:$myEmail')),
              ]
            ),
            makeSection('Education', [], EdgeInsets.symmetric(horizontal: 20)),
          ],
        ));
  }
}

class TextBox extends StatelessWidget {
  TextBox({
    required this.text,
    this.style,
    this.margin,
    required this.fontSize,
    this.onPressed,
  });

  final String text;
  final TextStyle? style;
  final EdgeInsetsGeometry? margin;
  final double fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin == null ? EdgeInsets.zero : margin,
      child: onPressed == null
          ? Text(text,
              style: style == null
                  ? TextStyle(
                      fontFamily: 'TimesNewRoman',
                      fontSize: fontSize,
                    )
                  : style!.copyWith(fontSize: fontSize))
          : TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
                foregroundColor: MaterialStateProperty.all(Colors.black),
                overlayColor: MaterialStateProperty.all(Colors.lightBlue.withOpacity(0.15))
              ),
              child: Text(text,
                  style: style == null
                      ? TextStyle(
                          fontFamily: 'TimesNewRoman',
                          fontSize: fontSize,
                        )
                      : style!.copyWith(fontSize: fontSize))),
    );
  }
}
