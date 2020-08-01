import 'package:flutter/material.dart';

void main() => runApp(IconTFRun());

class IconTFRun extends StatelessWidget{
  var TF =new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
          Text ('Icon TextField'),
        ),
        body:
          Center(
            child:
            TextField(
              decoration: InputDecoration(
                hintText: "Enter Your UserName!",
                icon: new Icon(Icons.person),
              ),
              controller: TF,
            ),
          )
      ),
    );
  }
}
