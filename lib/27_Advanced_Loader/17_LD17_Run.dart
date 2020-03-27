import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(LD17Run());
}

class LD17Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit Ripple",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit Ripple"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitRipple(
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








