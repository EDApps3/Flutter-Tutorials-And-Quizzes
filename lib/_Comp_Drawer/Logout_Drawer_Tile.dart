import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AuthCheck.dart';
import 'package:flutter_tutorials_and_quizzes/Landing_Login_Page.dart';
import 'package:toast/toast.dart';
import '../AppSoundPlay.dart';
import '../CheckConnection.dart';
import '../Gifts.dart';
import '../Profile.dart';
import '../SettingPage.dart';
import '../UserAction.dart';
import '../UserDataInfo.dart';
import '../MainSplashScreen.dart';

class Logout_DrawerTile extends StatelessWidget {

   AuthCheckState parent;

   Logout_DrawerTile(this.parent);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new ListTile(
              leading: Image.asset("Images/logout.png", width:30,height:30),
              title: new Text("Logout",style:TextStyle(color:Colors.white),),
              trailing: new Icon(Icons.arrow_forward_ios,color:Colors.white),
              onTap:() {
                if(SoundResult=="NotMuted") {
                  PlayTapSound();
                }
                Navigator.of(context).pop();
                Toast.show (
                    "Logging You Out...",
                    context,
                    duration: Toast.LENGTH_SHORT,
                    gravity: Toast.BOTTOM,
                    textColor: Colors.white,
                  );
                  logout();
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>MainSplashScreen()));
              
                  
                  },
            ),
       
      ],
    );
  }

}






