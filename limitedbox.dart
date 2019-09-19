import 'package:flutter/material.dart';
import 'package:flutterdoc/ui/widPart.dart';

class LimitedBoxPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('LimitedBox'),
      body: Container(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text(
                'LimitedBox height: 150 dans container 300px : Taille pas respectee',
                style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
                ),
            ),
            Container(
              height: 300,
              width: 300,
              color: Colors.redAccent,
              child: LimitedBox(
                maxHeight: 150,
                maxWidth: 150,
                child: Container(
                  color: Colors.green,
                ),
              ),
            ),
            Divider(),
            Text(
              'Meme limitedBox en tant qie simple parent : Taille respectee',
              style: TextStyle(
                  fontSize: 20, fontWeight: FontWeight.bold
              ),
            ),
            LimitedBox(
              maxHeight: 150,
              maxWidth: 150,
              child: Container(
                color: Colors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
