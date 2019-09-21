import 'package:flutter/material.dart';

class ClipRrectPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Container(
          width: 200,
          child: ClipRRect(
            clipBehavior: Clip.hardEdge,
            borderRadius: BorderRadius.circular(50),
            child: Image.network('https://www.remove.bg/images/samples/combined/s1.jpg'),
          ),
        ),
      ),
    );
  }
}
