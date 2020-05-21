import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

void main() {
  runApp(ColorPickerRun());
}

class ColorPickerRun extends StatefulWidget {
  @override
  _ColorPickerState createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPickerRun> {
  Color currentColor = Colors.teal;

  void changeColor(Color color) => setState(
          () => currentColor = color
  );

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          title:Text("Color Picker"),
        ),
        body:Center(
          child:RaisedButton(
            child:Text('Change My Color!'),
            color: currentColor,
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: Text('Select a color'),
                    content: Column(
                      children: <Widget>[
                        SingleChildScrollView(
                          child: BlockPicker(
                            pickerColor: currentColor,
                            onColorChanged: changeColor,
                          ),
                        ),
                        RaisedButton(
                          child:Text("Close"),
                          onPressed:(){
                            Navigator.pop(context);
                          },
                        )
                      ],
                    )
                  );
                },
              );
            },
          ),
        )
      ),
    );
  }
}