
import 'package:flutter/material.dart';
import 'package:flutterdoc/widgets/flag/model.dart';

enum gameMode {
  stack,
  row
}


class Flag extends StatefulWidget {
  @override
  _FlagState createState() => _FlagState();
}

class _FlagState extends State<Flag> {

  var mode = gameMode.stack;

  bool changeMode = true;

  List<Draggable> colorsCard = [];

  List<Color> selected = [];

  List<Widget> newFlag = [];

  List<ColorizedCard> draggedCards = [];

  List<double> sizes = [150, 100, 50];

  List<Color> couleurs = [
    Colors.blue,
    Colors.white,
    Colors.red,
    Colors.green,
    Colors.orange
  ];

  Map<String, List> flags = {
    'France': [Colors.blue, Colors.white, Colors.red],
    "Cote d'Ivoire": [Colors.orange, Colors.white, Colors.green],
    "Canada": [Colors.red, Colors.white, Colors.red],
    "Irlande": [Colors.green, Colors.white, Colors.orange]
  };

  void initialize() {
    if (draggedCards.length != 0) {
      setState(() {
        draggedCards.clear();
        newFlag.clear();
        selected.clear();
      });
    }
  }

  void changeGameMode(v) {
    setState(() {
      changeMode = v;
      if (v) {
        mode = gameMode.stack;
      } else {
        mode = gameMode.row;
      }

    });
  }

  void reload() {
    int index = 0;
    print(draggedCards.length);
    if (draggedCards.length > 0) {
      setState(() {
        draggedCards.forEach((v) {
          v.index = index;
          newFlag.add(Draggable<int>(
            data: v.index,
            child: Card(
              elevation: 15,
              child: Container(
                color: v.color,
                height: sizes[index],
                width: sizes[index],
                child: SizedBox(),
              ),
            ),
            feedback: Card(
              elevation: 15,
              child: Container(
                color: v.color,
                height: sizes[index],
                width: sizes[index],
                child: SizedBox(),
              ),
            ),
          ));
          index++;
        });
      });
    } else {
      setState(() {
        newFlag.clear();
      });
    }
  }

  void acceptFunction(Color value, MediaQueryData device) {

    bool verify = false;
    String valKey;


    if (selected.length < 3) {
      newFlag.clear();

      selected.add(value);

      draggedCards.add(ColorizedCard(value, selected.length - 1));

      reload();
    }

    if (selected.length == 3) {
      flags.forEach((key, v) {
        int eq = 0;
        for (int i = 0; i < 3; i++) {
          if (v[i] == selected[i]) {
            eq++;
          }
          if (eq == 3) {
            verify = true;
            valKey = key;
          }
        }

        if (verify) {
          setState(() {
            newFlag = [
              result(device, "Bravo il s'agit du drapeau de la $valKey")
            ];
          });
        } else {
          setState(() {
            newFlag = [
              result(device, "Desole ce pays n'existe pas sur notre planete")
            ];
          });
        }
      });
    }

    if (selected.length > 3) initialize();
  }

  void deDraggable(value) {
    setState(() {
      newFlag.removeAt(value);
      selected.removeAt(value);
      draggedCards.removeAt(value);
    });

    reload();
  }

  Row result(MediaQueryData device, String text) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        ConstrainedBox(
          constraints: BoxConstraints(
            maxWidth: device.size.width - 30,
          ),
          child: Container(
            color: Colors.white,
            child: Text(
              text,
              style: TextStyle(
                color: Colors.purple,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                fontSize: 25,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ],
    );
  }

  @override
  void initState() {
    super.initState();
    couleurs.forEach((v) {
      colorsCard.add(
        Draggable<Color>(
          data: v,
          child: Card(
            child: Container(
              color: v,
              height: 60,
              width: 60,
              child: SizedBox(),
            ),
          ),
          feedback: Card(
            child: Container(
              color: v,
              height: 50,
              width: 50,
              child: SizedBox(),
            ),
          ),
          childWhenDragging: Card(
            child: Container(
              color: Colors.grey,
              height: 50,
              width: 50,
              child: SizedBox(),
            ),
          ),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    final device = MediaQuery.of(context);
    final cardSize = device.size.width / 5;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('FLAG GAME', style: TextStyle(color: Colors.white)),
        actions: <Widget>[
          Switch(value: changeMode, onChanged: (v) {
            changeGameMode(v);
          })
        ],
      ),
      body: Container(
          color: Colors.deepPurpleAccent,
          height: device.size.height,
          width: device.size.width,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Flexible(
                flex: 2,
                child: Wrap(spacing: 10, children: colorsCard),
              ),
              Flexible(
                  flex: 1,
                  child: ConstrainedBox(
                      constraints: BoxConstraints(maxWidth: device.size.height),
                      child: Stack(
                        alignment: AlignmentDirectional.center,
                        children: <Widget>[
                          DragTarget<int>(
                            onWillAccept: (value) => true,
                            onAccept: (value) {
                              deDraggable(value);
                            },
                            builder: (context, candidates, rejects) {
                              return Container(
                                color: Colors.transparent,
                              );
                            },
                          ),
                          DragTarget<Color>(
                            onWillAccept: (value) => true,
                            onAccept: (value) {
                              setState(() {
                                acceptFunction(value, device);
                              });
                            },
                            builder: (context, candidates, rejects) {
                              if (candidates.length > 0) {
                                return Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: <Widget>[
                                    Card(
                                      child: Opacity(
                                        opacity: 0.5,
                                        child: Container(
                                          color: Colors.black,
                                          height: device.size.width / 3,
                                          width: device.size.width / 3,
                                          child: SizedBox(),
                                        ),
                                      )
                                    ),
                                  ],
                                );
                              } else {
                                if (mode == gameMode.stack) {
                                  return Stack(
                                      alignment: AlignmentDirectional.center,
                                      children: newFlag
                                  );
                                } else {
                                  return Container(
                                    width: device.size.width / 1.5,
                                    child: Dismissible(
                                      onDismissed: (direction) {
                                        initialize();
                                      },
                                      key: Key('flag'),
                                      child: Row(
                                        children: <Widget>[
                                          Expanded(
                                            flex: 1,
                                            child: Draggable(
                                              data: 1,
                                              child: Container(
                                                color: Colors.orange,
                                              ),
                                              feedback: Container(
                                                color: Colors.orange,
                                              ),
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.white,
                                            ),
                                          ),
                                          Expanded(
                                            flex: 1,
                                            child: Container(
                                              color: Colors.green,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                }
                              }
                            },
                          ),
                        ],
                      ))),
              Flexible(
                flex: 1,
                child: MaterialButton(
                  elevation: 15,
                  minWidth: device.size.width / 1.5,
                  textColor: Colors.white,
                  child: Text('INITIALISER'),
                  onPressed: initialize,
                  color: Colors.blueAccent,
                ),
              ),
            ],
          )),
    );
  }
}
