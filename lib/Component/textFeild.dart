// ignore_for_file: file_names

import 'package:flutter/material.dart';

import '../constant.dart';

class TextFeild extends StatelessWidget {
  TextFeild({Key? key,
    this.controller,
    required this.name,
    this.icon,
    required this.obscureText,
    this.onChange,
    this.validator,
    this.errorText,
    this.keyboardType})
      : super(key: key);
  var keyboardType;
  var errorText;
  String name;
  bool obscureText;
  Icon? icon;
  Function(String)? onChange;
  var validator;
  var controller ;

  @override
  Widget build(BuildContext context) {
    var hight = MediaQuery
        .of(context)
        .size
        .height;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: hight * 0.08,
        decoration: BoxDecoration(
            color: Constant.grey.withOpacity(0.2),
            borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.fromLTRB(10, 3, 10, 0),
        child: TextFormField(
          controller:controller,
          validator: validator,
          onChanged: onChange,
          obscureText: obscureText,
          keyboardType: keyboardType,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: name,
            prefixIcon: icon,
            errorText: errorText,

          ),
        ),
      ),
    );
  }
}
