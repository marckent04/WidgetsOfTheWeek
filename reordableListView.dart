import 'package:flutter/material.dart';
import 'package:flutterdoc/ui/widPart.dart';


class ReListVPage extends StatefulWidget {
  @override
  _ReListVPageState createState() => _ReListVPageState();
}


class _ReListVPageState extends State<ReListVPage> {
  List<String> words = ['Bonjour', 'Bonsoir', 'Bon apres-midi'];

  Key valueKey(elt) {
    print(words.indexOf(elt).toString());
//    print(Key(words.indexOf(elt).toString()));
    return Key(words.indexOf(elt).toString());
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar('ReoardableListView'),
      body: GestureDetector(
        child: ReorderableListView(
            header: Text('liste reodornable'),
            onReorder: (oldI, newI) {
              print(oldI.toString() + ' et ' + newI.toString());
            },
            children: [
              for (final word in words)
                ListTile(
                    key: ValueKey(word),
                    title: Text(word)
                )
            ]
        ),
      ),
    );
  }
}
