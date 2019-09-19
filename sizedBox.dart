import 'package:flutter/material.dart';

class forChildren extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          SizedBox(
            height: 200,
            width: double.infinity,
            child: RaisedButton(
              color: Colors.greenAccent,
              onPressed: () {},
              child: Align(
                alignment: Alignment(-1, -1),
                child: Text('appuyer')
              )
            )
          )
        ],
      ),
    );
  }
}
