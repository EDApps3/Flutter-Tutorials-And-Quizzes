import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(LD19Run());
}

class LD19Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit WanderingCubes",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit WanderingCubes"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitWanderingCubes(
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








