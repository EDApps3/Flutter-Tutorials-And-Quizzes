import 'package:flutter/material.dart';

void main() {
  runApp(MainBgGradientAppBarRun());
}

class MainBgGradientAppBarRun extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "MainBgCustomColor",
      home: new Scaffold(
        appBar: AppBar(
          title: Text("Gradient Bg + AppBar"),
        ),
        body:
          new Container(
            width: double.infinity,
            height: double.infinity,
            decoration:
            new BoxDecoration(
              gradient:
              new LinearGradient(
                  colors:[
                    Colors.deepPurple[700],
                    Colors.purple[500]
                  ],
                  begin:
                  const FractionalOffset(0.5,0.0),
                  end:
                  const FractionalOffset(0.0, 0.5),
                  stops:[0.0,1.0],
                  tileMode:
                  TileMode.clamp
              ),
            ),
          ),
        ),
    );
  }

}








