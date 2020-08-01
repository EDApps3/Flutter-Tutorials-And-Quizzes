import 'package:flutter/material.dart';

void main() {
  runApp(Col_MA_CenterRun());
}

class Col_MA_CenterRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Col:MainAxisAlignment.center",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Col:MainAxisAlignment.center"),
        ),
        body:
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            Container(
              decoration:BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              child:
              Image.asset("Images/160x160_Flutter.png"),
            ),
            Container(
              decoration:BoxDecoration(
                border: Border.all(
                  color: Colors.red,
                  width: 2,
                ),
              ),
              child:
              Image.asset("Images/160x160_Flutter.png"),
            ),

          ],
        ),

      ),

    );
  }

}








