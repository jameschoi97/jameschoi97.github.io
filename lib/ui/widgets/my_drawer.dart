import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/widgets/responsive_widget.dart';

class MyDrawer extends GetWidget<MainController> {
  final _themeController = Get.find<MyThemeController>();

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 250,
          child: Drawer(
              child: ListView(padding: EdgeInsets.zero, children: [
        Container(
          height: 70,
          child: DrawerHeader(
            margin: EdgeInsets.zero,
            decoration: BoxDecoration(
                color: _themeController.theme.colorSet.appBar,
                border: Border(
                  bottom: BorderSide(
                      color: _themeController.theme.colorSet.appBarBorder),
                )),
            child: Center(child: Text('James Choi\'s Website',
            style: TextStyle(
              color: _themeController.theme.colorSet.appBarFontColor
            ))),
          ),
        ),
        for (int page = 0; page < pages.length; page++)
          ListTile(
              tileColor: controller.currentPage.value == pages[page]
                  ? _themeController.theme.colorSet.appBarSelected
                  : null,
              title: Text(
                pages[page].name,
                style: TextStyle(
                    color: controller.currentPage.value == pages[page]
                        ? _themeController.theme.colorSet.appBarFontColor
                        : _themeController.theme.colorSet.fontColor),
              ),
              onTap: controller.currentPage.value == pages[page]
                  ? null
                  : () {
                controller.currentPage.value = pages[page];
                      Get.toNamed(pages[page].pageName);
                    })
      ]))
    );
  }
}
