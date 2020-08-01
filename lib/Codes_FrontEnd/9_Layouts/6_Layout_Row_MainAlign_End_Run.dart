import 'package:flutter/material.dart';

void main() {
  runApp(Row_MA_EndRun());
}

class Row_MA_EndRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Row:MainAxisAlignment.end",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Row:MainAxisAlignment.end"),
        ),
        body:
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
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








