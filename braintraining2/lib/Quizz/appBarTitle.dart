import 'package:flutter/material.dart';

Widget appBar(BuildContext context) {

  return RichText(
    text: TextSpan(
      style: TextStyle(fontSize: 25),
      children: <TextSpan>[
        TextSpan(text: "Trắc nghiệm" ,style: TextStyle(color: Colors.black,fontWeight: FontWeight.w600)),
        TextSpan(text: " Vui" ,style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w800)),
      ]
    )
    );
}
