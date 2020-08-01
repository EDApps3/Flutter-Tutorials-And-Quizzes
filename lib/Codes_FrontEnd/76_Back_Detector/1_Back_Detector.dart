import 'package:flutter/material.dart';

void main() => runApp(new BackDetectorRun());

class BackDetectorRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        home:Scaffold(
            appBar:AppBar(
              title:Text('Back Detector'),
            ),
            body:Center(
              child:RaisedButton(
                child:Text("Open Page And Press Back!"),
                onPressed:(){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>BackDetectorPage()));
                },
              ),
            )
        ),
    );
  }


}


class BackDetectorPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    Future<bool> _onBackPressed() {
      return showDialog(
        context: context,
        builder: (context) => new AlertDialog(
            title: new Text('Going Back!'),
            content:Container(
              height:106,
              child:Column(
                crossAxisAlignment:CrossAxisAlignment.start,
                children: <Widget>[
                  Divider(),
                  new Text('Are You Sure?'),
                  SizedBox(height:8),
                  Row(
                    children: <Widget>[
                      RaisedButton (
                        color: Colors.green,
                        shape: RoundedRectangleBorder (
                            borderRadius: BorderRadius.circular (30.0)
                        ),
                        child: Padding (
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child:
                            Row(
                              children: <Widget>[
                                Icon(Icons.exit_to_app),
                                Text (
                                  "Yes",
                                  textAlign:TextAlign.center,
                                  maxLines: 1,
                                  style:TextStyle(
                                    fontSize:12,
                                  ),
                                ),
                              ],
                            )
                        ),
                        onPressed: () {
                          Navigator.of(context).pop(true);
                        },
                      ),
                      RaisedButton (
                        color: Colors.red,
                        shape: RoundedRectangleBorder (
                            borderRadius: BorderRadius.circular (30.0)
                        ),
                        child: Padding (
                            padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                            child:
                            Row(
                              children: <Widget>[
                                Icon(Icons.close),
                                Text (
                                  "No",
                                  textAlign:TextAlign.center,
                                  maxLines: 1,
                                  style:TextStyle(
                                    fontSize:12,
                                  ),
                                ),
                              ],
                            )
                        ),
                        onPressed: () {
                          Navigator.of(context).pop(false);
                        },
                      ),
                    ],
                  )
                ],
              ),
            )
        ),
      ) ?? false;
    }

    return WillPopScope(
      onWillPop: _onBackPressed,
      child:new MaterialApp(
       debugShowCheckedModeBanner: false,
       home:Scaffold(
          appBar:AppBar(
            title:Text('Back Detector'),
          ),
          body:Center(
            child:Text("Press The Back Button On Your Mobile!"),
          )
      ),
      ),
    );
  }


}






