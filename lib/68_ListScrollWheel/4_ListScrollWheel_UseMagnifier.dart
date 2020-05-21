import 'package:flutter/material.dart';

void main() => runApp(new ListScrollWheelUseMagnifierRun());

class ListScrollWheelUseMagnifierRun extends StatefulWidget {
  @override
  _ListScrollWheelUseMagnifierState createState() => new _ListScrollWheelUseMagnifierState();
}

class _ListScrollWheelUseMagnifierState extends State<ListScrollWheelUseMagnifierRun> {
  String Magnifier="On";
  int _radioValue = 0;
  bool MagnifierBool=true;

  void _handleRadioValueChange(int value) {
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 0:
          setState(() {
            Magnifier="On";
            MagnifierBool=true;
          });
          break;

        case 1:
          setState(() {
            Magnifier="Off";
            MagnifierBool=false;
          });
          break;

      }
    });
  }



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
              Text("useMagnifier Set To:$Magnifier"),
              Row(
                children: <Widget>[
                  new Radio(
                    value: 0,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  new Text('On'),
                  new Radio(
                    value: 1,
                    groupValue: _radioValue,
                    onChanged: _handleRadioValueChange,
                  ),
                  new Text('Off'),
                ],
              ),
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
                  useMagnifier:MagnifierBool,
                  magnification:1.5,
                ),
              )
            ],
          )
      ),
    );
  }


}






