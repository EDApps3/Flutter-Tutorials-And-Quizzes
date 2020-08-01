import 'package:flutter/material.dart';

void main() {
  runApp(Row_MA_CenterRun());
}

class Row_MA_CenterRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Row:MainAxisAlignment.center",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Row:MainAxisAlignment.center"),
        ),
        body:
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[

                RaisedButton(
                  child: Text("Raised Btn"),
                  onPressed: (){},
                ),

                RaisedButton(
                  child: Text("Raised Btn"),
                  onPressed: (){},
                ),

              ],
            ),

          ),
    );
  }

}








