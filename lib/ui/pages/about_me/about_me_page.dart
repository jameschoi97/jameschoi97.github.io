import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:get/get.dart';
import 'package:jameschoi97/ui/widgets/responsive_widget.dart';
import 'package:url_launcher/url_launcher.dart';


class AboutMePage extends GetView<MainController> {
  static final name = '/about_me';

  final instaButton = IconButton(
      onPressed: () => launch('https://www.instagram.com/choiisyourboi'),
      icon: Image.asset('assets/images/instagram.png'),
    iconSize: 150,
  );

  final linkedinButton = IconButton(
      onPressed: () => launch('https://www.linkedin.com/in/james-choi-303335115/'),
      icon: Image.asset('assets/images/linkedin.png'),
    iconSize: 150,
  );

  @override
  Widget build(BuildContext context) {
    controller.currentPage.value = Pages.aboutMe;
    return MyScaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: MyAppBar(),
      ),
      body: Container(
        child: ResponsiveWidget(
          smallScreen: Container(
            height: 800,
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                Text(
                'I believe a person\'s social media tells a lot about them.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 4,
                ),),
                  instaButton,
                  linkedinButton
                ],
              ),
            ),
          ),
          largeScreen: Container(
            height: max(MediaQuery.of(context).size.height - 56, 500),
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Text(
                      'I believe a person\'s social media tells a lot about them.',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 4,
                      ),
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      instaButton,
                      linkedinButton
                    ],
                  )
                ]
              ),
            ),
          ),

        )
      ),
    );
  }

}