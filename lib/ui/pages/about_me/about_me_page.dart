import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
import 'package:jameschoi97/ui/widgets/my_grid.dart';
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
    onPressed: () =>
        launch('https://www.linkedin.com/in/james-choi-303335115/'),
    icon: Image.asset('assets/images/linkedin.png'),
    iconSize: 150,
  );

  final githubButton = IconButton(
    onPressed: () => launch('https://github.com/jameschoi97'),
    icon: Image.asset('assets/images/github.png'),
    iconSize: 150,
  );

  final leetcodeButton = IconButton(
    onPressed: () => launch('https://leetcode.com/wc1414/'),
    icon: Image.asset('assets/images/leetcode.png'),
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
            child: MyGrid(
              row: 2,
              column: 2,
              hasBorder: false,
              children: [
                instaButton,
                linkedinButton,
                githubButton,
                leetcodeButton,
              ].map((button) => Padding(
                padding: EdgeInsets.all(15),
                child: button,
              )).toList()
            )
          ),
        ),
        largeScreen: Container(
          height: max(MediaQuery.of(context).size.height - 56, 500),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
              children: [
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
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
                children: [instaButton, linkedinButton],
              )
            ]),
            Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                padding: EdgeInsets.only(top: 45, bottom: 30),
                child: Text(
                  'You can also check out my coding progress on these sites.',
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
                children: [githubButton, leetcodeButton],
              )
            ]),
          ]),
        ),
      )),
    );
  }
}
