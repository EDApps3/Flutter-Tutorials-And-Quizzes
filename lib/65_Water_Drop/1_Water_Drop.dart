import 'package:flutter/material.dart';
import 'package:water_drop/water_drop.dart';

void main() => runApp(WaterDropRun());

class WaterDropRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Water Drop',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home:Scaffold(
        appBar: AppBar(
            title: Text("Water Drop")
        ),
        body:
        WaterDrop(
          child:Card(
            color:Colors.teal,
            child:Text(
                "Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text",
                style:TextStyle(
                  color:Colors.white,
                )
            ),
          ),
          params: [
            WaterDropParam(top: 50, height: 50, left: 100, width: 50),
            WaterDropParam(top: 10, height: 100, left: 200, width: 100),
            WaterDropParam(top: 20, height: 40, left: 20, width: 40),
          ],
        ),
      ),
    );
  }
}



