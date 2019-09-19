import 'package:flutter/material.dart';

class AnimatePositionedPage extends StatefulWidget {
  @override
  _AnimatePositionedPageState createState() => _AnimatePositionedPageState();
}

class _AnimatePositionedPageState extends State<AnimatePositionedPage> {

  bool showSms = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Stack(
          alignment: Alignment.center,
          children: <Widget>[
            Positioned(
                bottom: 20,
                right: 20,
                child: Container(
                  color: Colors.green,
                    child: Text('Il se deplace !!', style: TextStyle(fontSize: 25, color: Colors.white),))
            ),
            AnimatedPositioned(
                bottom: showSms ? 70 : 10,
                right: 10,
                child: Card(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        showSms = !showSms;
                      });
                    },
                    child: Container(
                      color: Colors.orangeAccent,
                      height: 200,
                      width: 200,
                      child: SizedBox(),
                    ),
                  ),
                ),
                duration: Duration(milliseconds: 500)
            )
          ],
        ),
      )
    );
  }
}
