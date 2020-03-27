import 'package:flutter/material.dart';

void main() {
  runApp(DividerColorRun());
}

class DividerColorRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Divider Color",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Divider Color"),
        ),
        body:
            Center(
              child:
              Divider(
                color:Colors.blue,
              ),
            ),
          ),
    );
  }

}








