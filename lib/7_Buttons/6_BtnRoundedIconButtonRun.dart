import 'package:flutter/material.dart';


void main() => runApp(BtnLittleRoundedIconBtnRun());

class BtnLittleRoundedIconBtnRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.light(),
      home: TestPage(),
    );
  }
}

class TestPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      appBar:
      AppBar (
        title:
        Text ('Little Rounded Button'),
      ),
      body:
       Center(
         child:
         ClipOval(
           child: Container(
             color:Colors.blue ,
             child:IconButton(
               icon: Icon(Icons.android),
               color: Colors.yellow,
               onPressed: () {
                 //Nothing To Do
               },
             ),
           ),
         ),
       )
    );
  }
}
