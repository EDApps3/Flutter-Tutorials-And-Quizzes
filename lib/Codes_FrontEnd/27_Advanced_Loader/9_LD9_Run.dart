import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(LD9Run());
}

class LD9Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit FadingFour",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit FadingFour"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitFadingFour(
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








