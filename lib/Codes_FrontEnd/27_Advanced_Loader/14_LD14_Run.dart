import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(LD14Run());
}

class LD14Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit Pulse",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit Pulse"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitPulse(
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








