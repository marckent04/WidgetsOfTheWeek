import 'package:flutter/material.dart';

class FittedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Center(
        child: Container(
          color: Colors.tealAccent,
          height: 300,
//          width: MediaQuery.of(context).size.width,
          child: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.topLeft,
//            width:MediaQuery.of(context).size.width/3,
            child: Image.asset(
              'asset/images/programming.jpeg',
              height: 500,
            ),
          )
        ),
      ),
    );
  }
}
