import 'package:flutter/material.dart';


void main() => runApp(SimpleAppBarDarkRun());

class SimpleAppBarDarkRun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('App Bar'),
        ),
      ),
    );
  }

}




