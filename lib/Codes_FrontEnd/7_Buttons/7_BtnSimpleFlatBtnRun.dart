import 'package:flutter/material.dart';

void main() => runApp(BtnSimpleFlatBtnRun());

class BtnSimpleFlatBtnRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
          appBar:
          AppBar (
            title:
            Text ('Simple Flat Button'),
          ),
          body:
          Center(
            child:
            FlatButton(
              child: Text("Login"),
              onPressed: () {},
            ),
          )
      ),
    );
  }
}

