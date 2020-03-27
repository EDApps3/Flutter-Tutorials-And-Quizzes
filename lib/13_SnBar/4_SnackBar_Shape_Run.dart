import 'package:flutter/material.dart';


void main() => runApp(SnBarShapeRun());

class SnBarShapeRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
          Text ('SnackBar Shape'),
        ),
        body:
          Center(
            child:
            FlatButton(
              child: Text("SnackBar Shape"),
              onPressed: () {
                final SBarVar=SnackBar(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  content: Text("SnackBar Shape"),
                );
                Scaffold.of(context).showSnackBar(SBarVar);
              },
            ),
          )
      ),
    );
  }
}


