import 'package:flutter/material.dart';

void main() => runApp(RoundOutlineBtn());

class RoundOutlineBtn extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
          appBar: AppBar (
            title:
            Text ('Round Outline Button'),
          ),
          body:
          Center(
            child:
              OutlineButton(
                child:Text("Rounded Outline Button"),
                shape:RoundedRectangleBorder(
                  borderRadius:BorderRadius.circular(50.0),
                ),
                color:Colors.black87,
                borderSide:BorderSide(
                  color:Colors.grey,
                  style:BorderStyle.solid,
                  width:0.7,
                ),
                onPressed:(){},
              )
          )
      ),
    );
  }
}


