import 'package:flutter/material.dart';

class AnimatedIconPage extends StatefulWidget {
  @override
  _AnimatedIconPageState createState() => _AnimatedIconPageState();
}

class _AnimatedIconPageState extends State<AnimatedIconPage> with SingleTickerProviderStateMixin{
  AnimationController _controller;


  @override
  void initState() {
    super.initState();
    _controller = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            AnimatedIcon(
                icon: AnimatedIcons.arrow_menu,
                progress: _controller
            ),
            RaisedButton(
                onPressed:() {
                  if (_controller.value == 1.0)
                    _controller.reverse();
                  else
                    _controller.forward();
                },
                child: Text('change'),
            )
          ],
        )
      ),
    );
  }
}
