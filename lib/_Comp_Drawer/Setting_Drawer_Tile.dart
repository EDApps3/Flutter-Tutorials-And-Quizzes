import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AuthCheck.dart';
import 'package:flutter_tutorials_and_quizzes/SettingPage.dart';
import '../AppSoundPlay.dart';

class Setting_DrawerTile extends StatelessWidget {

   AuthCheckState parent;

   Setting_DrawerTile(this.parent);

  @override
  Widget build(BuildContext context) {
    return  new Column(
      children: <Widget>[
        ListTile(
      leading: Image.asset("Images/settings.png",width:30,height:30),
      title: new Text("Settings",style:TextStyle(color:Colors.white),),
      trailing: new Icon(Icons.arrow_forward_ios,color:Colors.white),
              onTap:(){
                MainPageActive=false;
                if(SoundResult=="NotMuted") {
                  PlayTapSound();
                }
                this.parent.setState(() {
                  ActivePage=SettingPage();
                });
                ActivePage=SettingPage();
                Navigator.of(context).pop();
         
                }
    ),
      ],
    );
  }

}






