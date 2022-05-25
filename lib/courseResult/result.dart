
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant.dart';
import 'inCourse.dart';
class Result extends StatelessWidget {
  const Result({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black,) ,onPressed:()=>Get.back() ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Result",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [


            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/resultimg.png"),
                  )),
            ),
            const Text(
              "Waiting for the Result",
              style: TextStyle(color: Colors.black, fontSize: 18,fontWeight:FontWeight.bold),
            ),
            const Text(
              "Lorem ipsum dolor sit amet, \nconsectetur adipiscing elit, sed do  ",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),

            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.85,
              child: ElevatedButton(
                onPressed: (){
                  Get.to(InCourse());

                },

                child: const Text(
                  "Go to Course",
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  primary: Constant.primary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  elevation: 0,
                  padding: EdgeInsets.all(18),
                  textStyle: TextStyle(fontSize: 18),
                ),
              ),
            )

          ],
        ),
      ),
    );
  }
}
