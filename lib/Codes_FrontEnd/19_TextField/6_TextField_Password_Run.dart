import 'package:flutter/material.dart';

void main() => runApp(PassTFRun());

class PassTFRun extends StatelessWidget{
  var TF =new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
          Text ('Password TextField'),
        ),
        body:
          Center(
            child:
            TextField(
              decoration:InputDecoration(
                  icon:new Icon(Icons.security),
                  hintText: "Enter Your Pass!"
              ),
              controller: TF,
              obscureText: true,
            ),
          )
      ),
    );
  }
}

