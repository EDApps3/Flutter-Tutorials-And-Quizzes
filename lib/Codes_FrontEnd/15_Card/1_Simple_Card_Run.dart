import 'package:flutter/material.dart';

void main() => runApp(SimpleCardRun());

class SimpleCardRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
        appBar:
        AppBar (
          title:
          Text ('Simple Card'),
        ),
        body:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                Card(
                  child:
                  Text("Simple Card 1!"),
                ),
                Card(
                  child:
                  Text("Simple Card 2!"),
                ),


              ],
            ),

          ),

    );
  }
}


