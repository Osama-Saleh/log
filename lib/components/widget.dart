import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

Widget defaultTextField({
  required IconData icons,
  required bool obscureText,
  required String? hinttext,
  required TextInputType? type,
}) {
  return Material(
    color: Colors.white,
    elevation: 5,
    borderRadius: BorderRadius.circular(30),
    child: TextFormField(
      style: TextStyle(color: Colors.blueAccent),
      obscureText: obscureText,
      keyboardType: type,
      decoration: InputDecoration(
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
          borderSide: BorderSide(color: Colors.blueAccent),
        ),
        border: InputBorder.none,
        prefixIcon: Icon(
          icons,
        ),
        hintText: hinttext,
        hintStyle: TextStyle(
          color: Colors.grey,
        ),
      ),
    ),
  );
}

Widget defaultbutton({
  required String text,
  required Color colorbutton,
  FontWeight? fontweight,
}) {
  return MaterialButton(
    color: colorbutton,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(20),
    ),
    onPressed: () {},
    child: Text(
      text,
      style: TextStyle(fontWeight: fontweight, color: Colors.white),
    ),
  );
}
