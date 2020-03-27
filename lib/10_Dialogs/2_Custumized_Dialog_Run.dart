import 'package:flutter/material.dart';

void main() {
  runApp(SimpleCustumizedDialogRun());
}

class SimpleCustumizedDialogRun extends StatelessWidget{


  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "CustomizedDialog",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Customized Dialog"),
        ),
        body:
         Center(
           child:

                RaisedButton(
                  child:
                  Text('Click Me'),
                  onPressed: () {

                    var alert = AlertDialog(
                        title:Text("Dialog Title",),
                        content:
                        Container(
                          height: 180,
                          child: Column(
                            children: <Widget>[
                              Divider(color: Colors.black,),
                              Text(
                                "Dialog Text Appear Here You Can type AnyThing You Want!",
                              ),
                              SizedBox(height: 7,),
                              SizedBox(
                                width: double.infinity,
                                child:
                                RaisedButton(
                                  color: Colors.red,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  onPressed: (){
                                    Navigator.of(context,rootNavigator: true).pop('dialog');
                                  },
                                  child: Text(
                                    "Close",
                                    textAlign: TextAlign.center,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                    );

                    showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return alert;
                        });



                  },
                ),
         ),

      ),
    );
  }

}










