import 'package:flutter/material.dart';
import 'package:odc_hackathon/constant.dart';
import 'package:get/get.dart';

import '../../controller/profile_services.dart';

class MyProfile extends StatelessWidget {
   MyProfile({Key? key}) : super(key: key);
  final _profileController = Get.put(ProfileServices());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

        elevation: 0,
        backgroundColor: Colors.white,
        title: Text(
          "MyProfile",
          style: TextStyle(color: Constant.primary),
        ),
        actions: [
          IconButton(
              onPressed: () {
                showGeneralDialog(
                    context: context,
                    barrierDismissible: true,
                    barrierLabel:
                    MaterialLocalizations.of(context).modalBarrierDismissLabel,
                    barrierColor: Colors.black45,
                    transitionDuration: const Duration(milliseconds: 200),
                    pageBuilder: (BuildContext buildContext, Animation animation,
                        Animation secondaryAnimation) {
                      return Center(
                        child: SizedBox(
                          height: 300,
                          width: 300,
                          child: Card(
                            elevation: 3,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Container(
                                  height:170,
                                  width: 170,
                                  decoration: const BoxDecoration(
                                      image: DecorationImage(
                                        fit: BoxFit.cover,
                                        image: AssetImage("assets/images/logoutimg.png"),
                                      )),
                                ),
                                const Text(
                                  "Are you sure you want to log out",
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  children: [
                                    ElevatedButton(
                                      onPressed: ()=>Get.back(),
                                      child: const Text(
                                        "Cancel",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Constant.primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        elevation: 0,
                                        padding: EdgeInsets.all(2),
                                        textStyle: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                    ElevatedButton(
                                      onPressed: () {
                                        _profileController.logout();
                                      },
                                      child: const Text(
                                        "LogOut",
                                        style: TextStyle(
                                          color: Colors.white,
                                        ),
                                      ),
                                      style: ElevatedButton.styleFrom(
                                        primary: Constant.primary,
                                        shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10),
                                        ),
                                        elevation: 0,
                                        padding: EdgeInsets.all(2),
                                        textStyle: TextStyle(fontSize: 18),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    });
              },
              icon: Icon(
                Icons.logout,
                color: Constant.primary,
              ))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 25),
                  child: CircleAvatar(
                    backgroundColor: Constant.primary,
                    radius: 60,
                    child: CircleAvatar(
                      backgroundImage: AssetImage("assets/images/profile.png"),
                      radius: 50,
                    ), //CircleAvatar
                  ),
                ),
                buildText("Ahmed Abaza"),
                buildText2("Ahmedabaza@gmail.com")
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
            child: Text(
              "My Achievement",
              style: TextStyle(
                  fontSize: 18,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: [
                Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Container(
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: 70,
                      decoration: BoxDecoration(
                          image: const DecorationImage(
                              fit: BoxFit.contain,
                              image: AssetImage("assets/images/imglist.png")),
                          borderRadius: BorderRadius.circular(5)),
                      padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                    )),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // text with font size 20
                    buildText("Learn UI/UX for beginners"),
                    // text with font size 16
                    buildText2("Achieved April 21 2022",),
                  ],
                )
              ],
            ),
          )
        ],
      ),
      //Center,
    );
  }

  Text buildText2(txt) {
    return Text(
      "Achieved April 21 2022",
      style: TextStyle(fontSize: 16, color: Colors.grey),
    );
  }

  Text buildText(txt) {
    return Text(
      txt  ,
      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
    );
  }
}
