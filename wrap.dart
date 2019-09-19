import 'package:flutter/material.dart';


class WrapPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: ListView(
              children: <Widget>[
                Wrap(
                  runSpacing: 10,
                  spacing: 30,
                  children: <Widget>[
                    Card(
                      color: Colors.green,
                      child: Container(
                          height: 150,
                          width: 150,
                          child: SizedBox()
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      child: Container(
                          height: 150,
                          width: 150,
                          child: SizedBox()
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      child: Container(
                          height: 150,
                          width: 150,
                          child: SizedBox()
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      child: Container(
                          height: 150,
                          width: 150,
                          child: SizedBox()
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      child: Container(
                          height: 150,
                          width: 150,
                          child: SizedBox()
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      child: Container(
                          height: 150,
                          width: 150,
                          child: SizedBox()
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      child: Container(
                          height: 150,
                          width: 150,
                          child: SizedBox()
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      child: Container(
                          height: 150,
                          width: 150,
                          child: SizedBox()
                      ),
                    ),
                    Card(
                      color: Colors.green,
                      child: Container(
                          height: 150,
                          width: 150,
                          child: SizedBox()
                      ),
                    ),
                  ],
                ),
              ],
            )
          )
      ),
    );
  }
}
