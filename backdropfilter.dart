import 'dart:ui';

import 'package:flutter/material.dart';

class BackDropPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaY: 10, sigmaX: 10),

          child: Image.network('https://www.remove.bg/images/samples/combined/s1.jpg'),
        ),
      ),
    );
  }
}
