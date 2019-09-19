import 'package:flutter/material.dart';

class AnimatedListPage extends StatefulWidget {
  @override
  _AnimatedListPageState createState() => _AnimatedListPageState();
}

class _AnimatedListPageState extends State<AnimatedListPage> with SingleTickerProviderStateMixin{

  final _listKey = GlobalKey<AnimatedListState>();

  List items = ['Nanguy', 'Marc', 'Henry', 'Emmanuelle', 'Akissi', 'Aminata'];

  ListTile listItem(String name) {
    return ListTile(
      title: Text(name),
    );
  }
  AnimationController _animation;

  var tween = Tween<double>(begin: -200, end: 0);

  @override
  void initState() {
    super.initState();
    _animation = AnimationController(vsync: this, duration: Duration(milliseconds: 300));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: AnimatedList(
          key: _listKey,
          initialItemCount: items.length,
            itemBuilder: (context, index, animation) {
            print(index);
              return SlideTransition(
                  position: _animation.drive(Tween()),
                  child: listItem(items[index]),
              );
            }
        ),
      ),
    );
  }
}
