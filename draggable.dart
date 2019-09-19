import 'package:flutter/material.dart';




class DraggablePage extends StatefulWidget {
  @override
  _DraggablePageState createState() => _DraggablePageState();
}

class _DraggablePageState extends State<DraggablePage> {

  Color result = Colors.red;

  final snackBar = SnackBar(
    content: Text('Bravo ')
  );

  final _scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: result,
        title: Text('Draggable', style: TextStyle(color: Colors.white),),
      ),
      body: Column(
        children: <Widget>[
          Draggable<int>(
            data: 2,
            child: Container(
              color: Colors.blueAccent,
              height: 60,
              width: 60,
              child: Center(child: Text('12', style: TextStyle(color: Colors.white))),
            ),
            feedback: Container(
              height: 80,
              width: 80,
              decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Center(child: Text('12', style: TextStyle(color: Colors.white),)),
            ),
            childWhenDragging: Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Container(),
            ),


          ),
          SizedBox(height: 100,),
          Container(
            height: 50,
            width: 50,
            decoration: BoxDecoration(
              color: Colors.green
            ),
            child:  DragTarget<int>(
              onWillAccept: (value) => value == 2,
              onAccept: (value) {
                print(value);
//                Scaffold.of(context).showSnackBar(snackBar);
                _scaffoldKey.currentState.showSnackBar(snackBar);


              },
              onLeave: (value) {
                print(value);
                print('desole');
              },
              builder: (context, candidates, rejects) {
                if (candidates.length > 0) {
                  return  Container(
                    height: 80,
                    width: 80,
                    decoration: BoxDecoration(
                        color: Colors.lightBlueAccent,
                        borderRadius: BorderRadius.circular(10)
                    ),
                    child: Center(child: Text('12', style: TextStyle(color: Colors.white),)),
                  );
                } else {
                  return Container(
                    height: 200,
                    color: Colors.orange,
                    child: SizedBox(),
                  );
                }
              },
            ),
          )
        ],
      )
    );
  }
}
