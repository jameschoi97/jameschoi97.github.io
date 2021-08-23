import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/ui/pages/resume/resume_video_controller.dart';
import 'package:jameschoi97/ui/widgets/my_appbar.dart';
import 'package:jameschoi97/ui/widgets/my_scaffold.dart';
import 'package:get/get.dart';
import 'package:video_player/video_player.dart';

class HackathonPage extends StatelessWidget {
  final _themeController = Get.find<MyThemeController>();
  final _resumeVideoController = Get.find<ResumeVideoController>();

  @override
  Widget build(BuildContext context) {
    final List<Widget> shqsItems = [
      shqsItem(
          'List Widget',
          'List widget used in SmartHQ Service which shows an animated icon when it has no items.',
          'assets/vids/shqs_list.mov'),
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
            child: Text('GE Appliance 5th Hackathon - OTA',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 2,
                )),
          ),
          Container(
              constraints: BoxConstraints(
                maxWidth: 750,
              ),
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
              child: Image.asset('assets/images/hackathon.jpg')),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              constraints: BoxConstraints(
                maxWidth: 750,
              ),
              child: Text(
                  'In May 2021, GE Appliances held its 5th hackathon. The theme of the hackathon was Over-the-air .'
                  '(OTA) programming, and we had to come up with better ways to reach our customers with our updates. '
                  'My team introduced a mobile application where the update information for your electronics can be viewed '
                  'on your phone as if they were magazine articles.\n\n'
                  'In our team, my responsibility was to create a UI for the dummy oven we would use for the demonstration. '
                  'The UI can connect to the mobile application through a local server using simple HTTP requests, and when '
                  'certain events, such as an addition of a recipe or winning of a free coupon, happen, display them on its '
                  'screen. In addition to creating the UI, I also presented at our demonstration. Our team came in third, tied with another team. The UI I made using Flutter SDK, is shown below.',
                  style: TextStyle(
                    fontSize: 16,
                  ))),
          Container(
              child: _resumeVideoController.isInitialized.value
                  ? Center(
                      child: Column(
                        children: [
                          Expanded(
                            child: AspectRatio(
                                aspectRatio: _resumeVideoController
                                    .videoPlayerController!.value.aspectRatio,
                                child: VideoPlayer(_resumeVideoController
                                    .videoPlayerController!)),
                          ),
                          Obx(() => Row(children: [
                                _resumeVideoController.playButton(),
                                Expanded(
                                  child: Slider(
                                    onChanged: (double value) {
                                      _resumeVideoController.goTo(value);
                                    },
                                    value:
                                        _resumeVideoController.percentage.value,
                                  ),
                                ),
                              ]))
                        ],
                      ),
                    )
                  : Center(child: CircularProgressIndicator())),
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
                                      child: Obx(() => Container(
                                          padding: EdgeInsets.all(10),
                                          child: _resumeVideoController
                                                  .isInitialized.value
                                              ? Center(
                                                  child: Column(
                                                    children: [
                                                      Expanded(
                                                        child: AspectRatio(
                                                            aspectRatio:
                                                                _resumeVideoController
                                                                    .videoPlayerController!
                                                                    .value
                                                                    .aspectRatio,
                                                            child: VideoPlayer(
                                                                _resumeVideoController
                                                                    .videoPlayerController!)),
                                                      ),
                                                      Obx(() => Row(children: [
                                                            _resumeVideoController
                                                                .playButton(),
                                                            Expanded(
                                                              child: Slider(
                                                                onChanged:
                                                                    (double
                                                                        value) {
                                                                  _resumeVideoController
                                                                      .goTo(
                                                                          value);
                                                                },
                                                                value: _resumeVideoController
                                                                    .percentage
                                                                    .value,
                                                              ),
                                                            ),
                                                          ]))
                                                    ],
                                                  ),
                                                )
                                              : Center(
                                                  child:
                                                      CircularProgressIndicator())))),
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
        ));
  }
}
