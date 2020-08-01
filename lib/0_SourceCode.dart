import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AppSoundPlay.dart';
import 'package:url_launcher/url_launcher.dart';
import 'SettingPage.dart';
import 'AppLang.dart';

class SourceCodeUI extends StatefulWidget {
  @override
  SourceCodeUIState createState() => new SourceCodeUIState();
}

class SourceCodeUIState extends State<SourceCodeUI> {

  @override
  void initState(){
    super.initState();
  }

  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius:BorderRadius.circular(30.0),
      child:
      Card(
      color:(ThemeResult=="Light")?Colors.lightBlue:Colors.black.withOpacity(0.5),
      child:
      ListTile (
        leading:new Icon(Icons.code,color:Colors.blueGrey,size:45,),
        title: Text (
          AppCodeTxtTrans,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Raleway",
          ),
        ),
        subtitle: Text (
          WantTheFullCodeTxtTrans,
          style: TextStyle(
            fontFamily: "PT Mono",
            color:Colors.white,
          ),
        ),
        onTap: (){
         PlayTapSound();

          showGeneralDialog(
              context: context,
              barrierDismissible:true,
              barrierLabel:'',
              transitionDuration:Duration(seconds:1),
              transitionBuilder: (BuildContext context,Animation<double> a1,Animation<double> a2,Widget child)=>SlideTransition(
                position:Tween<Offset>(
                  begin:const Offset(-1,0),
                  end:Offset.zero,
                ).animate(a1),
                child:
                Dialog (
                  shape: RoundedRectangleBorder (
                    borderRadius: BorderRadius.circular (8),
                  ),
                  child: Stack (
                    children: <Widget>[
                      Container (
                        decoration: BoxDecoration (
                            color: Colors.white,
                            shape: BoxShape.rectangle,
                            borderRadius:
                            BorderRadius.circular (4),
                            boxShadow: [
                              BoxShadow (
                                color: Colors.black,
                                blurRadius: 10.0,
                                offset: const Offset(0.0, 10.0),
                              ),
                            ]),
                        child: Column (
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            SizedBox (height: 14.0),
                            ListTile(
                              title:Text (
                                AppCodeTxtTrans,
                                textAlign: TextAlign.left,
                                style: TextStyle (
                                  color: Colors.blue,
                                  fontSize: 15.0,
                                ),
                              ),
                              trailing:
                              ClipOval(
                                child: Container(
                                  width:50,
                                  height:45,
                                  color:Colors.yellow,
                                  child:IconButton(
                                    icon: Icon(Icons.close),
                                    color: Colors.black,
                                    onPressed: () {
                                      PlayTapSound();
                                      Navigator.of (context, rootNavigator: true).pop ('dialog');
                                    },
                                  ),
                                ),
                              ),
                            ),
                            Divider(),
                            Image.asset (
                              "Images/160x160_Flutter.png",
                              width:120,
                              height:120,
                            ),
                            Divider(),
                            SizedBox (height: 6.0),
                            Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Text (
                                "$AppCodeRateTxtTrans\n",
                                textAlign: TextAlign.left,
                                style: TextStyle (
                                  color: Colors.indigo,
                                  fontSize: 13.0,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(18.0),
                              child: SizedBox(
                                width:double.infinity,
                                child:RaisedButton(
                                  color: Colors.teal,
                                  shape:RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(30.0),
                                  ),
                                  child:
                                  Text(
                                    'Github Link',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onPressed: _launchUrl,
                                ),
                              ),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
              pageBuilder: (context,anim1,anim2){
                return Transform.rotate(
                    angle:anim1.value,
                    child:
                    Container(
                        child:
                        AlertDialog(
                          title:Text("Hi"),
                        )
                    )

                );

              }
          );



        },
      ),
      ),
    );
  }

  _launchUrl() async{
    const url="https://github.com/EDApps3/Flutter-Tutorials-And-Quizzes";

    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }

  }

}



