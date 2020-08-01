import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';



void main() {
  runApp(LD5Run());
}

class LD5Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit DoubleBounce",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit DoubleBounce"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitDoubleBounce(
                    color:Colors.blue,
                    size:100,
                  ),
                  Text(
                    "Loading",
                  ),
                ],
              ),
            ),
          ),
    );
  }

}








