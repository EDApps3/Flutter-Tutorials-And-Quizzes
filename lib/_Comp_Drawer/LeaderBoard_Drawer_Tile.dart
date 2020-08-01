import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AuthCheck.dart';
import 'package:flutter_tutorials_and_quizzes/LeaderBoard.dart';
import 'package:toast/toast.dart';
import '../AppSoundPlay.dart';
import '../CheckConnection.dart';
import '../SettingPage.dart';

class LeaderBoard_DrawerTile extends StatelessWidget {

   AuthCheckState parent;

   LeaderBoard_DrawerTile(this.parent);


  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        ListTile(
              leading: Image.asset("Images/trophy.png",width:30,height:30),
              title: new Text("LeaderBoard",style:TextStyle(color:Colors.white),),
              trailing: new Icon(Icons.arrow_forward_ios,color:Colors.white),
              onTap:() async {
                MainPageActive=false;
                Navigator.of(context).pop();
                if(SoundResult=="NotMuted") {
                  PlayTapSound();
                }
                await CheckUserConnected();
                if(IsUserConnected==true){
                  this.parent.setState(() {
                    ActivePage=LeaderBoard();
                  });
                }
                if(IsUserConnected=false){
                  Toast.show (
                    "Internet Connection Required",
                    context,
                    duration: Toast.LENGTH_SHORT,
                    gravity: Toast.BOTTOM,
                    textColor: Colors.white,
                  );
                }
               

              },
            ),
      ],
    );
  }

}









