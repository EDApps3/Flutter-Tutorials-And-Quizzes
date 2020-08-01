import 'package:flutter/material.dart';

void main() => runApp(AppBarLeftIconRun());

class AppBarLeftIconRun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
           centerTitle: true,
           leading: new Icon(Icons.ac_unit),
           title: Text(
             'LeftIcon' ,
             textDirection : TextDirection.ltr,
             style: TextStyle(
               color: Colors.indigo,
             ),
           ),
          backgroundColor: Colors.grey,
      ),
      ),
    );
  }

}




