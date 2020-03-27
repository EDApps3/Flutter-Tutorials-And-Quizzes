import 'package:flutter/material.dart';

void main() => runApp(BtnRaisedRoundedRedBgWTxtRun());

class BtnRaisedRoundedRedBgWTxtRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
          appBar:
          AppBar (
            title:
            Text ('Simple Red RaisedBtn White Txt'),
          ),
          body:
          Center(
            child:
            RaisedButton(
              color: Colors.red,
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              child:
              Text(
                'Click Me',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                //Nothing To Do
              },
            ),
          )
      ),
    );
  }
}


