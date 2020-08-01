import 'package:flutter/material.dart';


void main(){
  runApp(SliderColorRun());
}

class SliderColorRun extends StatefulWidget {
  @override
  _State createState() => new _State();
}

class _State extends State<SliderColorRun>{
  double _value = 0.0;
  void _setvalue(double value) => setState(() => _value = value);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
        home:Scaffold(
      appBar: new AppBar(
        title: new Text('Slider Color'),
      ),
      body:
        Column(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              new Text('Value: ${(_value * 100).round()}'),
              new Slider(
                  value: _value,
                  onChanged: _setvalue,
                  activeColor:Colors.green,
                  inactiveColor: Colors.red,
              ),
            ],
          ),
        ),
    );
  }
}