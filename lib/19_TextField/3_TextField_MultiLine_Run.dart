import 'package:flutter/material.dart';

void main() => runApp(MultiTFRun());

class MultiTFRun extends StatelessWidget{
  var TF =new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
          Text ('MultiLine TextField'),
        ),
        body:
          Center(
            child:
            TextField(
              decoration: InputDecoration(
                hintText: "Multi Line TextField!",
              ),
              controller: TF,
              maxLines: 6,
            ),
          )
      ),
    );
  }
}

