import 'package:flutter/material.dart';
import 'package:toast/toast.dart';


void main() {
  runApp(TextFontFamilyRun());
}

class TextFontFamilyRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Text Font Family",
      home: new Scaffold(
        body:
          Center(
            child:
             Text(
              'RaleWay Font Family',
               style: TextStyle(
                fontFamily: "Raleway",
               ),
             ),
          )
      ),
    );
  }

}







