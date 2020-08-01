import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AuthCheck.dart';
import 'package:flutter_tutorials_and_quizzes/SettingPage.dart';
import '../AppSoundPlay.dart';
import '../Samples.dart';

class UISamples_DrawerTile extends StatelessWidget {

   AuthCheckState parent;

   UISamples_DrawerTile(this.parent);

  @override
  Widget build(BuildContext context) {
    return  new Column(
      children: <Widget>[
        ListTile(
      leading: Image.asset("Images/Samples.gif",width:25,height:25),
              title: new Text("UI",style:TextStyle(color:Colors.white),),
      trailing: new Icon(Icons.arrow_forward_ios,color:Colors.white),
              onTap:() async {
                MainPageActive=false;
                if(SoundResult=="NotMuted") {
                  PlayTapSound();
                }

                this.parent.setState(() {
                  ActivePage=Samples(parent);
                });
                Navigator.of(context).pop();
         
                }
    ),
      ],
    );
  }

}






