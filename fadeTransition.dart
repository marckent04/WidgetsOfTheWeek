import 'package:flutter/material.dart';

class Ftransition extends StatefulWidget {
  @override
  _FtransitionState createState() => _FtransitionState();
}

class _FtransitionState extends State<Ftransition> with SingleTickerProviderStateMixin{

  AnimationController _animation;


  @override
  void initState() {
    super.initState();
    _animation = AnimationController(
      vsync: this,
      duration: Duration(seconds: 3)
    );

    final _anim = Tween(
        begin: 0.0,
        end: 1.0
    ).animate(_animation);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          FadeTransition(
            opacity: _animation,
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: 200,
                  minWidth: 200
              ),
              child: Card(
                color: Colors.blueAccent,
              ),
            ),
          ),
          RaisedButton(
            color: Colors.purpleAccent,
            onPressed: () {
              if (_animation.value == 1)
                _animation.reverse();
              else
                _animation.forward();
            },
            child: Text('transition'),
          )
        ],
      ),
    );
  }
}
