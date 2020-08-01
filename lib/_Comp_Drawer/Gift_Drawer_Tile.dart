import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AuthCheck.dart';
import 'package:toast/toast.dart';
import '../AppSoundPlay.dart';
import '../CheckConnection.dart';
import '../Gifts.dart';
import '../SettingPage.dart';

class Gift_DrawerTile extends StatelessWidget {

   AuthCheckState parent;
   Gift_DrawerTile(this.parent);

  @override
  Widget build(BuildContext context) {
    return new Column(
      children: <Widget>[
        new ListTile(
              leading: Image.asset("Images/Gift.gif",width:30,height:30),
              title: new Text("Gifts",style:TextStyle(color:Colors.white),),
              trailing: new Icon(Icons.arrow_forward_ios,color:Colors.white),
              onTap:() async {
                if(SoundResult=="NotMuted") {
                  PlayTapSound();
                }
                await CheckUserConnected();

                if(IsUserConnected==true){
                   MainPageActive=false;
                   Navigator.of(context).pop();
                   this.parent.setState(() {
                    ActivePage=Gifts(parent);
                   });
                }
                else{
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






