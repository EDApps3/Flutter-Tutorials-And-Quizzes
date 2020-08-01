import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(LD7Run());
}

class LD7Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit FadingCircle",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit FadingCircle"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitFadingCircle(
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








