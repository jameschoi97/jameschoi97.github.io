import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
import 'package:jameschoi97/ui/widgets/my_resume.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:get/get.dart';

class ResumePage extends GetView<MainController> {
  static final name = '/resume';

  @override
  Widget build(BuildContext context) {
    controller.currentPage.value = Pages.resume;

    return MyScaffold(
      appBar: PreferredSize(
        preferredSize: Size(MediaQuery.of(context).size.width, 56),
        child: MyAppBar(),
      ),
      body: AspectRatio(
          aspectRatio: 210/297,
          child: MyResume()
      ),
    );
  }

}