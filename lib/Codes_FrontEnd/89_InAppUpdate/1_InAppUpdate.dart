import 'dart:async';
import 'package:flutter/material.dart';
import 'package:in_app_update/in_app_update.dart';

void main() => runApp(InAppUpdateRun());

class InAppUpdateRun extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<InAppUpdateRun> {
  AppUpdateInfo _updateInfo;
  GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey();
  String Txt="";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future<void> checkForUpdate() async {
    InAppUpdate.checkForUpdate().then((info) {
      setState(() {
        _updateInfo = info;
      });
    }).catchError((e) => _showError(e));
    if(_updateInfo.updateAvailable == true){
      Update();
      setState(() {
        Txt="Update Required!";
      });
    }
    else{
      setState(() {
        Txt="Up To Date!";
      });
    }
  }

  Future<void> Update() async {
    InAppUpdate.performImmediateUpdate().catchError((e) => _showError(e));
  }

  void _showError(dynamic exception) {
    _scaffoldKey.currentState.showSnackBar(SnackBar(content: Text(exception.toString())));
  }

  @override
  Widget build(BuildContext context) {

     if(Txt==""){
          checkForUpdate();
     }
    
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        key: _scaffoldKey,
        appBar: AppBar(
          title: const Text('In App Update'),
          actions: <Widget>[
            FlatButton(
              child:Text("Re-Check For Update",style:TextStyle(color:Colors.white),),
              onPressed:(){
                setState(() {
                  Txt="";
                  _updateInfo=null;
                  checkForUpdate();
                });

              },
            )
          ],
        ),
        body:Container(
         width :MediaQuery.of(context).size.width,
         height:MediaQuery.of(context).size.height,
         child:
         (Txt=="")?
          Row(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: <Widget>[
            CircularProgressIndicator(),
            SizedBox(width:5,),
            Text("Checking For Update...")
          ],
        ):
        Row(
          mainAxisAlignment:MainAxisAlignment.center,
          crossAxisAlignment:CrossAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.update),
            SizedBox(width:5,),
            Text("$Txt"),
          ],
         ),
       ),
      ),
    );
  }
}