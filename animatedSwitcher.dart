import 'package:flutter/material.dart';

class AnimatedSwitcherPage extends StatefulWidget {
  @override
  _AnimatedSwitcherPageState createState() => _AnimatedSwitcherPageState();
}

class _AnimatedSwitcherPageState extends State<AnimatedSwitcherPage> {
  String text = "vous n'aimez pas";
  bool isLiked = false;
  final like = Icon(Icons.favorite, size: 50, color: Colors.redAccent,);
  final unlike = Icon(Icons.favorite_border, size: 50, color: Colors.deepOrangeAccent,);
  var status = Icon(Icons.favorite_border, size: 50, color: Colors.deepOrangeAccent,);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          GestureDetector(
            onTap: () {
              if (isLiked) {
                setState(() {
                  status = unlike;
                  text = "Vous m'aimez pas";
                });
              } else {
                setState(() {
                  status = like;
                  text = "Vous aimez";
                });
              }

              isLiked = !isLiked;

            },
            child: AnimatedSwitcher(
              duration: Duration(seconds: 2),
              child: status,
            ),
          ),
          Text(text, style: TextStyle(color: Colors.redAccent, fontSize: 20),)
        ],
      )
    ));
  }
}
