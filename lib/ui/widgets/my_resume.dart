import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';

class MyResume extends StatelessWidget {

  final myName = 'James Choi';
  final myAddress = '303 E 5th St, New York, NY 10003';
  final myNumber = '(610) 392-3086';
  final myEmail = 'wc1414@nyu.edu';


  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;

      return Container(
        width: 210*4,
        height: 297*4,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            TextBox(
                text: myName,
                widthFactor: 0.25,
              margin: EdgeInsets.only(top: screenWidth * 0.04, bottom: screenWidth * 0.01),
              style: TextStyle(
                fontFamily: 'TimesNewRoman',
                fontWeight: FontWeight.w600,
              )
            ),
            TextBox(
              text: '$myAddress | $myNumber | $myEmail',
              widthFactor: 0.7,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 30),
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.black,
                    width: 2.0,
                  )
                ),
              ),
              child: Text('Education', style: TextStyle(
                fontFamily: 'TimesNewRoman',
                fontWeight: FontWeight.w600,
              ))
            )
          ],

        )
    );
  }

}

class TextBox extends StatelessWidget {

  TextBox({
    required this.text,
    this.style,
    this.margin,
    required this.widthFactor,
  });

  final String text;
  final TextStyle? style;
  final EdgeInsetsGeometry? margin;
  final double widthFactor;



  @override
  Widget build(BuildContext context) {
    return Container(
        margin: margin == null ? EdgeInsets.zero : margin,
        width: MediaQuery.of(context).size.width * widthFactor,
        child: FittedBox(
          fit: BoxFit.fill,
          child: Text(text, style: style == null ? TextStyle(
            fontFamily: 'TimesNewRoman',
          ) : style),
        )
    );
  }
}