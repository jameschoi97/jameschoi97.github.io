import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/ui/widgets/my_drawer.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:jameschoi97/ui/widgets/responsive_widget.dart';

import 'package:get/get.dart';

class HomePage extends StatelessWidget {
  static final name = '/home';

  final _themeController = Get.find<MyThemeController>();

  @override
  Widget build(BuildContext context) {
    var screenSize = MediaQuery.of(context).size;
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
            letterSpacing: 3,
          ),
        ),
      )
      : null,
      drawer: MyDrawer(),
      body: Container(),
    );
  }

}