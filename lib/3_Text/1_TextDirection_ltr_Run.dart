import 'package:flutter/material.dart';

void main() {
  runApp(TextDirection_ltr_Run());
}


class TextDirection_ltr_Run extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"TextDirection_ltr_Run",
      home: new Scaffold(
        body:
         Center(
           child:
            Text(
             "Hello World",
             textDirection: TextDirection.ltr,
            ),
         )
      ),
    );
  }

}



