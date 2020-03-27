import 'package:flutter/material.dart';

void main() => runApp(TFStyleRun());

class TFStyleRun extends StatelessWidget{
  var TF =new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
          Text ('TextField Style'),
        ),
        body:
          Center(
            child:
            TextField(
              decoration: InputDecoration(
                  hintText: 'Red Hint Text, Blue Text Input',
                  hintStyle: TextStyle(
                    color: Colors.red,
                  )
              ),
              controller: TF,
              style: TextStyle(
                color: Colors.blue,
              ),
            ),
          )
      ),
    );
  }
}


