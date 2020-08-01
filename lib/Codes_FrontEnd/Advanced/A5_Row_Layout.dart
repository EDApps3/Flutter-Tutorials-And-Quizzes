import 'package:flutter/material.dart';

void main() => runApp(A5_Row_Layout_Run());

class A5_Row_Layout_Run extends StatefulWidget {
  @override
  A5_Row_Layout_State createState() => A5_Row_Layout_State();
}

class A5_Row_Layout_State extends State<A5_Row_Layout_Run> {
  int _MainAxisradioValue = 0;
  int _CrossAxisradioValue = 0;

  var MainAxis  = MainAxisAlignment.start;
  var CrossAxis = CrossAxisAlignment.start;

  void _handleMainAxisRadioValueChange(int value) {
    setState(() {
      _MainAxisradioValue = value;

      switch (_MainAxisradioValue) {
        case 0:
          setState(() {
            MainAxis=MainAxisAlignment.start;
          });
          break;

        case 1:
          setState(() {
            MainAxis=MainAxisAlignment.center;
          });
          break;

        case 2:
          setState(() {
            MainAxis=MainAxisAlignment.end;
          });
          break;

      }
    });
  }

  void _handleCrossAxisRadioValueChange(int value) {
    setState(() {
      _CrossAxisradioValue = value;

      switch (_CrossAxisradioValue) {
        case 0:
          setState(() {
            CrossAxis=CrossAxisAlignment.start;
          });
          break;

        case 1:
          setState(() {
            CrossAxis=CrossAxisAlignment.center;
          });
          break;

        case 2:
          setState(() {
            CrossAxis=CrossAxisAlignment.end;
          });
          break;

      }
    });
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Row Layout",
      home:Scaffold(
          appBar: AppBar(
            title: Text("Advanced Row Layout"),
          ),
          body:ListView(
            children: <Widget>[

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[

                    Text("Main Axis Alignement:(Horizontally)"),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: <Widget>[
                        new Radio(
                          value: 0,
                          groupValue: _MainAxisradioValue,
                          onChanged: _handleMainAxisRadioValueChange,
                        ),
                        new Text('mainAxisAlignment:\n    MainAxisAlignment.start'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: <Widget>[
                        new Radio(
                          value: 1,
                          groupValue: _MainAxisradioValue,
                          onChanged: _handleMainAxisRadioValueChange,
                        ),
                        new Text('mainAxisAlignment:\n    MainAxisAlignment.center'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: <Widget>[
                        new Radio(
                          value: 2,
                          groupValue: _MainAxisradioValue,
                          onChanged: _handleMainAxisRadioValueChange,
                        ),
                        new Text('mainAxisAlignment:\n    MainAxisAlignment.end'),
                      ],
                    ),

                    Divider(),

                    Text("Cross Axis Alignement:(vertically)"),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: <Widget>[
                        new Radio(
                          value: 0,
                          groupValue: _CrossAxisradioValue,
                          onChanged: _handleCrossAxisRadioValueChange,
                        ),
                        new Text('crossAxisAlignment:\n    CrossAxisAlignment.start'),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: <Widget>[
                        new Radio(
                          value: 1,
                          groupValue: _CrossAxisradioValue,
                          onChanged: _handleCrossAxisRadioValueChange,
                        ),
                        new Text("crossAxisAlignment:\n    CrossAxisAlignment.center"),
                      ],
                    ),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: <Widget>[
                        new Radio(
                          value: 2,
                          groupValue: _CrossAxisradioValue,
                          onChanged: _handleCrossAxisRadioValueChange,
                        ),
                        new Text('crossAxisAlignment:\n    CrossAxisAlignment.end'),
                      ],
                    ),

                    Divider(),

                    Container(
                      color:Colors.teal,
                      width:MediaQuery.of(context).size.width,
                      height:200,
                      child:Row(
                        mainAxisAlignment:MainAxis,
                        crossAxisAlignment:CrossAxis,
                        children: <Widget>[
                          Text("Change")
                        ],
                      )
                    ),








                  ],
                ),
              ),

            ],
          )

      ),
    );
  }


}