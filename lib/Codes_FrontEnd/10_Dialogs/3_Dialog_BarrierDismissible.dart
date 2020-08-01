import 'package:flutter/material.dart';

void main() {
  runApp(DialogBarrierDismissibleRun());
}

class DialogBarrierDismissibleRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Dialog barrierDismissible",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Dialog barrierDismissible"),
        ),
        body:
          Center(
            child:

                RaisedButton(
                  child:
                  Text('Click Me'),
                  onPressed: () {

                    AlertDialog dialog = new AlertDialog(
                        title:Text("Click Outside Dialog!"),
                        content:Container(
                          height:170,
                          child:
                        Column(
                          children: <Widget>[
                            Divider(color:Colors.black,),
                            Text("Clicking Outside Will Not Close The Dialog,Only Close Button And Back Will Pop The Dialog"),
                            SizedBox(
                              width:double.infinity,
                              child:FlatButton(
                              color:Colors.red,
                              onPressed:(){
                                Navigator.of(context).pop();
                              },
                              child:Text("Close",style:TextStyle(color:Colors.white),),
                             ),
                            ),

                          ],
                        )
                        ),
                    );

                    showDialog(
                      barrierDismissible:false,
                      context: context,
                      child: dialog
                    );

                  },
                ),
          ),
      ),
    );
  }

}








