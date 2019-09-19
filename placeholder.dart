import 'package:flutter/material.dart';

class PlaceholderPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Placeholder(
          fallbackWidth: 100,
          fallbackHeight: 50,
          color: Colors.green,
          strokeWidth: 2,
        ),
      ),
    );
  }
}
