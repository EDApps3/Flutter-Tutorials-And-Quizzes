import 'package:flutter/material.dart';

void main() => runApp(SnBarDurRun());

class SnBarDurRun extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
        appBar: AppBar(
          title:
          Text ('SnackBar Duration'),
        ),
        body:
          Center(
            child:
            FlatButton(
              child: Text("SnackBar 10s"),
              onPressed: () {
                final SBarVar=SnackBar(
                  duration: Duration(seconds: 10),
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


