import 'package:flutter/material.dart';



class One extends StatelessWidget {
  One(this.colors);
  final List<Color> colors;
  @override
  Widget build(BuildContext context) {
    var colors = ColorInfo.of(context).colors;
    return Two(colors);
  }

}

class Two extends StatelessWidget {
  Two(this.colors);
  final List<Color> colors;
  @override
  Widget build(BuildContext context) => Three(colors);
}

class Three extends StatelessWidget {
  Three(this.colors);
  final List<Color> colors;
  @override
  Widget build(BuildContext context) => Three(colors);
}



class ColorInfo extends InheritedWidget {
  ColorInfo({this.colors, Widget child}): super(child: child);
  final List<Color> colors;
  bool updateShouldNotify(ColorInfo oldWidget) => oldWidget.colors != colors;
  static ColorInfo of(BuildContext context) => context.inheritFromWidgetOfExactType(ColorInfo) as ColorInfo;
}
