import 'package:flutter/material.dart';


void main() {
  runApp(SimpleDialogRun());
}

class SimpleDialogRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Simple Dialog",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Simple Dialog"),
        ),
        body:
          Center(
            child:

                RaisedButton(
                  child:
                  Text('Click Me'),
                  onPressed: () {

                    AlertDialog dialog = new AlertDialog(
                        content: new Text(
                            "This Is Dialog Text,Click Outside To Pop The Dialog!"
                        )
                    );
                    showDialog(context: context, child: dialog);

                  },
                ),
          ),
      ),
    );
  }

}








