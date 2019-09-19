import 'package:flutter/material.dart';

class SpacerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Row(
          children: <Widget>[
            Container(
              color: Colors.purpleAccent,
              height: 100,
              width: 100,
              child: SizedBox(),
            ),
            Container(
              color: Colors.blueAccent,
              height: 100,
              width: 100,
              child: SizedBox(),
            ),
            Spacer(flex: 3,),
            Container(
              color: Colors.redAccent,
              height: 100,
              width: 100,
              child: SizedBox(),
            ),
            Spacer(flex: 2)

          ],
        ),
      ),
    );
  }
}
