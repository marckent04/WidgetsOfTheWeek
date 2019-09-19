import 'package:flutter/material.dart';

class AnimatedPaddingPage extends StatefulWidget {
  @override
  _AnimatedPaddingPageState createState() => _AnimatedPaddingPageState();
}

class _AnimatedPaddingPageState extends State<AnimatedPaddingPage> {
  double paddingVal = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedPadding(
              padding: EdgeInsets.all(paddingVal),
              duration: Duration(seconds: 2),
              curve: Curves.bounceInOut,
              child: Container(
                height: 200,
                width: 200,
                child: SizedBox(),
                color: Colors.lightBlueAccent,
              ),
            ),
            AnimatedPadding(
              padding: EdgeInsets.all(paddingVal),
              duration: Duration(seconds: 2),
              curve: Curves.bounceInOut,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    if (paddingVal == 0)
                        paddingVal = 50;
                    else if (paddingVal == 50)
                      paddingVal = 0;
                  });
                },
                child: Container(
                  height: 200,
                  width: 200,
                  color: Colors.purpleAccent,
                ),
              )
            ),
          ],
        ),
      ),
    );
  }
}
