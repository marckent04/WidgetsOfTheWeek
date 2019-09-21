import 'package:flutter/material.dart';
import 'package:flutterdoc/widgets/Animatedposition.dart';
import 'package:flutterdoc/widgets/absorbPointer.dart';
import 'package:flutterdoc/widgets/animatedIcon.dart';
import 'package:flutterdoc/widgets/animatedSwitcher.dart';
import 'package:flutterdoc/widgets/animatedpadding.dart';
import 'package:flutterdoc/widgets/aspectRatio.dart';
import 'package:flutterdoc/widgets/backdropfilter.dart';
import 'package:flutterdoc/widgets/brouillon.dart';
import 'package:flutterdoc/widgets/clipRRect.dart';
import 'package:flutterdoc/widgets/constrainedBox.dart';
import 'package:flutterdoc/widgets/expanded.dart';
import 'package:flutterdoc/widgets/fadeTransition.dart';
import 'package:flutterdoc/widgets/fittedBox.dart';
import 'package:flutterdoc/widgets/flag/flags.dart';
import 'package:flutterdoc/widgets/flexible.dart';
import 'package:flutterdoc/widgets/gridview.dart';
import 'package:flutterdoc/widgets/indexedStack.dart';
import 'package:flutterdoc/widgets/limitedbox.dart';
import 'package:flutterdoc/widgets/opacity.dart';
import 'package:flutterdoc/widgets/placeholder.dart';
import 'package:flutterdoc/widgets/reordableListView.dart';
import 'package:flutterdoc/widgets/richText.dart';
import 'package:flutterdoc/widgets/semantics.dart';
import 'package:flutterdoc/widgets/sizedBox.dart';
import 'package:flutterdoc/widgets/spacer.dart';
import 'package:flutterdoc/widgets/stacks.dart';
import 'package:flutterdoc/widgets/table.dart';
import 'package:flutterdoc/widgets/tooltip.dart';
import 'package:flutterdoc/widgets/transform.dart';

class WidgetsList extends StatefulWidget {
  WidgetsList({Key key}) : super(key: key);

  _WidgetsListState createState() => _WidgetsListState();
}

class _WidgetsListState extends State<WidgetsList> {

  List<Widget> listViewElts = [];

  Map<String, Object>widgets = {
    'AnimatedIcon' : AnimatedIconPage(),
    'AnimatedList': AnimatedListSample(),
    'AnimatedPadding': AnimatedPaddingPage(),
    'AnimatedPositioned' : AnimatePositionedPage(),
    'AnimatedSwitcher': AnimatedSwitcherPage(),
    'AspectRatio' : AspectRatioPage(),
    'ConstrainedBox': ConstrainedBoxPage(),
    'Draggable' : Flag(),
    'Expanded': ExpandedPage(),
    'FadeTransition': Ftransition(),
    'FittedBox': FittedBoxPage(),
    'Flexible': FlexiblePage(),
    'GridView': GridViewPage(),
    'indexedStack': IndexedStacksPage(),
    'AnimatedOpacity': OpacityPage(),
    'LimitedBox': LimitedBoxPage(),
    'Placeholder': PlaceholderPage(),
    'ReorderableList': ReListVPage(),
    'RichText': RichTextPage(),
    'Semantics': SemanticsPage(),
    'SizedBox': forChildren(),
    'Spacer': SpacerPage(),
    'Stack': StacksPage(),
    'Table': TablePage(),
    'Transform': TransformPage(),
    'Tooltip': TooltipPage(),
    'AbsorbPointer': AbsorbPage(),
    'BackdropFilter': BackDropPage(),
    'ClipRRect': ClipRrectPage()
  };

  Widget createLine(String widgetName, page) {
    return ConstrainedBox(
        constraints: BoxConstraints(minHeight: 120, maxHeight: 120),
        child: MaterialButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) {
                return page;
              }));
            },
            color: Colors.white,
            child: Row(
              children: <Widget>[
                Expanded(
                  flex: 2,
                  child: Text(
                    widgetName,
                    style: TextStyle(fontSize: 30, color: Colors.blue),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: FlutterLogo(size: 50),
                )
              ],
            ))
    );
  }

  @override
  void initState() {
    super.initState();
    widgets.forEach((index, value) {
      listViewElts.add(createLine(index, value));
      listViewElts.add(Divider(height: 5, indent: 2, endIndent: 2, color: Colors.blue,));
    }
    );
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Widgets of the week'),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.search, color: Colors.white,),
          )
        ],
      ),
      body: ListView(
        children: listViewElts
      ),
      bottomNavigationBar: BottomNavigationBar(
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.border_style),
              title: Text('Widgets')
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.favorite),
                title: Text('Widgets')
            ),
          ]
      ),
    );
  }
}
