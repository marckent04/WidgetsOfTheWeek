import 'package:flutter/material.dart';


class ListViewPage extends StatefulWidget {
  @override
  _ListViewPageState createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {

  List items = ['ConstraineeBox', 'AnimatedOpacity', 'Table', 'Wrap', 'ListViewBuilder'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView.builder(
          itemCount: items.length,
            itemBuilder: (context, i) {
              return Dismissible(key: Key(i.toString()),
                  child: ListTile(
                    title: Text(items[i]),
                  ),
                direction: DismissDirection.horizontal,
                onDismissed: (direction) {
                  if (direction == DismissDirection.endToStart) {
                    print('end to start');
                  } else {
                    print('start to end');
                  }
                },
                background: Container(
                  padding: EdgeInsets.only(right: 20),
                  color: Colors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Icon(Icons.check_circle, color: Colors.white),
                      Text('Supprimer', style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),
                secondaryBackground: Container(
                  padding: EdgeInsets.only(right: 20),
                  color: Colors.red,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Icon(Icons.delete, color: Colors.white),
                      Text('Supprimer', style: TextStyle(color: Colors.white),)
                    ],
                  ),
                ),

              );
            }
        ),
      ),
    );
  }
}
