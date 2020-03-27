import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(LD20Run());
}

class LD20Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit ThreeBounce",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit ThreeBounce"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitThreeBounce(
                    color:Colors.red,
                    size:100,
                  ),
                  Text(
                    "\nLoading",
                  ),
                ],
              ),
            ),
          ),
    );
  }

}








