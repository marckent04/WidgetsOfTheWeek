import 'package:flutter/material.dart';

class TooltipPage extends StatefulWidget {
  @override
  _TooltipPageState createState() => _TooltipPageState();
}

class _TooltipPageState extends State<TooltipPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Tooltip(
            message: 'Une description',
          child: Icon(Icons.description, size: 50, color: Colors.green,),
        ),
      ),
    );
  }
}
