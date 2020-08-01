import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


void main() {
  runApp(LD6Run());
}

class LD6Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit DualRing",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit DualRing"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitDualRing(
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








