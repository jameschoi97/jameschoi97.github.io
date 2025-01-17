import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/ui/widgets/responsive_widget.dart';

import 'my_drawer.dart';

class MyScaffold extends StatelessWidget {

  MyScaffold({
    this.appBar,
    this.body,
    this.floatingActionButton,
    this.floatingActionButtonLocation,
    this.floatingActionButtonAnimator,
    this.persistentFooterButtons,
    this.bottomNavigationBar,
    this.bottomSheet,
    this.drawer,
    this.onDrawerChanged,
    this.endDrawer,
    this.onEndDrawerChanged,
    this.extendBody = false,
    this.extendBodyBehindAppBar = false,
    this.resizeToAvoidBottomInset,
    this.primary = true,
    this.drawerDragStartBehavior = DragStartBehavior.start,
    this.drawerScrimColor,
    this.drawerEdgeDragWidth,
    this.drawerEnableOpenDragGesture = true,
    this.endDrawerEnableOpenDragGesture = true,
    this.restorationId,
    this.scrollController,
  });

  final appBar;
  final body;
  final floatingActionButton;
  final floatingActionButtonLocation;
  final floatingActionButtonAnimator;
  final persistentFooterButtons;
  final bottomNavigationBar;
  final bottomSheet;
  final drawer;
  final onDrawerChanged;
  final endDrawer;
  final onEndDrawerChanged;
  final bool extendBody;
  final bool extendBodyBehindAppBar;
  final resizeToAvoidBottomInset;
  final bool primary;
  final DragStartBehavior drawerDragStartBehavior;
  final drawerScrimColor;
  final drawerEdgeDragWidth;
  final bool drawerEnableOpenDragGesture;
  final bool endDrawerEnableOpenDragGesture;
  final restorationId;
  final ScrollController? scrollController;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar,
        body: Stack(
          children: [
            Container(
              decoration: Get.find<MyThemeController>().background,
            ),
            SingleChildScrollView(
              child: body,
              controller: scrollController,
              /*child: ConstrainedBox(
                constraints: BoxConstraints(
                  minHeight: MediaQuery.of(context).size.height - 56,
                  minWidth: MediaQuery.of(context).size.width,
                ),
                child: body
              ),*/
            ),
          ],
        ),
        floatingActionButton: floatingActionButton,
        floatingActionButtonLocation: floatingActionButtonLocation,
        floatingActionButtonAnimator: floatingActionButtonAnimator,
        persistentFooterButtons: persistentFooterButtons,
        bottomNavigationBar: bottomNavigationBar,
        bottomSheet: bottomSheet,
        drawer: drawer != null ? drawer :
        ResponsiveWidget.isSmallScreen(context) ? MyDrawer() : null,
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
        restorationId: restorationId
    );
  }
}