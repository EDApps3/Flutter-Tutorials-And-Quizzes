import 'package:flutter/material.dart';

void main() => runApp(AppBarSize());

class AppBarSize extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
       appBar: PreferredSize(
         preferredSize:Size.fromHeight(150.0),
         child:AppBar(
           flexibleSpace:Center(
             child:Text('AppBar With Height 150'),
           ),
         ),
       )
      ),
    );
  }

}




