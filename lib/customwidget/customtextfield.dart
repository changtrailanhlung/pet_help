import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  String hint;
  bool issecured;

  CustomTextField({this.hint, this.issecured});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(left: 25, right: 25),
        child: TextField(obscureText: issecured,
          cursorColor: Colors.black,
          style: TextStyle(color: Colors.black),
          decoration: InputDecoration(
              disabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.transparent),
                borderRadius: BorderRadius.circular(25),
              ),
              hintText: hint,
              hintStyle: TextStyle(
                  fontSize: 18,
                  letterSpacing: 1.5,
                  color: Colors.grey,
                  fontWeight: FontWeight.w900
              ),
              filled: true,
              hoverColor: Colors.transparent,
              focusColor: Colors.transparent,
              fillColor: Colors.white.withOpacity(.3),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(25),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.black),
                borderRadius: BorderRadius.circular(25),
              )),
        ));
  }
}
