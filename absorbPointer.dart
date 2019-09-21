import 'package:flutter/material.dart';

class AbsorbPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: AbsorbPointer(
          child: RaisedButton(
            child: Text('appuyer'),
              onPressed: () {
                print('ok');
              }
          ),
        ),
      ),
    );
  }
}
