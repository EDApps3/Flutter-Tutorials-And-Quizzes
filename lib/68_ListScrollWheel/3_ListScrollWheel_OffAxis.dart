import 'package:flutter/material.dart';

void main() => runApp(new ListScrollWheelOffAxisRun());

class ListScrollWheelOffAxisRun extends StatefulWidget {
  @override
  _ListScrollWheelOffAxisState createState() => new _ListScrollWheelOffAxisState();
}

class _ListScrollWheelOffAxisState extends State<ListScrollWheelOffAxisRun> {
  double SliderOffAxisValue = -0.4;

  void _setvalue(double value)
  => setState(
          () => SliderOffAxisValue = value
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
            title:Text('Simple List Scroll Wheel'),
          ),
          body:Column(
            children: <Widget>[
              Text("Change The Value And See What Gonna Happen!"),
              new Slider(
                  min:-0.5,
                  max:0.5,
                  value: SliderOffAxisValue,
                  onChanged: _setvalue
              ),
              Text("offAxisFraction By :$SliderOffAxisValue"),
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
                  itemExtent:42,
                  offAxisFraction:SliderOffAxisValue,
                ),
              )
            ],
          )
      ),
    );
  }


}






