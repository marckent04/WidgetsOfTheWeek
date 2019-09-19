import 'package:flutter/material.dart';

class RichTextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: RichText(
            text: TextSpan(
              style: TextStyle(fontStyle: FontStyle.italic,color: Colors.black, fontSize: 23),
              children: <TextSpan>[
                TextSpan(text: 'Coder', style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Colors.purpleAccent
                )),
                TextSpan(text: " c'est pas ", style: TextStyle(
                )),
                TextSpan(text: "Sorcier")
              ]
            )
        ),
      ),
    );
  }
}
