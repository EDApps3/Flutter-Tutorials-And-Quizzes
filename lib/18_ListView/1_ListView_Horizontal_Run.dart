import 'package:flutter/material.dart';

void main() {
  runApp(LVHorRun());
}

class LVHorRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Horizontal Scroll",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Horizontal Scroll"),
        ),
        body:
          ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset("Images/Flutter_Logo.png"),
                      Image.asset("Images/Flutter_Logo.png"),
                      Image.asset("Images/Flutter_Logo.png"),
                      Image.asset("Images/Flutter_Logo.png"),
                    ],
                  ),
                ],
          ),
      ),



    );
  }

}










