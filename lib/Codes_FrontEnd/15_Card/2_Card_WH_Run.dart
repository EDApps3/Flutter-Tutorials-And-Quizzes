import 'package:flutter/material.dart';


void main() => runApp(SimpleCardWHRun());

class SimpleCardWHRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
        appBar:
        AppBar (
          title:
          Text ('Simple Card W/H'),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            SizedBox(
              width: double.infinity,
              height: 200,
              child:Card(
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


