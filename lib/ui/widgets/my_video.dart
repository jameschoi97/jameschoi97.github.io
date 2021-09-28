import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:video_player/video_player.dart';

class MyVideo extends StatelessWidget {

  MyVideo({required this.path});

  String path;

  final _themeController = Get.find<MyThemeController>();

  late final videoPlayerController = VideoPlayerController.asset(path);

  final percentage = 0.0.obs;
  Duration current = Duration();

  final isPlaying = false.obs;
  final isInitialized = false.obs;
  final shouldReplay = false.obs;

  void initialize() async {
    await videoPlayerController.initialize();
    isPlaying.value = false;
    shouldReplay.value = false;
    percentage.value = 0.0;
    current = Duration();
    videoPlayerController.addListener(() {
      if (isPlaying.value != videoPlayerController.value.isPlaying) {
        isPlaying.value = videoPlayerController.value.isPlaying;
      }
    });
    videoPlayerController.addListener(() {
      if (!videoPlayerController.value.isPlaying && videoPlayerController.value.position
          .compareTo(videoPlayerController.value.duration) >=
          0 && !shouldReplay.value) {
        shouldReplay.value = true;
      }
    });
    videoPlayerController.addListener(() {
      if (videoPlayerController.value.position.compareTo(current) >= 0) {
        current = videoPlayerController.value.position;
        percentage.value = current.inMilliseconds.toDouble() / videoPlayerController.value.duration.inMilliseconds.toDouble();
      }
    });

    isInitialized.value = true;


  }

  void close() {
    videoPlayerController.dispose();
  }

  void play() async {
    if (shouldReplay.value){
      shouldReplay.value = false;
      current = Duration();
      percentage.value = 0;
    }
    await videoPlayerController.play();
  }

  void pause() async {
    await videoPlayerController.pause();
  }

  void goTo(double targetPercentage) {
    final totalMilliseconds = videoPlayerController.value.duration.inMilliseconds.toDouble();
    final targetMilliseconds = (totalMilliseconds * targetPercentage).floor();
    final targetDuration = Duration(milliseconds: targetMilliseconds);
    videoPlayerController.seekTo(targetDuration);
    current = targetDuration;
    percentage.value = targetPercentage;
    if (shouldReplay.value){
      shouldReplay.value = false;
    }
  }

  @override
  Widget build(BuildContext context) {
    initialize();
    return Obx(()=>Container(
      child: isInitialized.value ? Center(
        child: Column(
          children: [
            Expanded(
              child: AspectRatio(
                  aspectRatio: videoPlayerController.value.aspectRatio,
                  child: VideoPlayer(videoPlayerController)),
            ),
            Obx(() => Row(children: [
              playButton(),
              Expanded(
                child: Slider(
                  onChanged: (double value) {
                    goTo(value);
                  },
                  value:
                  percentage.value,
                ),
              ),
            ]))
          ],
        ),
      )
          : Center(child: CircularProgressIndicator()


    )));
  }

  Widget playButton() {
    return Container(
      width: 40,
      child: TextButton(
        style: _themeController.borderlessButtonStyle,
        onPressed: () {
          isPlaying.value ? pause() : play();
        },
        child: Container(
          child: Icon(
              shouldReplay.value
                  ? Icons.replay
                  : isPlaying.value
                  ? Icons.pause
                  : Icons.play_arrow,
              color: Colors.black,
              size: 25),
        ),
      ),
    );
  }

}