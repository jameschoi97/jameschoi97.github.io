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
                  'on your phone as if they were magazine articles.',
                  style: TextStyle(
                    fontSize: 16,
                  ))),
          Container(
            constraints: BoxConstraints(
              maxWidth: 750,
            ),
            padding: EdgeInsets.symmetric(vertical: 20, horizontal: 60),
            child: Image.asset('assets/images/hackathon2.jpeg')
          ),
          Container(
              margin: EdgeInsets.symmetric(horizontal: 70, vertical: 20),
              constraints: BoxConstraints(
                maxWidth: 750,
              ),
              child: Text(
                  'In our team, my responsibility was to create a UI for the dummy oven we would use for the demonstration. '
                      'The UI can connect to the mobile application through a local server using simple HTTP requests, and when '
                      'certain events, such as an addition of a recipe or winning of a free coupon, happen, display them on its '
                      'screen. In addition to creating the UI, I also presented at our demonstration. Our team came in third, '
                      'tied with another team. The UI I made using Flutter SDK, is shown below.',
                  style: TextStyle(
                    fontSize: 16,
                  ))),
          Obx(() => Container(
            margin: EdgeInsets.symmetric(horizontal: 60),
            constraints: BoxConstraints(
              maxWidth: 750,
            ),
              child: _resumeVideoController.isInitialized.value
                  ? Center(
                      child: Column(
                        children: [
                            AspectRatio(
                                aspectRatio: _resumeVideoController
                                    .videoPlayerController!.value.aspectRatio,
                                child: VideoPlayer(_resumeVideoController
                                    .videoPlayerController!)),
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
                  : Center(child: CircularProgressIndicator()))),
        ]));
  }
}
