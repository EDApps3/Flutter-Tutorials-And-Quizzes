import 'package:flutter/material.dart';

void main() {
  runApp(SLD1Run());
}

class SLD1Run extends StatefulWidget{
  SLD1Run({Key Key}) : super (key: Key);
  _LDState createState() => _LDState();
}


class _LDState extends State<SLD1Run> {

  @override
  void initState() {
   super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "LinearProgressIndicator",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Linear Progress Indicator"),
        ),
        body:
         Center(
           child:
            LinearProgressIndicator(
                backgroundColor:
                Colors.deepPurple,
                valueColor:
                AlwaysStoppedAnimation<Color>(Colors.purple),
              ),
            ),
         ),
    );
  }

}








