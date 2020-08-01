import 'package:flutter/material.dart';

void main(){
  runApp(AppBarThemeSwitchRun());
}

class AppBarThemeSwitchRun extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<AppBarThemeSwitchRun>{
  Color Bg = Colors.blue;
  bool _SWvalue = false;

  void _onSWChanged(bool value) {
    setState (() {
      _SWvalue = value;

      if(_SWvalue==false){
        Bg=Colors.blue;
      }
      else{
        Bg=Colors.red;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
      new Scaffold(
        appBar: new AppBar(
          title: new Text('Switch AppBar Theme'),
          backgroundColor: Bg,
        ),
        body:
         Container(
          padding: new EdgeInsets.all(32.0),
          child: new Center(
            child: new Column(
              children: <Widget>[
                new SwitchListTile(
                  value: _SWvalue,
                  onChanged: _onSWChanged,
                  title:
                  new Text(
                    'Red Theme?',
                  ),
                )
              ],
            ),
          ),
        ),
    ),

    );

  }
}
