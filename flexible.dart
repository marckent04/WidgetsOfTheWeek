import 'package:flutter/material.dart';

class FlexiblePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Container(height: 100, color: Colors.cyan),
          Flexible(flex: 1, child: Container(color: Colors.teal)),
          Flexible(flex: 1, child: Container(color: Colors.indigo)),
        ],
      ),
    );
  }
}
