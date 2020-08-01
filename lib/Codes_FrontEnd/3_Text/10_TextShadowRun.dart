import 'package:flutter/material.dart';

void main() {
  runApp(TextShadowRun());
}

class TextShadowRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Text Shadow",
      home: new Scaffold(
        body:
         Center(
           child:
           Text(
             'Shadow Text',
             style: TextStyle(
               shadows: [
                 Shadow(
                   blurRadius:10.0,
                   color: Colors.blue,
                   offset: Offset(5.0,5.0),
                 ),
               ],
             ),
           ),
         )
      ),
    );
  }

}







