import 'package:flutter/material.dart';

class TablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Table(
          children: <TableRow>[
            TableRow(
                children: [
                  Container(
                    height: 200,
                    color: Colors.yellowAccent,
                    child: SizedBox(),
                  ),
                  Container(
                    height: 200,
                    color: Colors.orangeAccent,
                    child: SizedBox(),
                  ),
                  Container(
                    height: 200,
                    color: Colors.blueGrey,
                    child: SizedBox(),
                  ),
                ]
            ),
            TableRow(
                children: [
                  Container(
                    height: 200,
                    color: Colors.redAccent,
                    child: SizedBox(),
                  ),
                  Container(
                    height: 200,
                    color: Colors.blueAccent,
                    child: SizedBox(),
                  ),
                  Container(
                    height: 200,
                    color: Colors.pinkAccent,
                    child: SizedBox(),
                  ),
                ]
            ),
          ],
        ),
      ),
    );
  }
}
