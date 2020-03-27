import 'package:flutter/material.dart';

void main() {
  runApp(Row_MA_StartRun());
}

class Row_MA_StartRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Row:MainAxisAlignment.start",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Row:MainAxisAlignment.start"),
        ),
        body:
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
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








