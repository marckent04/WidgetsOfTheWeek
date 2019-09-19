import 'package:flutter/material.dart';


class StacksPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          overflow: Overflow.visible,
          alignment: AlignmentDirectional.center,
          children: <Widget>[
            Positioned(
              bottom: -50,
              right: -50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.red,
                child: SizedBox(),
              ),
            ),
            Opacity(
              opacity: 1,
              child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  child: SizedBox()
              ),
            ),
            Positioned(
              top: -50,
              left: -50,
              child: Container(
                height: 100,
                width: 100,
                color: Colors.blueAccent,
                child: SizedBox(),
              ),
            ),
            Positioned(
              bottom: -100,
              child: RichText(
                text: TextSpan(
                  style: TextStyle(color: Colors.cyan, fontSize: 30, fontWeight: FontWeight.bold),
                  children: <TextSpan>[
                    TextSpan(text: "Welcome to "),
                    TextSpan(text: "Stack APP", style: TextStyle(
                      decoration: TextDecoration.underline,
                      color: Colors.blueAccent,
                      fontStyle: FontStyle.italic
                    ))
                  ]
                ),
              ),
            )

          ],
        ),
      )
    );
  }
}
