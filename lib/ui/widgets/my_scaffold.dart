import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';

class MyScaffold extends Scaffold {

  MyScaffold({
    appBar,
    body,
    floatingActionButton,
    floatingActionButtonLocation,
    floatingActionButtonAnimator,
    persistentFooterButtons,
    bottomNavigationBar,
    bottomSheet,
    drawer,
    onDrawerChanged,
    endDrawer,
    onEndDrawerChanged,
    extendBody = false,
    extendBodyBehindAppBar = false,
    resizeToAvoidBottomInset,
    primary = true,
    drawerDragStartBehavior = DragStartBehavior.start,
    drawerScrimColor,
    drawerEdgeDragWidth,
    drawerEnableOpenDragGesture = true,
    endDrawerEnableOpenDragGesture = true,
    restorationId,
  }) : super(
      appBar: appBar,
      body: Container(
        decoration: Get.find<MyThemeController>().background,
        child: body,
      ),
      floatingActionButton: floatingActionButton,
      floatingActionButtonLocation: floatingActionButtonLocation,
      floatingActionButtonAnimator: floatingActionButtonAnimator,
      persistentFooterButtons: persistentFooterButtons,
      bottomNavigationBar: bottomNavigationBar,
      bottomSheet: bottomSheet,
      drawer: drawer,
      onDrawerChanged: onDrawerChanged,
      endDrawer: endDrawer,
      onEndDrawerChanged: onEndDrawerChanged,
      extendBody: extendBody,
      extendBodyBehindAppBar: extendBodyBehindAppBar,
      resizeToAvoidBottomInset: resizeToAvoidBottomInset,
      primary: primary,
      drawerDragStartBehavior: drawerDragStartBehavior,
      drawerScrimColor: drawerScrimColor,
      drawerEdgeDragWidth: drawerEdgeDragWidth,
      drawerEnableOpenDragGesture: drawerEnableOpenDragGesture,
      endDrawerEnableOpenDragGesture: endDrawerEnableOpenDragGesture,
      restorationId: restorationId);
}