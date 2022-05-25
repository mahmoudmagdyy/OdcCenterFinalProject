// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:odc_hackathon/constant.dart';
import 'package:odc_hackathon/views/homePage/myCourses.dart';
import 'package:odc_hackathon/views/homePage/webDevelop.dart';
import 'package:odc_hackathon/views/profile/myProfile.dart';

import 'coursess.dart';
import 'homPage.dart';


class BottomNaveBar extends StatefulWidget {
  const BottomNaveBar({Key? key}) : super(key: key);

  @override
  _BottomNaveBarState createState() => _BottomNaveBarState();
}

class _BottomNaveBarState extends State<BottomNaveBar> {
  @override
  int pageIndex = 0;

  final pages = [
    const HomePage(),
    const MyCourses(),
     MyProfile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffC4DFCB),
      body: pages[pageIndex],
      bottomNavigationBar: Container(
        height: 60,
        decoration: const BoxDecoration(
          color: Color(0xffFBFBFB),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 0;
                });
              },
              icon: pageIndex == 0
                  ?  Icon(
                Icons.home_outlined,
                color: Constant.primary,
                size: 25,
              )
                  : const Icon(
                Icons.home_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              icon: pageIndex == 1
                  ?  Icon(
                Icons.menu_book,
                color: Constant.primary,
                size: 25,
              )
                  : const Icon(
                Icons.menu_book,
                color: Colors.black,
                size: 25,
              ),
            ),
            IconButton(
              enableFeedback: false,
              onPressed: () {
                setState(() {
                  pageIndex = 2;
                });
              },
              icon: pageIndex == 2
                  ?  Icon(
                Icons.person_outline_outlined,
                color: Constant.primary,
                size: 25,
              )
                  : const Icon(
                Icons.person_outline_outlined,
                color: Colors.black,
                size: 25,
              ),
            ),

          ],
        ),
      ),
    );
  }
}
