import 'package:flutter/material.dart';

void main() {
  runApp(SimpleDividerRun());
}

class SimpleDividerRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Simple centered Divider",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Simple centered Divider"),
        ),
        body:
            Center(
             child:
               Divider(),
            ),
          ),
    );
  }

}








