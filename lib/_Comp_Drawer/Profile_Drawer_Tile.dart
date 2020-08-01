import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AuthCheck.dart';
import '../AppSoundPlay.dart';
import '../Profile.dart';
import '../SettingPage.dart';

class Profile_DrawerTile extends StatelessWidget {

   AuthCheckState parent;

   Profile_DrawerTile(this.parent);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        ListTile(
              leading: Image.asset("Images/LandingPage/Avatar.gif",width:40,height:40),
              title: new Text("Profile",style:TextStyle(color:Colors.white),),
              trailing: new Icon(Icons.arrow_forward_ios,color:Colors.white),
              onTap:(){
                MainPageActive=false;
                if(SoundResult=="NotMuted") {
                  PlayTapSound();
                }
                this.parent.setState(() {
                  ActivePage=ProfilePage();
                });
                Navigator.of(context).pop();
              },
            ),
      ],
    );
  }

}






