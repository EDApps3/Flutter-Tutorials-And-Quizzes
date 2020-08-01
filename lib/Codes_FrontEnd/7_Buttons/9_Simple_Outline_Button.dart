import 'package:flutter/material.dart';

void main() => runApp(SimpleOutlineBtn());

class SimpleOutlineBtn extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
          appBar: AppBar (
            title:
            Text ('Simple Outline Button'),
          ),
          body:
          Center(
            child:
              OutlineButton(
                child:Text('Outline Button'),
                onPressed:(){},
              )
          )
      ),
    );
  }
}


