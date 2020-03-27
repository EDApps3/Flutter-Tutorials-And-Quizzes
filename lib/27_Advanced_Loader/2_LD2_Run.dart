import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(LD2Run());
}

class LD2Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit ChasingDots",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit ChasingDots"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitChasingDots(
                    color:Colors.blue,
                    size:100,
                  ),
                  Text(
                    "\n\nLoading",
                  ),
                ],
              ),
            ),
          ),
    );
  }

}








