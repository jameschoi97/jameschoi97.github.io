import 'package:flutter/material.dart';
import 'package:jameschoi97/config/constants/ui/theme_constants.dart';
import 'package:jameschoi97/webapp.dart';
import 'package:get/get.dart';

void main() {
  Get.put(MyThemeController());
  runApp(MyWebApp());
}