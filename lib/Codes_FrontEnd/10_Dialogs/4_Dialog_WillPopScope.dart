import 'package:flutter/material.dart';

void main() {
  runApp(DialogWillPopRun());
}

class DialogWillPopRun extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      debugShowCheckedModeBanner: false,
      title: "Dialog Will Pop",
      home: new Scaffold(
        appBar: AppBar(
          title:Text("Dialog Will Pop"),
        ),
        body:
          Center(
            child:

                RaisedButton(
                  child:
                  Text('Click Me'),
                  onPressed: () {

                    AlertDialog dialog = new AlertDialog(
                        title:Text("Click Outside Dialog\n               Or\nPress Back Button!"),
                        content:Container(
                          height:170,
                          child:
                        Column(
                          children: <Widget>[
                            Divider(color:Colors.black,),
                            Text("Clicking Outside Dialog Or Pressing Back Button Will Not Close The Dialog,Only Close Button Will Pop The Dialog"),
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
                      builder: (BuildContext context) {
          return WillPopScope(child:dialog,onWillPop:() async => false,);
        }
                    );

                  },
                ),
          ),
      ),
    );
  }

}








