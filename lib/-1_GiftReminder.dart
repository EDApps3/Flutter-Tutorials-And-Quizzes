import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AppSoundPlay.dart';
import 'Gifts.dart';
import 'SettingPage.dart';
import 'UserDataInfo.dart';
import 'AuthCheck.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'AppLang.dart';


class GiftReminderUI extends StatefulWidget {
  AuthCheckState parent;
  GiftReminderUI(this.parent);

  @override
  GiftReminderUIState createState() => new GiftReminderUIState();
}

class GiftReminderUIState extends State<GiftReminderUI> {
  var GiftCount=0;

  Future<List<GiftData>> getGiftData() async {
    var url = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/GetGifts.php';
    http.Response response = await http.get(url);
    var maps = jsonDecode(response.body);
    print(response.body);
    List<GiftData> GiftDataArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        GiftDataArr.add(GiftData.fromMap(maps[i]));
      }
    }
    return GiftDataArr;
  }

  Future<List<GiftClaimData>> getGiftClaimData() async {
    var url = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/GetGiftClaim.php';
    http.Response response = await http.get(url);
    var maps = jsonDecode(response.body);
    print(response.body);
    List<GiftClaimData> GiftClaimDataArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        GiftClaimDataArr.add(GiftClaimData.fromMap(maps[i]));
      }
    }
    return GiftClaimDataArr;
  }


  Future<void> ShowGiftData() async {
  List ClaimIndex=new List();
    GiftDataLst= await getGiftData();
    print("Found "+GiftDataLst.length.toString() +"Gifts!");
    GiftClaimLst=await getGiftClaimData();
    for(int j=0;j<GiftDataLst.length;j++) {
      GiftData GD=GiftDataLst[j];
      if(GD.GiftType=="Private"){
        if(GD.GiftTo != UID){
          ClaimIndex.add(GD);
        }
      }
    }

    for(int j=0;j<GiftDataLst.length;j++){
      GiftData GD=GiftDataLst[j];
      for(int i=0;i<GiftClaimLst.length;i++){
        GiftClaimData GCD=GiftClaimLst[i];
        if(GD.GiftID.toString()==GCD.GiftID.toString() ){
          if(GCD.UID.toString()==UID.toString() ){
            print("Found 1 Claimed Gift!");
            ClaimIndex.add(GD);
          }
        }
      }
    }

    if(ClaimIndex.length!=0){
      for(int i=0;i<ClaimIndex.length;i++){
        GiftDataLst.remove(ClaimIndex[i]);
      }
    }

    setState(() {
      GiftCount=GiftDataLst.length;
    });

}


  

  @override
  void initState(){
    super.initState();
    ShowGiftData();
  }

  Widget build(BuildContext context) {
    return (GiftCount>0)?ClipRRect(
      borderRadius:BorderRadius.circular(30.0),
      child:Card(
        color:(ThemeResult=="Light")?Colors.cyan:CardBg.withOpacity(0.6),
        child:
        ListTile (
          leading:Image.asset("Images/Gift.gif",width:45,height:45,),
          title: Text (
            " $GiftCount $GiftTxtTrans",
            style: TextStyle(
              color: Colors.white,
              fontFamily: "Raleway",
            ),
          ),
          subtitle: Text (
            "$UnclaimedGiftThatNeedToBeClaimedBeforeExpiringTxtTrans",
            style: TextStyle(
              fontFamily: "PT Mono",
              color:Colors.white,
            ),
          ),
          onTap: (){
            widget.parent.setState(() {
              MainDrawerController.page=AuthCheckPage(ActivePage:Gifts(widget.parent));
            });
            PlayTapSound();
          },
        ),
      ),
    ):SizedBox();
  }

}



