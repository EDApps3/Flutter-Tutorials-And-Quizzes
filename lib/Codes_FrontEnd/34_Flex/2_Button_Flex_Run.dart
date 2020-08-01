import 'package:flutter/material.dart';

void main() {
  runApp(RaisedButtonFlexRun());
}

class RaisedButtonFlexRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title:Text("RaisedButton Flex"),
          ),
          body:
           ListView(
             children: <Widget>[
               Row(
                 mainAxisAlignment:
                 MainAxisAlignment.center,
                 children: <Widget>[
                   Expanded(
                     child:
                     RaisedButton(
                       child: Text("F1"),
                       onPressed: (){},
                     ),
                   ),
                   Expanded(
                     flex: 2,
                     child:
                     RaisedButton(
                       color: Colors.lime,
                       child: Text("F2"),
                       onPressed: (){},
                     ),
                   ),
                   Expanded(
                     child:
                     RaisedButton(
                       child: Text("F1"),
                       onPressed: (){},
                     ),
                   ),
                 ],
               ),
             ],
           )

      ),
    );
  }
}


