import 'package:flutter/material.dart';

void main() => runApp(LightDarkModeRun());

class LightDarkModeRun extends StatefulWidget {
  LightDarkModeRun({Key key}) : super(key: key);
  @override
  _RadioTestState createState() => _RadioTestState();
}

class _RadioTestState extends State<LightDarkModeRun> {
  ThemeData DT=ThemeData.light();
  String ThemeTxt="Light Theme";
  bool _SWvalue = false;

  void _onSWChanged(bool value) {
    setState (() {
      _SWvalue = value;

      if(_SWvalue==false){
        DT=ThemeData.light();
        ThemeTxt="Light Theme";
      }
      else{
        DT=ThemeData.dark();
        ThemeTxt="Dark Theme";
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Light Dark Mode Switch",
      theme:DT,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title:Text("$ThemeTxt"),
        ),
        body:
        Center(
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  "Light",
                ),
              ),
              Transform.scale(
                scale: 3.0,
                child:
              new Switch(
                activeColor: Colors.black87,
                activeThumbImage: ExactAssetImage("Images/Moon.png"),
                inactiveThumbColor: Colors.blue,
                inactiveThumbImage: ExactAssetImage("Images/Sun.png"),
                value: _SWvalue,
                onChanged: _onSWChanged,
              ),
              ),
              Padding(
                padding: const EdgeInsets.all(40.0),
                child: Text(
                  "Dark",
                ),
              ),

            ],
          ),
        ),
      ),
    );

  }
}
