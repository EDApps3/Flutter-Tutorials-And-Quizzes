import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(LD18Run());
}

class LD18Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit Wave",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit Wave"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitWave(
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








