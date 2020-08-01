import 'package:flutter/material.dart';

void main() => runApp(SimpleStyledOutlineBtn());

class SimpleStyledOutlineBtn extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
          appBar: AppBar (
            title:
            Text ('Styled Outline Button'),
          ),
          body:
          Center(
            child:
                OutlineButton(
                  child:Text('Outline Button'),
                  color:Colors.blueAccent,
                  textColor:Colors.teal,
                  borderSide:BorderSide(
                    color:Colors.teal,
                    style:BorderStyle.solid,
                    width:0.7,
                  ),
                  onPressed:(){},
                ),


          )
      ),
    );
  }
}


