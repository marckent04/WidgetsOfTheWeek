import 'package:flutter/material.dart';

class OpacityPage extends StatefulWidget {
  @override
  _OpacityPageState createState() => _OpacityPageState();
}

class _OpacityPageState extends State<OpacityPage> {

  double _myOpacity = 1;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              child: SizedBox(),
              color: Colors.green,
            ),
            AnimatedOpacity(
              duration: Duration(seconds: 2),
              opacity: _myOpacity,
              child: Container(
                height: 100,
                width: 100,
                child: SizedBox(),
                color: Colors.blueGrey,
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: SizedBox(),
              color: Colors.yellowAccent,
            ),
            RaisedButton(
                onPressed: () {
                  setState(() {
                    if (_myOpacity == 1)
                      _myOpacity = 0.0;
                    else
                      _myOpacity = 1;
                  });
                },
              child: Text('ok'),
            )
          ],
        )
      ),
    );
  }
}
