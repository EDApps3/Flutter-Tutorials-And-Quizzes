import 'package:flutter/material.dart';

void main() => runApp(SimpleBgCardWHRun());

class SimpleBgCardWHRun extends StatelessWidget{



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
        appBar:
        AppBar (
          title:
          Text ('Red Card W/H'),
        ),
        body:
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(
                  width: double.infinity,
                  height: 200,
                  child:Card(
                    color:Colors.red,
                    child:
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text("Simple Card Max Width,Height 200!"),
                      ],
                    ),
                  ),
                ),

              ],
            ),

      ),
    );
  }
}


