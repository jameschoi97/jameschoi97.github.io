import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/ui/pages/resume/resume_video_controller.dart';
import 'package:jameschoi97/ui/pages/resume/subpages/hackathon_page.dart';
import 'package:jameschoi97/ui/pages/resume/subpages/shqs_page.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:get/get.dart';

class MyResume extends StatelessWidget {
  final myName = 'James (Wonshik) Choi';
  final myAddress = '620 E 11th St, New York, NY 10009';
  final myNumber = '(646) 799-3223';
  final myEmail = 'wc1414@nyu.edu';
  final myWebsite = 'jameschoi97.github.io';

  final nyc = 'New York, NY';

  final double defaultFontSize = 12;

  @override
  Widget build(BuildContext context) {
    double convert(double originalValue) {
      var screenWidth = MediaQuery.of(context).size.width;
      return originalValue / 720 * screenWidth;
    }

    final double normalFontSize = convert(defaultFontSize);

    Widget section(
        Widget title, List<Widget> children, EdgeInsetsGeometry? margin) {
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
              child: title),
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
            fontSize: normalFontSize,
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
            fontSize: normalFontSize,
            italics: true,
          )
        ]),
        Column(
          children: entries
              .map((entry) =>
                  Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
                    TextBox(
                      text: '•',
                      fontSize: normalFontSize,
                      margin: EdgeInsets.symmetric(horizontal: convert(10)),
                    ),
                    entry,
                  ]))
              .toList(),
        )
      ]);
    }

    Widget listItem(String title, List<String> items) {
      return Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
        TextBox(
          text: '${title}: ',
          fontSize: normalFontSize,
          bold: true,
        ),
        TextBox(
          text: items.join(', '),
          fontSize: normalFontSize,
        )
      ]);
    }

    final EdgeInsetsGeometry defaultSectionMargin = EdgeInsets.only(
      left: convert(20),
      right: convert(20),
      top: convert(15),
    );

    final itemMarginValue = convert(12);

    final myInfo = Row(mainAxisAlignment: MainAxisAlignment.center, children: [
      TextBox(text: myAddress, fontSize: normalFontSize),
      TextBox(
        text: '|',
        fontSize: normalFontSize,
        margin: EdgeInsets.symmetric(horizontal: convert(10)),
      ),
      TextBox(
          text: myNumber,
          fontSize: normalFontSize,
          onPressed: () => launch('sms:+1 $myNumber')),
      TextBox(
        text: '|',
        fontSize: normalFontSize,
        margin: EdgeInsets.symmetric(horizontal: convert(10)),
      ),
      TextBox(
          text: myEmail,
          fontSize: normalFontSize,
          onPressed: () => launch('mailto:$myEmail')),
      TextBox(
        text: '|',
        fontSize: normalFontSize,
        margin: EdgeInsets.symmetric(horizontal: convert(10)),
      ),
      TextBox(
        text: myWebsite,
        fontSize: normalFontSize,
        onPressed: () => launch('https://jameschoi97.github.io'),
      ),
    ]);

    final workExperience = section(
        TextBox(
          text: 'Work Experience',
          fontSize: normalFontSize,
          bold: true,
        ),
        [
          bulletPointTitle(
              TextBox(
                text: 'Courant Institute of Mathematical Sciences',
                fontSize: normalFontSize,
                bold: true,
              ),
              nyc,
              [
                bulletPointItem(
                    TextBox(
                      text: 'Web Administrator',
                      fontSize: normalFontSize,
                      italics: true,
                    ),
                    'October 2017 - September 2019, September 2021 - Present',
                    [
                      TextBox(
                          text:
                              'Receive requests from math / computer science department faculty members and edit / manage websites,'
                              ' mainly through using Django\nor editing HTML code on the Linux server.',
                          fontSize: normalFontSize),
                      TextBox(
                        text:
                            'Participate in projects such as using Google Apps Script to modify the CS department\'s '
                            'Internship Approval Form. Currently working\non migrating the website\'s CSS files to SCSS.',
                        fontSize: normalFontSize,
                      )
                    ])
              ]),
          SizedBox(height: itemMarginValue),
          bulletPointTitle(
            TextBox(
              text: 'GE Appliances',
              fontSize: normalFontSize,
              bold: true,
            ),
            'Seongnam, Korea',
            [
              bulletPointItem(
                TextBox(
                  text: 'Mobile Software Development Intern',
                  fontSize: normalFontSize,
                  italics: true,
                ),
                'April 2021 - August 2021',
                [
                  TextBox(
                    text:
                        'Worked in SmartHQ Service Team, primarily focusing on the cross-platform app built with Flutter SDK.',
                    fontSize: normalFontSize,
                    onPressed: () => Get.to(() => ShqsPage()),
                  ),
                  TextBox(
                      text:
                          'Drafted, revised, and submitted patent applications, two of which are approved and pending company filing.',
                      fontSize: normalFontSize),
                  TextBox(
                      text:
                          'Placed 3rd place in company-wide hackathon, which focused on over-the-air appliance update solutions.',
                      fontSize: normalFontSize,
                      onPressed: () {
                        Get.find<ResumeVideoController>()
                            .initWithAssetPath('assets/vids/hackathon_ui.mp4');
                        Get.to(() => HackathonPage());
                      }),
                ],
              )
            ],
          ),
          SizedBox(height: itemMarginValue),
          bulletPointTitle(
              TextBox(
                text:
                    'Republic of Korea Army, VII Corps, 107th Signal Battalion',
                fontSize: normalFontSize,
                bold: true,
              ),
              'Icheon, Korea',
              [
                bulletPointItem(
                    TextBox(
                      text:
                          'Soldier (Sergeant / Squad Leader from October 2020)',
                      fontSize: normalFontSize,
                      italics: true,
                    ),
                    'September 2019 - April 2021',
                    [
                      TextBox(
                          text:
                              'Supervised a 10-man squad, periodically managing and assessing the members\' training levels and task maintenance.',
                          fontSize: normalFontSize),
                      TextBox(
                        text:
                            'Operated communication equipment and set up the tactical networks throughout field training exercises.',
                        fontSize: normalFontSize,
                      ),
                    ]),
              ]),
        ],
        defaultSectionMargin);

    final education = section(
        TextBox(
          text: 'Education',
          fontSize: normalFontSize,
          bold: true,
        ),
        [
          bulletPointTitle(
              TextBox(
                text: 'College of Arts and Sciences, New York University',
                fontSize: normalFontSize,
                bold: true,
                onPressed: () => launch('https://cas.nyu.edu'),
              ),
              nyc,
              [
                bulletPointItem(
                    TextBox(
                      text:
                          'Pursuing B.S. in Computer Science / Mathematics with Honors',
                      fontSize: normalFontSize,
                      italics: true,
                      onPressed: () => launch('https://courant.nyu.edu'),
                    ),
                    'September 2016 - Expected May 2022',
                    [
                      Row(
                        children: [
                          TextBox(
                              text: 'Current GPA: ', fontSize: normalFontSize),
                          TextBox(
                            text: '3.95/4.0',
                            fontSize: normalFontSize,
                            bold: true,
                            underline: true,
                          ),
                          TextBox(
                            text: ' (Major GPA: ',
                            fontSize: normalFontSize,
                          ),
                          TextBox(
                            text: '4.0/4.0',
                            fontSize: normalFontSize,
                            bold: true,
                            underline: true,
                          ),
                          TextBox(
                            text: ')',
                            fontSize: normalFontSize,
                          )
                        ],
                      ),
                      TextBox(
                        text:
                            'Honors: CAS Presidential Honors Scholars, Deans\'s List (2016 - 2019), DURF Grant Recipient',
                        fontSize: normalFontSize,
                      ),
                    ])
              ])
        ],
        defaultSectionMargin);

    final coursework = section(
        TextBox(
          text: 'Relevant Coursework',
          fontSize: normalFontSize,
          bold: true,
        ),
        [
          listItem('Computer Science', [
            'Data Structures',
            'Computer Systems Organization',
            'Basic Algorithms',
            'Operating Systems',
            'Artificial Intelligence',
            '\nComputation Theory',
            'Numerical Optimization',
            'Parallel Computing',
            'Computer Networks',
          ]),
          listItem('Mathematics', [
            'Calculus',
            'Linear Algebra',
            'Probability Theory',
            'Numerical Analysis',
            'Real Analysis',
            'Abstract Algebra'
          ])
        ],
        defaultSectionMargin);

    final technicalSkills = section(
        TextBox(
          text: 'Technical Skills',
          fontSize: normalFontSize,
          bold: true,
        ),
        [
          listItem('Programming Languages', [
            'Python',
            'Java',
            'C',
            'HTML',
            'JavaScript',
            'MATLAB',
            'Swift',
            'Dart',
          ]),
          listItem('Additional Skills', [
            'LaTeX',
            'Korean',
            'Spanish',
            'Microsoft Excel',
          ])
        ],
        defaultSectionMargin);

    final extracurricular = section(
        TextBox(
          text: 'Extracurricular and Leadership Activities',
          fontSize: normalFontSize,
          bold: true,
        ),
        [
          bulletPointTitle(
              TextBox(
                text: 'NYU College Cohort Program',
                fontSize: normalFontSize,
                bold: true,
              ),
              nyc,
              [
                bulletPointItem(
                    TextBox(
                      text: 'Cohort President',
                      fontSize: normalFontSize,
                      italics: true,
                    ),
                    'August 2017 - September 2019',
                    [
                      TextBox(
                        text:
                            'Selected by a 40-person cohort to regularly communicate with the members, organize events, and'
                            ' instill a sense of community\nwithin the group.',
                        fontSize: normalFontSize,
                      ),
                      TextBox(
                        text:
                            'Attended NYU\'s Sophomore Leadership Development Series; topics included logistics of organizing events,'
                            ' helping transfer students\ntransition into NYU, and team-building with the other cohort presidents.',
                        fontSize: normalFontSize,
                      )
                    ])
              ]),
        ],
        defaultSectionMargin);

    final projects = section(
      TextBox(
        text: 'Personal Achievements',
        fontSize: normalFontSize,
        bold: true,
      ),
      [
        bulletPointItem(
            TextBox(
              text: 'Optimization of Feature Selection',
              fontSize: normalFontSize,
              bold: true,
              onPressed: () => launch(
                  "https://math.nyu.edu/media/math/filer_public/fe/c2/fec2e739-a688-4805-b490-c2eb96439dd7/optimization_of_feature_selection.pdf"),
            ),
            '',
            [
              TextBox(
                text:
                    'My research paper written for NYU math department’s SURE (Summer Undergraduate Research Experience) program in 2019.',
                fontSize: normalFontSize,
              ),
              TextBox(
                text:
                'Advised by Professor Esteban G. Tabak, the research addresses the problem of choosing a smaller number of important attributes,'
                    '\ngiven data points that each consists of a larger number of attributes.',
                fontSize: normalFontSize,
              ),
              TextBox(
                text:
                'The research paper, posted on the NYU website, describes the process of building a prediction model and optimizing over the features'
                    '\nof data points to minimize the error between the prediction and the real data.',
                fontSize: normalFontSize,
              )
            ]),
        bulletPointItem(
            TextBox(
              text: 'Dogs&Cats',
              fontSize: normalFontSize,
              bold: true,
              onPressed: () => launch('https://devpost.com/software/dogs-cats'),
            ),
            '',
            [
              Row(
                children: [
                  TextBox(
                      text: 'A project built during ',
                      fontSize: normalFontSize),
                  TextBox(
                    text: 'HackNY',
                    fontSize: normalFontSize,
                    onPressed: () => launch('https://hackny.org'),
                  ),
                  TextBox(
                    text: '\'s 2018 Hackathon. The project was awarded ',
                    fontSize: normalFontSize,
                  ),
                  TextBox(
                    text: 'Best Use of GIPHY API',
                    fontSize: normalFontSize,
                    bold: true,
                  ),
                  TextBox(
                    text: ' award',
                    fontSize: normalFontSize,
                  )
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextBox(
                    text:
                        'Built using Flask, the web app accepted requests for and sent animal GIFs over SMS using Twilio API. For every 3 Gifs requested,',
                    fontSize: normalFontSize,
                  ),
                  Row(
                    children: [
                      TextBox(
                        text:
                            'users would automatically receive facts and resources about ',
                        fontSize: normalFontSize,
                      ),
                      TextBox(
                          text: 'Animal Care Centers of NYC',
                          fontSize: normalFontSize,
                          onPressed: () => launch('https://www.nycacc.org/')
                      ),
                      TextBox(
                        text:
                        ', an organization dedicated to personal',
                        fontSize: normalFontSize,
                      ),
                    ],
                  ),
                  TextBox(
                    text:
                        'placement of stray / abandoned animals in New York.',
                    fontSize: normalFontSize,
                  )
                ],
              )
            ])
      ],
      defaultSectionMargin,
    );

    final interests = section(
      TextBox(
        text: 'Personal Interests',
        fontSize: normalFontSize,
        bold: true,
      ),
        [
            Row(
              children: [
                TextBox(
                  text: 'Cooking, Weightlifting, Marvel Comics, Hearthstone (Top 1%), Watching Movies (Currently at 400+ movies), App Development',
                  fontSize: normalFontSize,
                ),
              ],
            ),

        ],
        defaultSectionMargin,
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
                fontSize: convert(40),
                margin: EdgeInsets.only(top: convert(40), bottom: convert(15)),
                bold: true),
            myInfo,
            education,
            coursework,
            workExperience,
            technicalSkills,
            projects,
            extracurricular,
            interests,
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
              ),
              child: Text(text,
                  style: TextStyle(
                    fontFamily: 'TimesNewRoman',
                    fontSize: fontSize,
                    fontWeight: bold ? FontWeight.w600 : FontWeight.normal,
                    fontStyle: italics ? FontStyle.italic : FontStyle.normal,
                    decoration: underline
                        ? TextDecoration.underline
                        : TextDecoration.none,
                  ))),
    );
  }
}
