import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AuthCheck.dart';
import '../AppSoundPlay.dart';
import '../SettingPage.dart';
import '../main.dart';

class Home_DrawerTile extends StatelessWidget {

   AuthCheckState parent;
   Home_DrawerTile(this.parent);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new ListTile(
              leading: Image.asset("Images/Book.gif",width:30,height:30),
              title: new Text("Home",style:TextStyle(color:Colors.white,),),
              trailing: new Icon(Icons.arrow_forward_ios,color:Colors.white),
              onTap:() async {
                MainPageActive=true;
                if(SoundResult=="NotMuted") {
                  PlayTapSound();
                }   
                Navigator.of(context).pop();       
                this.parent.setState(() {
                  ActivePage=Main(parent);
                });
              }
            ),
           
      ],
    );
  }

}






