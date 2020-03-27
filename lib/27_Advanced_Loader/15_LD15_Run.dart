import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

void main() {
  runApp(LD15Run());
}

class LD15Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "SpinKit PumpingHeart",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("SpinKit PumpingHeart"),
        ),
        body:
            Center(
              child:
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SpinKitPumpingHeart(
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








