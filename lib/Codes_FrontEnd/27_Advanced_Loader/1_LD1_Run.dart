import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(LD1Run());
}

class LD1Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit RotatingCircle",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit RotatingCircle"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitRotatingCircle(
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








