import 'package:bottom_nav/screens/home/home_controller.dart';
import 'package:bottom_nav/screens/home/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  Get.put(HomeController());

  runApp(const GetMaterialApp(home: HomeScreen()));
}
