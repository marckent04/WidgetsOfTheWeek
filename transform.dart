import 'dart:math';

import 'package:flutter/material.dart';

class TransformPage extends StatefulWidget {
  @override
  _TransformPageState createState() => _TransformPageState();
}

class _TransformPageState extends State<TransformPage> {
  double rotate = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Transform.rotate(
              angle: rotate,
              child: Icon(Icons.loop, size: 100, color: Colors.blueAccent,),
            ),
            MaterialButton(
              color: Colors.greenAccent,
              child: Text('TOURNER'),
              onPressed: () {
                setState(() {
                    if (rotate == 0)
                      rotate = pi/4;
                    else if (rotate == pi/4)
                      rotate = pi/2;
                    else if (rotate == pi/2)
                      rotate = 2.36;
                    else if (rotate == 2.36)
                      rotate = pi;
                    else if (rotate == pi)
                      rotate = pi*5/4;
                    else if (rotate == pi*5/4)
                      rotate = pi*3/2;
                    else if (rotate == pi*3/2)
                      rotate = 5.5;
                    else if (rotate == 5.5)
                      rotate = 0;
                });
              },
            )
          ],
      ),
    );
  }
}
