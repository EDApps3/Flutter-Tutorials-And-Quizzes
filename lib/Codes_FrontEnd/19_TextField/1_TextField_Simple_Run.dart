import 'package:flutter/material.dart';

void main() => runApp(SimpleTFRun());

class SimpleTFRun extends StatelessWidget{

  var TF =new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
          Text ('Simple TextField'),
        ),
        body:
          Center(
            child:
            TextField(
              controller: TF,
            ),
          )
      ),
    );
  }
}

