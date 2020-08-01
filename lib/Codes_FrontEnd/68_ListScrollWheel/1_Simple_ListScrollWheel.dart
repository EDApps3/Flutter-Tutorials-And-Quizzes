import 'package:flutter/material.dart';

void main() => runApp(new SimpleListScrollWheelRun());

class SimpleListScrollWheelRun extends StatefulWidget {
  @override
  _SimpleListScrollWheelRunState createState() => new _SimpleListScrollWheelRunState();
}

class _SimpleListScrollWheelRunState extends State<SimpleListScrollWheelRun> {
  int SelectedIndex=1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
            title:Text('Simple List Scroll Wheel'),
        ),
        body:Column(
          children: <Widget>[
            Text("Simple Swipe Up Or Down The List Bellow!"),
            Divider(),
            Text("Selected Item:$SelectedIndex"),
            Container(
              height:230,
              child:ListWheelScrollView(
                onSelectedItemChanged:(int Index){
                  setState(() {
                    SelectedIndex=Index+1;
                  });
                },
                children: <Widget>[
                  Container(
                    color:Colors.amber,
                    child:Center(
                      child:Text("1"),
                    ),
                  ),
                  Container(
                    color:Colors.orange,
                    child:Center(
                      child:Text("2"),
                    ),
                  ),
                  Container(
                    color:Colors.yellow,
                    child:Center(
                      child:Text("3"),
                    ),
                  ),
                  Container(
                    color:Colors.deepPurple,
                    child:Center(
                      child:Text("4"),
                    ),
                  ),
                  Container(
                    color:Colors.amber,
                    child:Center(
                      child:Text("5"),
                    ),
                  ),
                  Container(
                    color:Colors.orange,
                    child:Center(
                      child:Text("6"),
                    ),
                  ),
                  Container(
                    color:Colors.yellow,
                    child:Center(
                      child:Text("7"),
                    ),
                  ),
                  Container(
                    color:Colors.deepPurple,
                    child:Center(
                      child:Text("8"),
                    ),
                  ),
                  Container(
                    color:Colors.amber,
                    child:Center(
                      child:Text("9"),
                    ),
                  ),
                  Container(
                    color:Colors.orange,
                    child:Center(
                      child:Text("10"),
                    ),
                  ),
                  Container(
                    color:Colors.yellow,
                    child:Center(
                      child:Text("11"),
                    ),
                  ),
                  Container(
                    color:Colors.deepPurple,
                    child:Center(
                      child:Text("12"),
                    ),
                  ),
                ],
                itemExtent:42,
              ),
            )
          ],
        )
      ),
    );
  }


}






