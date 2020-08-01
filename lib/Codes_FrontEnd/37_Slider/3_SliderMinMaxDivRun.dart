import 'package:flutter/material.dart';

void main(){
  runApp(new SliderMinMaxDivRun());
}

class SliderMinMaxDivRun extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<SliderMinMaxDivRun>{
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home:Scaffold(
        appBar: new AppBar(
        title: new Text('Slider Min Max Division'),
      ),
      body:
       Column(
           mainAxisAlignment:MainAxisAlignment.center,
           children: <Widget>[
              new Text('Value: ${(_value * 100).round()}'),
              new Slider(
                label:"ValueLbl",
                value: _value,
                onChanged: _setvalue,
                min: 0,
                divisions: 100,
                max: 1000,
              ),
            ],
         ),
        ),
    );
  }
}