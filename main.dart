import 'package:flutter/material.dart';
import 'package:flutterdoc/ui/lidt.dart';
import 'package:flutterdoc/widgets/animatedList.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => WidgetsList()
      },
    );
  }
}