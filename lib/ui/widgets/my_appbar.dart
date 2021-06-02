import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/widgets/responsive_widget.dart';
import 'package:get/get.dart';

import 'my_drawer.dart';

class MyAppBar extends GetWidget<MainController> {
  final _themeController = Get.find<MyThemeController>();

  @override
  Widget build(BuildContext context){
    return ResponsiveWidget(
      smallScreen: AppBar(
        automaticallyImplyLeading: false,
        leading: Builder(
             builder: (BuildContext context) {
               return IconButton(
                 icon: const Icon(Icons.menu),
                 onPressed: () { Scaffold.of(context).openDrawer(); },
                 tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
               );
             },
           ),
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
      ),
        largeScreen: AppBar(
          automaticallyImplyLeading: false,
          backgroundColor: _themeController.theme.colorSet.appBar,
          shadowColor: _themeController.theme.colorSet.appBarBorder,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Expanded(
                child: Text(
                  'JAMES CHOI',
                  style: TextStyle(
                    color: Colors.blueGrey.shade100,
                    fontSize: 20,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2,
                  ),
                )
              ),
              for (int page = 0; page < pages.length; page++)
                InkWell(
                  hoverColor: _themeController.theme.colorSet.appBarHoverColor,
                  onTap: controller.currentPage.value == pages[page]
                  ? null : () {
                    Get.toNamed(pages[page].pageName);
                  },
                  child: Container(
                    height: 56,
                    width: 120,
                    margin: EdgeInsets.zero,
                    color: controller.currentPage.value == pages[page]
                      ? _themeController.theme.colorSet.appBarSelected : _themeController.theme.colorSet.appBar,
                    child: Center(
                      child: Text(pages[page].name,
                      style: TextStyle(color: controller.currentPage.value == pages[page]
                          ? Colors.white : _themeController.theme.colorSet.appBarFontColor)),
                    )
                  ),
                )
            ],
          )
        )
    );

  }
}