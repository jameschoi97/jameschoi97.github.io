import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyResume extends StatelessWidget {
  final myName = 'James Choi';
  final myAddress = '303 E 5th St, New York, NY 10003';
  final myNumber = '(610) 392-3086';
  final myEmail = 'wc1414@nyu.edu';

  final nyc = 'New York, NY';

  final double defaultFontSize = 15;


  @override
  Widget build(BuildContext context) {
    double convert(double originalValue) {
      var screenWidth = MediaQuery.of(context).size.width;
      return originalValue / 720 * screenWidth;
    }

    Widget makeSection(
        String title, List<Widget> children, EdgeInsetsGeometry? margin) {
      return Container(
        margin: margin == null ? EdgeInsets.zero : margin,
        child: Column(children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                border: Border(
                    bottom: BorderSide(
              color: Colors.black,
              width: convert(2),
            ))),
            child: TextBox(
              text: title,
              fontSize: convert(defaultFontSize),
              bold: true,
            ),
          ),
          Column(
            children: children,
          )
        ]),
      );
    }

    Widget bulletPointTitle(
        Widget title, String location, List<Widget> children) {
      return Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          title,
          TextBox(
            text: location,
            fontSize: convert(defaultFontSize),
            bold: true,
          )
        ]),
        Column(
          children: children,
        )
      ]);
    }

    Widget bulletPointItem(Widget title, String date, List<Widget> entries) {
      return Column(children: [
        Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          title,
          TextBox(
            text: date,
            fontSize: convert(defaultFontSize),
            italics: true,
          )
        ]),
        Column(
          children: entries
              .map((entry) => Row(children: [
                    TextBox(
                      text: '•',
                      fontSize: convert(defaultFontSize),
                      margin: EdgeInsets.symmetric(horizontal: convert(10)),
                    ),
                    entry,
                  ]))
              .toList(),
        )
      ]);
    }

    Widget listItem(String title, List<String> items) {
      return Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextBox(
            text: '${title}: ',
            fontSize: convert(defaultFontSize),
            bold: true,
          ),
          TextBox(
            text: items.join(', '),
            fontSize: convert(defaultFontSize),
          )
        ]
      );
    }

    final EdgeInsetsGeometry defaultSectionMargin = EdgeInsets.only(
      left: convert(20),
      right: convert(20),
      bottom: convert(10),
    );

    return Container(
        width: 210,
        height: 297,
        color: Colors.white,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextBox(
                text: myName,
                fontSize: convert(30),
                margin: EdgeInsets.only(top: convert(40), bottom: convert(10)),
                bold: true),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              TextBox(text: myAddress, fontSize: convert(defaultFontSize)),
              TextBox(
                text: '|',
                fontSize: convert(defaultFontSize),
                margin: EdgeInsets.symmetric(horizontal: convert(10)),
              ),
              TextBox(
                  text: myNumber,
                  fontSize: convert(defaultFontSize),
                  onPressed: () => launch('sms:+1 $myNumber')),
              TextBox(
                text: '|',
                fontSize: convert(defaultFontSize),
                margin: EdgeInsets.symmetric(horizontal: convert(10)),
              ),
              TextBox(
                  text: myEmail,
                  fontSize: convert(defaultFontSize),
                  onPressed: () => launch('mailto:$myEmail')),
            ]),
            makeSection(
                'Education',
                [
                  bulletPointTitle(
                      TextBox(
                        text:
                            'College of Arts and Sciences, New York University',
                        fontSize: convert(defaultFontSize),
                        bold: true,
                        onPressed: () => launch('https://cas.nyu.edu'),
                      ),
                      nyc,
                      [
                        bulletPointItem(
                            TextBox(
                              text:
                                  'Pursuing B.S. in Computer Science / Mathematics with Honors',
                              fontSize: convert(defaultFontSize),
                              italics: true,
                              onPressed: () =>
                                  launch('https://courant.nyu.edu'),
                            ),
                            'September 2016 - Expected May 2022',
                            [
                              Row(
                                children: [
                                  TextBox(
                                      text: 'Current GPA: ',
                                      fontSize: convert(defaultFontSize)),
                                  TextBox(
                                    text: '3.96/4.0',
                                    fontSize: convert(defaultFontSize),
                                    bold: true,
                                    underline: true,
                                  ),
                                  TextBox(
                                    text: ' (Major GPA: ',
                                    fontSize: convert(defaultFontSize),
                                  ),
                                  TextBox(
                                    text: '4.0/4.0',
                                    fontSize: convert(defaultFontSize),
                                    bold: true,
                                    underline: true,
                                  ),
                                  TextBox(
                                    text:')',
                                    fontSize: convert(defaultFontSize),
                                  )
                                ],
                              ),
                              TextBox(
                                text: 'Honors: CAS Presidential Honors Scholars, Deans\'s List (2016 - 2019), DURF Grant Recipient',
                                fontSize: convert(defaultFontSize),
                              )
                            ])
                      ])
                ],
                defaultSectionMargin),
            makeSection(
                'Coursework',
                [
                  listItem(
                      'Computer Science',
                      [
                        'Data Structures',
                        'Computer Systems Organization',
                        'Basic Algorithms',
                        'Operating Systems',
                        '\nArtificial Intelligence',
                        'Theory of Computation',
                        'Numerical Optimization',
                      ]
                  )
                ],
                defaultSectionMargin
            ),
          ],
        ));
  }
}

class TextBox extends StatelessWidget {
  TextBox({
    required this.text,
    this.margin,
    required this.fontSize,
    this.onPressed,
    this.bold = false,
    this.italics = false,
    this.underline = false,
  });

  final String text;
  final EdgeInsetsGeometry? margin;
  final double fontSize;
  final void Function()? onPressed;
  final bool bold;
  final bool italics;
  final bool underline;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin == null ? EdgeInsets.zero : margin,
      child: onPressed == null
          ? Text(text,
              style: TextStyle(
                fontFamily: 'TimesNewRoman',
                fontSize: fontSize,
                fontWeight: bold ? FontWeight.w600 : FontWeight.normal,
                fontStyle: italics ? FontStyle.italic : FontStyle.normal,
                decoration:
                    underline ? TextDecoration.underline : TextDecoration.none,
              ))
          : TextButton(
              onPressed: onPressed,
              style: ButtonStyle(
                  foregroundColor: MaterialStateProperty.all(Colors.black),
                  padding: MaterialStateProperty.all(EdgeInsets.zero),
                  minimumSize: MaterialStateProperty.all(Size.zero),
                  overlayColor: MaterialStateProperty.all(
                      Colors.lightBlue.withOpacity(0.15))),
              child: Text(text,
                  style: TextStyle(
                    fontFamily: 'TimesNewRoman',
                    fontSize: fontSize,
                    fontStyle: italics ? FontStyle.italic : FontStyle.normal,
                    decoration: underline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ))),
    );
  }
}
