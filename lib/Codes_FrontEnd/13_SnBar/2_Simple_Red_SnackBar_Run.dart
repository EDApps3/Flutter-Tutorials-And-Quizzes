import 'package:flutter/material.dart';

void main() => runApp(SnBarBgRun());

class SnBarBgRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
          Text ('Simple Red SnackBar'),
        ),
        body:
          Center(
            child:
            FlatButton(
              child: Text("Show SnackBar"),
              onPressed: () {
                final SBarVar=SnackBar(
                  backgroundColor: Colors.red,
                  content: Text("SnackBar Txt"),
                );
                Scaffold.of(context).showSnackBar(SBarVar);
              },
            ),
          )
      ),
    );
  }
}

