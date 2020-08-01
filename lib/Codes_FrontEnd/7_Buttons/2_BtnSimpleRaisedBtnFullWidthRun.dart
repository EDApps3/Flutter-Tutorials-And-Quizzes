import 'package:flutter/material.dart';

void main() => runApp(BtnSimpleRaisedBtnFullWidthRun());

class BtnSimpleRaisedBtnFullWidthRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
        appBar:
        AppBar (
          title:
          Text ('Raised Button Full Width'),
        ),
        body:
          Center(
            child:
             SizedBox(
              width:double.infinity,
              child:
              RaisedButton(
                child:
                Text('Click Me'),
                onPressed: () {
                  //Nothing To Do
                },
              ),
            ),
          )
      ),
    );
  }
}


