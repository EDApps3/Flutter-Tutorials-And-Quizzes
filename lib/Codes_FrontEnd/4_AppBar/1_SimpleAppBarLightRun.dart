import 'package:flutter/material.dart';

void main() => runApp(SimpleAppBarLightRun());

class SimpleAppBarLightRun extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: Scaffold(
       appBar: AppBar(
         title: Text('App Bar'),
       ),
      ),
    );
  }

}




