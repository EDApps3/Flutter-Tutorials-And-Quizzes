import 'package:flutter/material.dart';

void main() {
  runApp(MainBgCustomColorRun());
}

class MainBgCustomColorRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "MainBgCustomColor",
      home: new Scaffold(
        body:
          Container(
            color: Colors.blue,
            width: double.infinity,
            height: double.infinity,
          ),
      ),
    );
  }
}








