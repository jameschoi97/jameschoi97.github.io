import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/widgets/my_drawer.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:jameschoi97/ui/widgets/responsive_widget.dart';

import 'package:get/get.dart';

class HomePage extends GetView<MainController> {
  static final name = '/home';

  final subpages = [
    Pages.aboutMe,
    Pages.resume,
    Pages.movies,
  ];

  final _themeController = Get.find<MyThemeController>();

  @override
  Widget build(BuildContext context) {
    return MyScaffold(
      appBar: ResponsiveWidget.isSmallScreen(context)
      ? AppBar(
        backgroundColor: _themeController.theme.colorSet.appBar,
        elevation: 0,
        title: Text(
          'JAMES CHOI',
          style: TextStyle(
            color: Colors.blueGrey.shade100,
            fontSize: 20,
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.w400,
            letterSpacing: 2,
          ),
        ),
      )
      : null,
      drawer: Container(
        width: 250,
          child: MyDrawer()
      ),
      body: ResponsiveWidget(
        largeScreen: Row(
          children: [
            Expanded(
              flex: 2,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: subpages.map((page) => InkWell(
                    hoverColor: _themeController.theme.colorSet.appBarHoverColor,
                    onTap: () {
                      controller.currentPage.value = page;
                      Get.toNamed(page.pageName);
                    },
                    child: Container(
                        margin: EdgeInsets.symmetric(vertical: 30),
                        child: Center(
                          child: Text(page.name.toUpperCase(),
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w600,
                            letterSpacing: 4,
                          ),),
                        )
                    ),
                  )).toList(),
                )
            ),
            Expanded(
              flex: 3,
                child: Container()
            )
          ],
        ),
      ),
    );
  }

}