import 'package:flutter/material.dart';

void main() {
  runApp(TextFontSizeRun());
}

class TextFontSizeRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Text Font Size",
      home: new Scaffold(
        body:
         Center(
           child:
            Text(
             'F20',
             style: TextStyle(
               fontSize: 20,
             ),
            ),
         )

      ),
    );
  }

}



