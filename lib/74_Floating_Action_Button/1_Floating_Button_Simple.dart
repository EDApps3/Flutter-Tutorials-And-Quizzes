import 'package:flutter/material.dart';

void main() => runApp(SimpleFloatingButton());

class SimpleFloatingButton extends StatefulWidget {
  @override
  _SimpleFloatingButtonState createState() => _SimpleFloatingButtonState();
}

class _SimpleFloatingButtonState extends State<SimpleFloatingButton> {
  int Counter=0;
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Floating Action Button',
      home: Scaffold(
          appBar:AppBar(
            title:Text("Simple Floating Action Button"),
          ),
          body: Center(
            child:Text("$Counter")
          ),
          floatingActionButton:FloatingActionButton(
            heroTag:"SimpleFloatingButton",
            child:Icon(Icons.plus_one),
            onPressed:(){
              setState(() {
                Counter++;
              });
            },
          ),
      ),
    );
  }
}