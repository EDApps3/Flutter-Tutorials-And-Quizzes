import 'package:flutter/material.dart';

void main() => runApp(TFNoBordRun());

class TFNoBordRun extends StatelessWidget{

  var TF =new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
          Text ('TextField No Border'),
        ),
        body:
          Center(
            child:
            TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'TextField Without Border!',
              ),
              controller: TF,
            ),
          )
      ),
    );
  }
}


