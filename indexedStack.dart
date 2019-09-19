import 'package:flutter/material.dart';

class IndexedStacksPage extends StatefulWidget {
  @override
  _IndexedStacksPageState createState() => _IndexedStacksPageState();
}

class _IndexedStacksPageState extends State<IndexedStacksPage> {

  int indexStack = 0;

  double slideValue = 0;

  List<Color> bottomColors = [Colors.orange, Colors.white];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              color: Colors.grey,
              height: 400,
              width: 400,
              child: IndexedStack(
                alignment: AlignmentDirectional.center,
                index: indexStack,
                children: <Widget>[
                  Container(
                    height: 300,
                    width: 300,
                    child: SizedBox(),
                    color: Colors.red,
                  ),
                  Container(
                    child: SizedBox(),
                    height: 300,
                    width: 300,
                    color: Colors.orange,
                  ),
                  Container(
                    child: SizedBox(),
                    height: 300,
                    width: 300,
                    color: Colors.yellow,
                  ),
                  Container(
                    child: SizedBox(),
                    height: 300,
                    width: 300,
                    color: Colors.green,
                  ),
                  Container(
                    child: SizedBox(),
                    height: 300,
                    width: 300,
                    color: Colors.blue,
                  ),
                  Container(
                    child: SizedBox(),
                    height: 300,
                    width: 300,
                    color: Colors.indigo,
                  ),
                  Container(
                    height: 300,
                    width: 300,
                    child: SizedBox(),
                    color: Colors.purple,
                  ),
                ],
              ),
            ),
            Row(
              children: <Widget>[
                Expanded(
                  flex: 1,
                  child: Slider(
                      min: 0,
                      max: 6,
//                      divisions: 6,
                      value: slideValue,
                      onChanged: (value) {
//                        print(value);
                        setState(() {
                          slideValue = value;
                          indexStack = value.toInt();
//                indexStack =
                        });
                      }
                  ),
                )

              ],
            )

          ],
        ),
      ),
      );
  }
}
