import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/ui/pages/resume/resume_video_controller.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
import 'package:jameschoi97/ui/widgets/my_grid.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class ShqsPage extends StatelessWidget {
  final _themeController = Get.find<MyThemeController>();
  final _resumeVideoController = Get.find<ResumeVideoController>();

  @override
  Widget build(BuildContext context) {
    final List<Widget> shqsItems = [
      shqsItem(
          'List Widget',
          'List widget used in SmartHQ Service which shows an animated icon when it has no items.',
          'assets/vids/shqs_list.mov'),
      shqsItem(
          'Grid Widget',
          'Grid widget which can automatically adjust the number of columns'
              ' depending on the screen size. Also provides options to have a set number of columns/rows, '
              'make the grid borderless/unscrollable, and set the max size of each grid.',
          'assets/vids/shqs_grid.mov'),
      shqsItem('Settings Page', 'Settings page of SmartHQ Service.',
          'assets/vids/settings.mov'),
      shqsItem(
          'Diagnostic Documents Page',
          'Diagnostic Documents page where users can access useful documents through Salesforce cloud.',
          'assets/vids/diagnostic_documents.mov'),
      shqsItem(
          'Diagnostic History - Search Page',
          'Diagnostic History page where users can search for past sessions. The search can be narrowed down '
              'with several parameters.',
          'assets/vids/diagnostic_history.mov'),
      shqsItem(
          'Diagnostic History - Session Info',
          'A session information page which shows information about a past session. The details can be sent'
              ' through email or SMS. Session notes/photos/videos '
              'are made available when they are loaded.',
          'assets/vids/session_info.mov'),
    ];

    return MyScaffold(
        appBar: PreferredSize(
          preferredSize: Size(MediaQuery.of(context).size.width, 56),
          child: MyAppBar(),
        ),
        body: Column(children: [
          Row(
            children: [
              Container(
                margin: EdgeInsets.all(8),
                child: TextButton(
                    onPressed: () => Get.back(),
                    child: Text('< Back to resume',
                        style: TextStyle(
                          fontSize: 15,
                        ))),
              ),
            ],
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Text('GE Appliances SmartHQ Service',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                )),
          ),
          Container(
              width: 360,
              padding: EdgeInsets.symmetric(vertical: 8, horizontal: 10),
              color: Color(0xFF364359),
              child: Image.asset('assets/images/shqs_logo.png')),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              constraints: BoxConstraints(
                maxWidth: 750,
              ),
              child: Text(
                  'During my time at GE Appliances, I was working with the Smart HQ Service team. '
                  'Smart HQ Service helps technicians provide better repair services by giving them resources such '
                  'as diagnostics data for the appliances. My main job in the team was to work on the cross-platform app, '
                  'so that the technicians could access the app not only on their phones, but also'
                  ' through web on a bigger screen. These are some of the features I added to SmartHQ Service during my internship:',
                  style: TextStyle(
                    fontSize: 16,
                  ))),
          MyGrid(
            isScrollable: false,
            children: shqsItems,
            hasBorder: false,
            max_grid_size: 600,
          )
        ]));
  }

  Widget shqsItem(String title, String content, String vidPath) {
    return AspectRatio(
        aspectRatio: 1,
        child: Container(
          margin: EdgeInsets.all(15),
          decoration: BoxDecoration(
              border: Border.all(
                  width: 8,
                  color: _themeController.theme.colorSet.appBarBorder),
              borderRadius: BorderRadius.circular(15),
              color: _themeController.theme.colorSet.appBar),
          child: Center(
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Padding(
                    padding: EdgeInsets.only(bottom: 10, left: 10, right: 10),
                    child: Text(
                      title,
                      style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  Container(
                    width: 400,
                    margin: EdgeInsets.symmetric(horizontal: 15),
                    child: Text(content,
                        style: TextStyle(fontSize: 16, color: Colors.white)),
                  ),
                  Container(
                    child: TextButton(
                      style: _themeController.theme.buttonStyle.copyWith(
                          side: MaterialStateProperty.all(
                              BorderSide(color: Colors.white)),
                          padding: MaterialStateProperty.all(
                            EdgeInsets.symmetric(horizontal: 30, vertical: 12),
                          )),
                      onPressed: () {
                        _resumeVideoController.initWithAssetPath(vidPath);
                        Get.dialog(AlertDialog(
                            contentPadding: EdgeInsets.zero,
                            shape: RoundedRectangleBorder(
                                side:
                                    BorderSide(color: Colors.black, width: 2.0),
                                borderRadius: BorderRadius.circular(10)),
                            content: Container(
                              padding: EdgeInsets.symmetric(
                                  vertical: 10, horizontal: 10),
                              child: Column(
                                children: [
                                  Center(
                                    child: FittedBox(
                                      fit: BoxFit.fitWidth,
                                      child: Text(title,
                                          style: TextStyle(
                                            letterSpacing: 3,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 40,
                                          )),
                                    ),
                                  ),
                                  Expanded(
                                      child: Obx(()=>Container(
                                          padding: EdgeInsets.all(10),
                                          child: _resumeVideoController.isInitialized.value ? Center(
                                            child: Column(
                                              children: [
                                                Expanded(
                                                  child: AspectRatio(
                                                    aspectRatio: _resumeVideoController.videoPlayerController!.value.aspectRatio,
                                                    child: VideoPlayer(
                                                      _resumeVideoController.videoPlayerController!
                                                    )
                                                  ),
                                                ),
                                                Obx(()=>Row(children:[
                                                  _resumeVideoController.playButton(),
                                                  Expanded(
                                                    child: Slider(
                                                      onChanged:
                                                          (double value) {
                                                        _resumeVideoController
                                                            .goTo(value);
                                                      },
                                                      value: _resumeVideoController
                                                          .percentage.value,
                                                    ),
                                                  ),
                                                ]))
                                              ],
                                            ),
                                          ) : Center(child: CircularProgressIndicator())))),
                                  TextButton(
                                      onPressed: () {
                                        Get.back();
                                      },
                                      child: Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 150,
                                        ),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 20, vertical: 10),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.all(
                                              Radius.circular(10)),
                                          border: Border.all(
                                            color: Colors.red,
                                            width: 1,
                                          ),
                                        ),
                                        child: Center(child: Text('Close')),
                                      ))
                                ],
                              ),
                            )));
                      },
                      child: Text('Video',
                          style: TextStyle(fontSize: 20, color: Colors.white)),
                    ),
                  )
                ]),
          ),
        )
        );
  }


}
