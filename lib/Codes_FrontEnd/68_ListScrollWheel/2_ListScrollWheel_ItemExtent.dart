import 'package:flutter/material.dart';

void main() => runApp(new ListScrollWheelUseExtentRun());

class ListScrollWheelUseExtentRun extends StatefulWidget {
  @override
  _ListScrollWheelUseExtentState createState() => new _ListScrollWheelUseExtentState();
}

class _ListScrollWheelUseExtentState extends State<ListScrollWheelUseExtentRun> {
  double SliderExtentValue = 42.0;

  void _setvalue(double value)
  => setState(
          () => SliderExtentValue = value
  );

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
            title:Text('List Scroll Wheel Item Extent'),
          ),
          body:Column(
            children: <Widget>[
              Text("Change The Value And See What Gonna Happen!"),
              new Slider(
                  min:0,
                  max:200,
                  value: SliderExtentValue,
                  onChanged: _setvalue
              ),
              Text("Items Extent By :$SliderExtentValue"),
              Divider(),
              Container(
                height:230,
                child:ListWheelScrollView(
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
                  itemExtent:SliderExtentValue,
                ),
              )
            ],
          )
      ),
    );
  }



}






