import 'package:flutter/material.dart';
import 'package:odc_hackathon/constant.dart';
import 'package:odc_hackathon/services/cache_helper.dart';
import 'package:odc_hackathon/views/OnBoardingScreen.dart';
import 'package:odc_hackathon/views/homePage/bottomNavBar.dart';
import 'package:get/get.dart';


Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  var token = CacheHelper.getData(key: "token");
  runApp(GetMaterialApp(
    debugShowCheckedModeBanner: false,
    home: token == null ? OnboardingScreen() : const BottomNaveBar(),
  ));
}


