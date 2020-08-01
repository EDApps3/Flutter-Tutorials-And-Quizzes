import 'package:flutter/material.dart';


void main() => runApp(BtnFlatIconGreyBgBtnRun());

class BtnFlatIconGreyBgBtnRun extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold (
          appBar:
          AppBar (
            title:
            Text ('Grey Flat Button With Icon'),
          ),
          body:
          Center(
            child:
            FlatButton.icon(
              color: Colors.grey,
              icon: Icon(Icons.add), //`Icon` to display
              label: Text('Add'), //`Text` to display
              onPressed: () {},
            ),
          )
      ),
    );
  }
}


