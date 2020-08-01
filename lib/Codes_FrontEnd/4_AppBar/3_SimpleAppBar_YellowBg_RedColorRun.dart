import 'package:flutter/material.dart';

void main() => runApp(SimpleAppBarYBG_RTXT_Run());

class SimpleAppBarYBG_RTXT_Run extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title:
           Text(
             'Yellow Bg - red Text',
              style: TextStyle(
                color: Colors.red,
              ),
           ),
          backgroundColor: Colors.yellow,
        ),
      ),
    );
  }

}




