import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget defaultButton({
  double width = double.infinity,
  Color background = Colors.blue,
  bool isUpperCase =true,
  double radius =0,
  required VoidCallback onPressed,
  required String text
}) => Container(
      width: width,
      child: MaterialButton(
        onPressed: onPressed,
        child: Text(
            isUpperCase ? text.toUpperCase() : text,
          style: TextStyle(color: Colors.white),
        ),
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(
          radius,
        ),
        color: background,
      ),


);
