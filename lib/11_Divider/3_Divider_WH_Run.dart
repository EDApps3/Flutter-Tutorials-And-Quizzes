import 'package:flutter/material.dart';

void main() {
  runApp(DividerWHRun());
}

class DividerWHRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Custom Divider W/H",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Divider Color"),
        ),
        body:
            Center(
              child:
               SizedBox(
                 width: 250,
                 height: 10,
                 child:
                  Container(
                    width: double.infinity,
                    height: double.infinity,
                    color:Colors.red,
                  ),
               ),
            ),
          ),
    );
  }

}








