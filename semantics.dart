import 'package:flutter/material.dart';

class SemanticsPage extends StatefulWidget {
  @override
  _SemanticsPageState createState() => _SemanticsPageState();
}

class _SemanticsPageState extends State<SemanticsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Semantics(
            child: RaisedButton(child: Text('ok'), color: Colors.red, onPressed: () {},),
            label: 'Image de programmation',
            onTap: () {
              print('ok');
            },
          )
        ],
      )
    );
  }
}
