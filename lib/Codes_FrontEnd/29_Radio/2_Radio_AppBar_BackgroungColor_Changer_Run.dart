import 'package:flutter/material.dart';


void main() => runApp(RadioAppBarChangerRun());

Color Clr = Colors.teal;
enum ClrVal {
  Teal,
  Grey
}

class RadioAppBarChangerRun extends StatefulWidget {
  RadioAppBarChangerRun({Key key}) : super(key: key);
  @override
  _RadioAppBarChangerRunState createState() => _RadioAppBarChangerRunState();
}

class _RadioAppBarChangerRunState extends State<RadioAppBarChangerRun> {
  ClrVal _character = ClrVal.Teal;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title: "RadioListTiles",
      home: Scaffold(
        appBar: AppBar(
          title:Text("RadioListTiles"),
          backgroundColor: Clr,
        ),
        body:
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 30,),
            Text("  Change AppBar BG To:",),
            RadioListTile<ClrVal>(
              title: const Text('Teal'),
              value: ClrVal.Teal,
              groupValue: _character,
              onChanged: (ClrVal value) {
                setState(() {
                  _character = value;
                  Clr=Colors.teal;
                });
              },
            ),
            RadioListTile<ClrVal>(
              title: const Text('Grey'),
              value: ClrVal.Grey,
              groupValue: _character,
              onChanged: (ClrVal value) {
                setState(() {
                  _character = value;
                  Clr=Colors.grey;
                });
              },
            ),
          ],
        ),
      ),

    );

  }
}
