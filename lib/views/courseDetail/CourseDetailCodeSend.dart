// ignore_for_file: file_names

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../constant.dart';


class AlertDialoCodeSend extends StatelessWidget {
  const AlertDialoCodeSend({Key? key, this.onTap}) : super(key: key);
  final Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: MediaQuery.of(context).size.width * 0.85,
      child: ElevatedButton(
        onPressed: onTap,
        child: const Text(
          "Get Course",
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
    );
  }


}
