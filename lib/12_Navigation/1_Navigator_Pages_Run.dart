import 'package:flutter/material.dart';

void main() {
  runApp(NavPagesRun());
}

class NavPagesRun extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Navigate Through Pages",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Navigate Through Pages"),
        ),
        body:
            Center(
              child:RaisedButton(
                child:
                 Text(
                     "Go To Page1!",
                 ),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>Page1()));
                },
              ),

            ),

          ),
    );
  }
}


class Page1 extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar:AppBar(
          title:Text("Page1"),
          leading:IconButton(
            icon:new Icon(Icons.arrow_back),
            onPressed: (){
              Navigator.push(context,MaterialPageRoute(builder:(context)=>NavPagesRun()));
            },
          )
        ),
      ),
    );
  }
}








