import 'package:flutter/material.dart';
import 'package:progress_timeline/progress_timeline.dart';
import '../../../constant.dart';
import 'package:get/get.dart';

import '../courseResult/result.dart';


class CourseExam extends StatefulWidget {
  CourseExam({Key? key,this.step}) : super(key: key);
  var step ;
  @override
  State<CourseExam> createState() => _CourseExamState();
}

class _CourseExamState extends State<CourseExam> {
  ProgressTimeline screenProgress=ProgressTimeline();

  List<SingleState> allStages = [
    SingleState(stateTitle: "Exam"),
    SingleState(stateTitle: "HR interview "),
    SingleState(stateTitle: "Complete"),
  ];

  @override
  void initState() {
    screenProgress = new ProgressTimeline(
      states: allStages,

      iconSize: 35,
      connectorColor: Constant.primary,

    );

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(icon:Icon(Icons.arrow_back,color: Colors.black,) ,onPressed:()=>Get.back() ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          "Course Exam",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
        child: Column(

          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0),
              child: Center(child: screenProgress),
            ),
            const Text(
              "Learn UI/UX for Beginners",
              style: TextStyle(color: Colors.black, fontSize: 18,fontWeight:FontWeight.bold),
            ),

            Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/courseexamimage.png"),
                  )),
            ),
            const Text(
              "Start your exam",
              style: TextStyle(color: Colors.black, fontSize: 18,fontWeight:FontWeight.bold),
            ),
            const Text(
              "Make Sure to Achieve More Than 60% ",
              style: TextStyle(color: Colors.black, fontSize: 16),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Text(
                  "Exam Time",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
                Text(
                  "1 Hr",
                  style: TextStyle(color: Colors.black, fontSize: 18),
                )
              ],
            ),
            SizedBox(
              height: 60,
              width: MediaQuery.of(context).size.width * 0.85,
              child: ElevatedButton(
                onPressed: (){
                  screenProgress.gotoNextStage();
                  Get.to(Result());


                },

                child: const Text(
                  "Start",
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
