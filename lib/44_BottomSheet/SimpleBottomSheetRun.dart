import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


void main() {
  runApp(BottomSheetRun());
}

class BottomSheetRun extends StatefulWidget{
  BottomSheetRun({Key Key}) : super (key: Key);
  _BottomSheetState createState() => _BottomSheetState();
}

class _BottomSheetState extends State<BottomSheetRun> {


  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Bottom Sheet",
      home: new Scaffold(
        appBar:
        AppBar(
            title:Text("Bottom Sheet")
        ),
        floatingActionButton:FloatingActionButton(
          child:Icon(Icons.add),
          onPressed:(){
            showModalBottomSheet(
                context: context,
                builder:(BuildContext bc){
                  return Column(
                    children: <Widget>[
                      ListTile(
                        leading:Icon(Icons.star),
                        title:Text("This Is Option 1"),
                        trailing:Icon(Icons.arrow_forward),
                        onTap:(){},
                      ),
                      ListTile(
                        leading:Icon(Icons.star),
                        title:Text("This Is Option 2"),
                        trailing:Icon(Icons.arrow_forward),
                        onTap:(){},
                      )
                    ],
                  );
                }
            );
          },
        ),

      ),
    );
  }

}








