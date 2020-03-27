import 'package:flutter/material.dart';

void main() {
  runApp(TextDirection_rtl_Run());
}

class TextDirection_rtl_Run extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"TextDirection_rtl_Run",
      home: new Scaffold(
        body:
         Center(
           child:
           Text(
             'مرحبا" كيف الحال',
             textDirection: TextDirection.rtl,
           ),
         )
      ),
    );
  }
}



