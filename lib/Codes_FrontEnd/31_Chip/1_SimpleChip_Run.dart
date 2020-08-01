import 'package:flutter/material.dart';

void main() {
  runApp(SimpleChipRun());
}

class SimpleChipRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Simple Chip",
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
        appBar:
        AppBar (
          title: Text ('Simple Chip'),
        ),
        body:
        Center(
          child:
          Chip(
            avatar: CircleAvatar(
              backgroundColor: Colors.grey,
              child: Text('F'),
            ),
            label: Text('Flutter'),
          ),
        ),
      ),
    );
  }
}






