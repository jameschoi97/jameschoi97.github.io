import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/main_controller.dart';
import 'package:jameschoi97/ui/pages/movies/movies_controller.dart';
import 'package:jameschoi97/webapp.dart';
import 'package:get/get.dart';

void main() {
  Get.put(MainController());
  Get.put(MyThemeController());
  Get.put(MoviesController());
  runApp(MyWebApp());
}