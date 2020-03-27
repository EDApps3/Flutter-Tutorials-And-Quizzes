import 'package:flutter/material.dart';

void main() {
  runApp(SLD2Run());
}

class SLD2Run extends StatefulWidget{
  SLD2Run({Key Key}) : super (key: Key);
  _LDState createState() => _LDState();

}


class _LDState extends State<SLD2Run> {

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "CircularProgressIndicator",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Circular Progress Indicator"),
        ),
        body:
         Center(
           child:
            CircularProgressIndicator(
                backgroundColor:
                Colors.blueAccent,
                valueColor:
                AlwaysStoppedAnimation<Color>(Colors.indigo),
              ),
            ),
         ),
    );
  }

}








