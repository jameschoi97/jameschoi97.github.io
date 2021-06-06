import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/pages/resume/subpages/static_resume_page.dart';
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
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            child: RichText(text: TextSpan(
              children: [
                TextSpan(
                  text: 'Unfortunately, my interactive resume doesn\'t seem to work well on iPhones. Please open this website on your desktop or access the static version of my resume '
                ),
                TextSpan(
                  text: 'here',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                  ),
                  recognizer: TapGestureRecognizer()..onTap = () => Get.to(() => StaticResumePage()),
                ),
                TextSpan(
                  text: '.'
                ),
              ],

            ),
              
            )
          ),
          AspectRatio(
              aspectRatio: 210/297,
              child: MyResume()
          ),
        ],
      ),
    );
  }

}