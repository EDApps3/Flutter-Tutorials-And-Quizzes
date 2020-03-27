import 'package:flutter/material.dart';


void main() {
  runApp(LVVertRun());
}

class LVVertRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Vertical Scroll",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Vertical Scroll"),
        ),
        body:
         ListView(
            scrollDirection: Axis.vertical,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                  Image.asset("Images/Flutter_Logo.png"),
                ],
              ),
            ],
          ),
      ),



    );
  }

}










