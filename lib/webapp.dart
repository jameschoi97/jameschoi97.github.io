import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/ui/pages/home/home_page.dart';
import 'package:jameschoi97/ui/pages/resume/resume_page.dart';

class MyWebApp extends StatelessWidget {
  final _themeController = Get.find<MyThemeController>();


  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'James Choi\'s Website',
      initialRoute: HomePage.name,
      theme: _themeController.theme.themeData,
      routes : {
        HomePage.name: (_) => HomePage(),
        ResumePage.name: (_) => ResumePage(),
      },
      getPages: [
        GetPage(
          name: HomePage.name,
          page: () => HomePage(),

        ),
        GetPage(
          name: ResumePage.name,
          page: () => ResumePage(),
        )
      ],
    );
  }
}