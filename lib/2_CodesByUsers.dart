import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/SettingPage.dart';
import 'UsersCodesPage.dart';
import 'AppSoundPlay.dart';
import 'AppLang.dart';

class CodesByUsersUI extends StatefulWidget {
  @override
  CodesByUsersUIState createState() => new CodesByUsersUIState();
}

class CodesByUsersUIState extends State<CodesByUsersUI> {

  @override
  void initState(){
    super.initState();
  }


  Widget build(BuildContext context) {
    return ClipRRect(
        borderRadius:BorderRadius.circular(30.0),
    child:
    Card(
      color:(ThemeResult=="Light")?Colors.cyan:CardBg.withOpacity(0.6),
      child:
      ListTile (
        leading:new Icon(Icons.code,color:Colors.blueGrey,size:45,),
        title: Text (
          CodesByUserTxtTrans,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "Raleway",
          ),
        ),
        subtitle: Text (
          DiscoverUsersCodeTxtTrans,
          style: TextStyle(
            fontFamily: "PT Mono",
            color:Colors.white,
          ),
        ),
        onTap: (){
          PlayTapSound();
          Navigator.push(context,MaterialPageRoute(builder:(context)=>UsersCodePage()));
        },
      ),
    ),
    );
  }
}



