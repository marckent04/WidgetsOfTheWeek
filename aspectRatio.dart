import 'package:flutter/material.dart';
import 'package:flutterdoc/ui/widPart.dart';

class AspectRatioPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('AspectRatio'),
      body: Center(
        child: AspectRatio(
          aspectRatio: 4 / 3,
          child: Container(
            color: Colors.green,
            child: SizedBox(),
          ),
        ),
      ),
    );
  }
}
