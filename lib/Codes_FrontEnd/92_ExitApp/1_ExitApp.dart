import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(ExitAppRun());
}

class ExitAppRun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner:false,
     title: 'ExitApp',
     home: Scaffold(
      appBar: AppBar(
        title: Text('Exit App'),
      ),
      body:Center(
        child:FlatButton.icon(
          icon:Icon(Icons.close),
          label:Text('Exit App'), 
          onPressed:(){
            SystemNavigator.pop();
          },             
        ),
       ),
     ),
    );
  }
}