import 'package:flutter/material.dart';

String SetText="Off";

void main(){
  runApp(SimpleSwitch());
}

class SimpleSwitch extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<SimpleSwitch>{

  bool _SWvalue = false;

  void _onSWChanged(bool value) {
    setState (() {
      _SWvalue = value;

      if(_SWvalue==false){
        SetText="Off";
      }
      else{
        SetText="On";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar:AppBar(
         title:
          Text('Simple Switch'),
        ),
       body:
       Center(
         child:
          Column(
            mainAxisAlignment:
              MainAxisAlignment.center,
           children: <Widget>[
           Text("$SetText"),
           Switch(
            activeColor: Colors.green,
            inactiveThumbColor: Colors.red,
            value: _SWvalue,
            onChanged: _onSWChanged,
          ),
         ],
        ),
      ),
     ),
    );

  }
}
