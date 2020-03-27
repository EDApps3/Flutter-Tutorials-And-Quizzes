import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


void main() {
  runApp(LD4Run());
}

class LD4Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit CubeGrid",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit CubeGrid"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitCubeGrid(
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








