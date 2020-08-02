import 'package:flutter/material.dart';
import 'UserDataInfo.dart';
import 'main.dart';
import 'CheckConnection.dart';
import 'SettingPage.dart';
import 'AuthCheck.dart';
import 'AppSoundPlay.dart';
import 'LoadFireBaseAdmob.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'GiftAdminAdd.dart';
import 'GiftAdminDelete.dart';
import 'AppLang.dart';
import 'package:translator/translator.dart';



List GiftDataLst=new List();
List GiftClaimLst=new List();

class GiftData {
  String GiftID;
  String GiftTitle;
  String GiftDescription;
  String GiftTokens,GiftXP;
  String GiftTo;
  String GiftType;
  String GiftDate;

  GiftData(
      this.GiftID,
      this.GiftTitle,
      this.GiftDescription,
      this.GiftTokens,
      this.GiftTo,
      this.GiftType,
      this.GiftXP,
      this.GiftDate,
      );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'GiftID'            : GiftID,
      'GiftTitle'         : GiftTitle,
      'GiftDescription'   : GiftDescription,
      'GiftTokens'        : GiftTokens,
      'GiftTo'            : GiftTo,
      'GiftType'          : GiftType,
      'GiftXP'            : GiftXP,
      'GiftDate'          : GiftDate,

    };
    return map;
  }

  GiftData.fromMap(Map<String, dynamic> map) {
    GiftID           = map['GiftID'];
    GiftTitle        = map['GiftTitle'];
    GiftDescription  = map['GiftDescription'];
    GiftTokens       = map['GiftTokens'];
    GiftTo           = map['GiftTo'];
    GiftType         = map['GiftType'];
    GiftXP           = map['GiftXP'];
    GiftDate         = map['GiftDate'];
  }

}


class GiftClaimData {
  String GiftID;
  String UID;

  GiftClaimData(
      this.GiftID,
      this.UID,
      );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'GiftID'  : GiftID,
      'UID'     : UID,
    };
    return map;
  }

  GiftClaimData.fromMap(Map<String, dynamic> map) {
    GiftID           = map['GiftID'];
    UID              = map['UID'];
  }

}








class Gifts extends StatefulWidget {
  AuthCheckState parent;
  Gifts(this.parent);

  @override
  GiftsState createState() => new GiftsState();
}

class GiftsState extends State<Gifts> {
  bool GiftClaimed=false;
  Future<List<GiftData>> GiftFList;
  bool GiftFound=false;
  String GiftResult="";

  final AppLangTranslator = GoogleTranslator();

  Future<String> TranslateWord(S) async{
    String TS="";
    await AppLangTranslator.translate(S,to:SelectedLangAbv).then((TranslatedResult){
     TS=TranslatedResult;
    });
   return TS;
  }



  Future<List<GiftData>> getGiftData() async {
    var url = '../GetGifts.php';
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


  Future<List<GiftData>> ShowGiftData() async {
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

    print("Gifts Left To Claim : "+GiftDataLst.length.toString() );

    if(GiftDataLst.length>0){
      setState(() {
        GiftResult="$GiftTxtTrans!";
      });
    }
    else{
      setState(() {
        GiftResult="$NoGiftFoundTxtTrans!";
      });
    }

    for(int i=0;i<GiftDataLst.length;i++){
      var Title,Description;
      await TranslateWord(GiftDataLst[i].GiftTitle).then         ((value){     Title         =value;     });
      await TranslateWord(GiftDataLst[i].GiftDescription).then   ((value){     Description   =value;     });
      GiftDataLst[i].GiftTitle      =Title;
      GiftDataLst[i].GiftDescription=Description;
    }

    return GiftDataLst; 
}



  @override
  void initState(){
    super.initState();
    //createMyBannerAd();
    refreshList();
  }


  refreshList() {
    setState(() {
      GiftFList=ShowGiftData();
    });
  }


  Future<void> AddClaim(GiftID) async {
    String uploadEndPoint = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/ClaimGift.php';
     await http.post(uploadEndPoint, body: {
        "GiftID": GiftID,
        "UID"  : UID.toString(),
       });
  }



  Future<void> Claim(GiftData gift) async {


  
    setState(() {
      AvatarTokens=AvatarTokens+int.parse(gift.GiftTokens);
      AvatarXp    =AvatarXp    +int.parse(gift.GiftXP);
    });

    var dbApp = new DBApp();
    UserData US=new UserData("1",AvatarTokens,AvatarXp,AvatarName,AvatarImg,UID,PID,1);
    await dbApp.updateUserData(US);
    await dbApp.getAvatarInfo();

    setState(() {
      GiftDataLst.remove(gift);
      refreshList();
      GiftClaimed=false;
    });
    this.widget.parent.setState(() { }); 

    if(IsUserConnected==true){
      UpdateDataFireStore();
    }

    //MyinterstitialAd = createMyInterstitialAd()..load()..show();
    loadIntertitialAd=0;
  }



  SingleChildScrollView GiftDataCards(List<GiftData> GiftLst) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Container(
        width:MediaQuery.of(context).size.width,
        child:Column(
        children: <Widget>[
          for(var i=0;i<GiftLst.length;i++)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color:Colors.grey[200],
                child:ListTile(
                  title:Padding(
                    padding: const EdgeInsets.only(left:0,right:0,top:5,bottom:5),
                    child:Row(children: <Widget>[
                      Image.asset("Images/Gift.gif",width:35,height:35),
                      Text(
                      GiftLst[i].GiftTitle.toString(),
                      style:TextStyle(
                        fontFamily:"RaleWay",
                        color:Colors.red,
                      ),
                    ),
                    ],),
                    
                  ),
                  subtitle:Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Divider(color:Colors.blue,),
                      
                      Text(
                      GiftLst[i].GiftDescription.toString(),
                      style:TextStyle(
                        fontFamily:"RaleWay",
                        color:Colors.red,
                      ),
                    ),
                    SizedBox(height:6,),
                    Align(
                      alignment:Alignment.bottomRight,
                      child:Text(
                      "Sent "+GiftLst[i].GiftDate.toString(),
                      style:TextStyle(
                        fontFamily:"RaleWay",
                        color:Colors.blue,
                      ),
                    ),
                    ),
                    Divider(color:Colors.blue,),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                        children: <Widget>[
                          Image.asset("Images/coin.gif",width:16,height:16,),
                          Text(GiftLst[i].GiftTokens.toString()),
                          SizedBox(width:60,),
                          Image.asset("Images/Star.gif",width:16,height:16,),
                          Text(GiftLst[i].GiftXP.toString()),
                        ],
                     ),
                      ),
                     Divider(color:Colors.blue,),
                     (GiftClaimed==false)?
                     SizedBox(
                       width:double.infinity,
                       height:(GiftClaimed==false)?30:0,
                       child:RaisedButton(
                      child:Text(ClaimGiftTxtTrans),
                      onPressed:()  async {
                        setState(() {
                          GiftClaimed=true;
                        });
                        PlayLikeSound();
                        await AddClaim(GiftLst[i].GiftID);
                        await Claim(GiftLst[i]);
                      },
                      )
                      ):Row(children: <Widget>[
                         CircularProgressIndicator(),
                         SizedBox(width:5,),
                         Text("Claim Action In Progress..."),
                       ],),
                      SizedBox(height:5,),
                    
                   


                    ],
                  ),
                ),
              ),
            )

        ],
       ),
      )
    );
  }



  Widget build(BuildContext context) {
    return Scaffold(
                  backgroundColor:ThemeBg,
        appBar:AppBar(
                            backgroundColor:ThemeAppBar,
          leading:IconButton(
            onPressed:(){},
            icon:Image.asset("Images/Gift.gif",width:35,height:35,),
          ),
          title:Text(GiftTxtTrans),
          actions: <Widget>[
            (UID=="W7c6gejcz5eI5MEqMuWn")?FlatButton.icon(
              icon:Icon(Icons.add,color:Colors.white,),
              label:Text("Add",style:TextStyle(color:Colors.white),),
              onPressed:() {
                 PlayTapSound();
                   MainDrawerController.page=AuthCheckPage(ActivePage:GiftAdminAdd(widget.parent));           
              },
            ):SizedBox(),
            (UID=="W7c6gejcz5eI5MEqMuWn")?FlatButton.icon(
              icon:Icon(Icons.delete,color:Colors.white,),
              label:Text("Delete",style:TextStyle(color:Colors.white),),
              onPressed:() {
                PlayTapSound();
                   MainDrawerController.page=AuthCheckPage(ActivePage:GiftAdminDeletePage(widget.parent));           
              },
            ):SizedBox()
          ],
        ),
        
       bottomNavigationBar:(AddBanID!="NoAds")?BottomAppBar(
            color:Colors.transparent,
            child:Container(
              child:(MyBanner!=null)?MyBanner:Divider(),
            ),
          ):Divider(),
        
        body:ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:15,right:15,top:8,bottom:3),
              child:(GiftResult!="")?
              ClipRRect(
                            borderRadius:BorderRadius.circular(30.0),
                            child:
                            SizedBox(width:MediaQuery.of(context).size.width,
                              child:Card(
                                color:(ThemeResult=="Light")?Colors.teal:ThemeBg,
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    GiftResult,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontFamily: "Lobster",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),):SizedBox(),
            ),
           
            FutureBuilder(
              future:GiftFList,
              builder:(context,snapshot){
                if(snapshot.hasData){
                  GiftFound=true;
                  return GiftDataCards(snapshot.data);
                }
                else{
                  return Container(
                    width:MediaQuery.of(context).size.width,
                    height:MediaQuery.of(context).size.height-400,
                    child:Row(
                      mainAxisAlignment:MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.center,
                      children: <Widget>[
                        CircularProgressIndicator(),
                        SizedBox(width:10,),
                        Text(
                          FetchingGiftTxtTrans,
                          style:TextStyle(color:(ThemeResult=="Light")?Colors.black:Colors.white)
                        ),
                      ],
                    ),
                  );
                }
              },
            ),
          ],
        )
    );
  }


}
