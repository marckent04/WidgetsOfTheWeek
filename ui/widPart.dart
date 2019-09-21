import 'package:flutter/material.dart';


AppBar appbar(String title) {
  return AppBar(
    title: Text(title),
    centerTitle: true,
  );
}

Text myText(String text,double size) {
  return Text(
    text,
    style: TextStyle(
        fontSize: size, fontWeight: FontWeight.bold
    ),
  );
}