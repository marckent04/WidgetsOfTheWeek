import 'package:flutter/material.dart';
import 'package:flutterdoc/ui/widPart.dart';

class ConstrainedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('ConstreinedBox'),
      body: Column(
        children: <Widget>[
          Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: MediaQuery.of(context).size.height / 4
                    ),
                    child: Container(
                      color: Colors.purpleAccent,
                      child: Center(
                        child: myText('Container enfant de Constraint Box dans un COlumn', 20),
                      ),
                    ),
                  )
                ],
              )

          ),
          Expanded(
              flex: 1,
              child: Column(
                children: <Widget>[
                  Container(
                    color: Colors.teal,
                    child: Center(
                      child: myText('Container seul dans un column', 20),
                    ),
                  ),
                ],
              ),

          )

        ],
      ),
    );
  }
}
