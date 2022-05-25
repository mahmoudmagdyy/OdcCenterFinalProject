
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:odc_hackathon/Component/textFeild.dart';


import '../../constant.dart';

class MyCourses extends StatelessWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white,
          elevation: 0,
          title: const Text(
            "MyCourses",
            style: TextStyle(color: Colors.black),
          )),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child:Column(
            children: [

              Row(

                children: [
                  Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: Container(
                        width: 70,
                        height: 70,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                    "assets/images/categoryicon3.png")),
                            borderRadius: BorderRadius.circular(11)),
                        padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                      )),
                  SizedBox(width: 15,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children:  [
                      const Text("Learn UI/UX for Beginners",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold),),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            "Ahmed Abaza",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Constant.grey1),
                          ),
                          const SizedBox(
                            width: 7,
                          ),
                          Text(
                            "15 Hours",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12,
                                color: Constant.grey1),
                          )
                        ],
                      )

                    ],
                  )
                ],
              )
            ],
          ),

        ),
      ),
    );
  }
}