import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant.dart';
import 'package:progress_timeline/progress_timeline.dart';
class InCourse extends StatefulWidget {
  const InCourse({Key? key}) : super(key: key);

  @override
  State<InCourse> createState() => _InCourseState();
}

class _InCourseState extends State<InCourse> {
  ProgressTimeline screenProgress=ProgressTimeline();

  List<SingleState> allStages = [
    SingleState(stateTitle: "Session 1"),
    SingleState(stateTitle: "Quiz 1 "),
    SingleState(stateTitle: "Session 2"),
    SingleState(stateTitle: "Quiz 2 "),
   // SingleState(stateTitle: "Final Project"),

  ];
  @override
  void initState() {
    screenProgress = new ProgressTimeline(
      states: allStages,

      iconSize: 25,
      connectorColor: Constant.primary,

    );

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.all(7.0),
                child: Stack(
                    children:[
                      Container(
                        width: MediaQuery.of(context).size.width * 0.92,
                        height: 220,
                        decoration: BoxDecoration(
                            image: const DecorationImage(
                                fit: BoxFit.fill,
                                image:
                                AssetImage("assets/images/image.png")),
                            borderRadius: BorderRadius.circular(11)),
                        padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
                      ),
                      Positioned(
                          left: 10,
                          top: 10,
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.withOpacity(0.5)
                            ),
                            child: IconButton(
                              icon: Icon(Icons.arrow_back),
                              onPressed: ()=>Get.back(),
                            ),
                          ))
                    ]
                )),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Learn UI/UX for Beginners",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Center(
              child: Text(
                "Author: Ahmed Abaza",
                style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
              ),
            ),
            const SizedBox(
              height: 10,
            ),



            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Center(child: screenProgress),
            ),



            Row(
              children: const [
                Icon(Icons.location_on),
                SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "Cairo",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: const [
                Icon(Icons.access_time),
                const SizedBox(
                  width: 10,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8),
                  child: Text(
                    "27/4/2022, 10:30 am",
                    style: TextStyle(fontSize: 18, color: Colors.black),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Scan your QR Code to take your attendance",
              style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/images/qr.png")
                  )
                ),
              ),
            )


          ],
        ),
      ),
    ) ;
  }

  Text buildText(text) {
    return Text(
      text,
      style: TextStyle(
          fontWeight: FontWeight.bold, fontSize: 12, color: Constant.grey1),
    );
  }
}
