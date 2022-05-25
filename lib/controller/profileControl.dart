
import 'package:flutter/material.dart';
import 'package:odc_hackathon/controller/base_controller.dart';
import 'package:odc_hackathon/controller/profile_services.dart';
import 'package:odc_hackathon/services/cache_helper.dart';
import 'package:odc_hackathon/views/login/login.dart';

class myProfileController extends BaseController{

  ProfileServices service= ProfileServices();

  logout(BuildContext context) async {
    service.logout();
    CacheHelper.removeData(key: "token");
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) =>  Login()),
    );
  }
}