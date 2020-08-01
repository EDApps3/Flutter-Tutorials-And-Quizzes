import 'package:flutter/material.dart';
import '_UISamples/UISample_1/UISampleInfo_1.dart';
import '_UISamples/UISample_2/UISampleInfo_2.dart';
import '_UISamples/UISample_3/UISampleInfo_3.dart';
import '_UISamples/UISample_4/UISampleInfo_4.dart';
import '_UISamples/UISample_5/UISampleInfo_5.dart';
import '_UISamples/UISample_6/UISampleInfo_6.dart';
import '_UISamples/UISample_7/UISampleInfo_7.dart';
import '_UISamples/UISample_8/UISampleInfo_8.dart';
import '_UISamples/UISample_9/UISampleInfo_9.dart';
import '_UISamples/UISample_1/UISamples_1.dart';
import '_UISamples/UISample_2/UISample_2.dart';
import 'UserDataInfo.dart';
import 'package:toast/toast.dart';
import 'AppSoundPlay.dart';
import '_UISamples/UISample_3/UISample_3.dart';
import '_UISamples/UISample_4/UISample_4.dart';
import '_UISamples/UISample_5/UISample_5.dart';
import '_UISamples/UISample_6/UISample_6.dart';
import '_UISamples/UISample_7/UISample_7.dart';
import '_UISamples/UISample_8/UISample_8.dart';
import '_UISamples/UISample_9/UISample_9.dart';
import 'main.dart';
import 'SettingPage.dart';
import 'AuthCheck.dart';
import 'LoadFireBaseAdmob.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

List SampleDataLst=new List();

int UnlockedBy_S1=0;
int UnlockedBy_S2=0;
int UnlockedBy_S3=0;
int UnlockedBy_S4=0;
int UnlockedBy_S5=0;
int UnlockedBy_S6=0;
int UnlockedBy_S7=0;
int UnlockedBy_S8=0;
int UnlockedBy_S9=0;


bool SampleUI1_Claimed=false;
bool SampleUI2_Claimed=false;
bool SampleUI3_Claimed=false;
bool SampleUI4_Claimed=false;
bool SampleUI5_Claimed=false;
bool SampleUI6_Claimed=false;
bool SampleUI7_Claimed=false;
bool SampleUI8_Claimed=false;
bool SampleUI9_Claimed=false;


class SampleData {
  String SampleName;
  String ClaimBy;

  SampleData(
      this.SampleName,
      this.ClaimBy,
      );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'SampleName'       : SampleName,
      'ClaimBy'          : ClaimBy,
    };
    return map;
  }

  SampleData.fromMap(Map<String, dynamic> map) {
    SampleName       = map['SampleName'];
    ClaimBy        = map['ClaimBy'];
  }

}


class Samples extends StatefulWidget {
  AuthCheckState parent;
  Samples(this.parent);

  @override
  SamplesState createState() => new SamplesState();
}

class SamplesState extends State<Samples> {
  var LoadingSample=true;
  Future<List<SampleData>> SampleFList;
  ScrollController SCSample = new ScrollController();

  Future<List<SampleData>> getSampleData() async {
    var url = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/GetSampleClaim.php';
    http.Response response = await http.get(url);

    var maps = jsonDecode(response.body);
    print(response.body);
    List<SampleData> SampleDataArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        SampleDataArr.add(SampleData.fromMap(maps[i]));
      }
    }
    SampleDataArr;
    UnlockedBy_S1=0;
    UnlockedBy_S2=0;
    UnlockedBy_S3=0;
    UnlockedBy_S4=0;
    UnlockedBy_S5=0;
    UnlockedBy_S6=0;
    UnlockedBy_S7=0;
    UnlockedBy_S8=0;
    UnlockedBy_S9=0;

    SampleUI1_Claimed=false;
    SampleUI2_Claimed=false;
    SampleUI3_Claimed=false;
    SampleUI4_Claimed=false;
    SampleUI5_Claimed=false;
    SampleUI6_Claimed=false;
    SampleUI7_Claimed=false;
    SampleUI8_Claimed=false;
    SampleUI9_Claimed=false;

    for(int i=0;i<SampleDataArr.length;i++){
      SampleData SD=SampleDataArr[i];

      print(SD.ClaimBy);


      if(SD.SampleName=="Sample1" && SD.ClaimBy==UID){
        SampleUI1_Claimed=true;
        print("Sample 1 Claimed!");
      }
      if(SD.SampleName=="Sample1"){
        UnlockedBy_S1++;
      }

      if(SD.SampleName=="Sample2" && SD.ClaimBy==UID){
        SampleUI2_Claimed=true;
        print("Sample 2 Claimed!");
      }
      if(SD.SampleName=="Sample2"){
        UnlockedBy_S2++;
      }


      if(SD.SampleName=="Sample3" && SD.ClaimBy==UID){
        SampleUI3_Claimed=true;
        print("Sample 3 Claimed!");
      }
      if(SD.SampleName=="Sample3"){
        UnlockedBy_S3++;
      }

      if(SD.SampleName=="Sample4" && SD.ClaimBy==UID){
        SampleUI4_Claimed=true;
        print("Sample 4 Claimed!");
      }
      if(SD.SampleName=="Sample4"){
        UnlockedBy_S4++;
      }

      if(SD.SampleName=="Sample5" && SD.ClaimBy==UID){
        SampleUI5_Claimed=true;
        print("Sample 5 Claimed!");
      }
      if(SD.SampleName=="Sample5"){
        UnlockedBy_S5++;
      }

      if(SD.SampleName=="Sample6" && SD.ClaimBy==UID){
        SampleUI6_Claimed=true;
        print("Sample 6 Claimed!");
      }
      if(SD.SampleName=="Sample6"){
        UnlockedBy_S6++;
      }

      if(SD.SampleName=="Sample7" && SD.ClaimBy==UID){
        SampleUI7_Claimed=true;
        print("Sample 7 Claimed!");
      }
      if(SD.SampleName=="Sample7"){
        UnlockedBy_S7++;
      }

      if(SD.SampleName=="Sample8" && SD.ClaimBy==UID){
        SampleUI8_Claimed=true;
        print("Sample 8 Claimed!");
      }
      if(SD.SampleName=="Sample8"){
        UnlockedBy_S8++;
      }

      if(SD.SampleName=="Sample9" && SD.ClaimBy==UID){
        SampleUI9_Claimed=true;
        print("Sample 9 Claimed!");
      }
      if(SD.SampleName=="Sample9"){
        UnlockedBy_S9++;
      }

    }

    setState(() {
      LoadingSample=false;
    });

   
    return SampleDataArr;
  }







  @override
  void initState(){
    //ShowMyAds();
    super.initState();
    refreshList();
  }

  refreshList() {
    setState(() {
      SampleFList=getSampleData();
    });
  }


  Future<void> ClaimSample(String SampleName,int Price) async {
    String uploadEndPoint = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/ClaimSample.php';
     await http.post(uploadEndPoint, body: {
        "ClaimBy"     : UID,
        "SampleName"  : SampleName,
     });
     setState(() {
      AvatarTokens=AvatarTokens-Price;
     });
     this.widget.parent.setState(() { }); 
    var dbApp = new DBApp();
    UserData US=new UserData("1",AvatarTokens,AvatarXp,AvatarName,AvatarImg,UID,PID,1);
    await dbApp.updateUserData(US);
    await dbApp.getAvatarInfo();
    await UpdateDataFireStore();
    refreshList();
  }


  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:ThemeBg,
      appBar:AppBar(
        backgroundColor:ThemeAppBar,
        leading:IconButton(
          icon:Image.asset("Images/Samples.gif",width:35,height:35,),
          onPressed:(){} ,
        ),
        title:Text("UI Samples"),
      ),
      floatingActionButton:Column(
        mainAxisAlignment:MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width:37,
            height:37,
            child:FloatingActionButton(
              heroTag:"FAB_Sample_Up",
              backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_up),
              onPressed:(){
                SCSample.animateTo(
                  0,
                  duration:Duration(milliseconds:500),
                  curve:Curves.fastOutSlowIn,
                );
              },
            ),
          ),
          SizedBox(height:6,),
          Container(
            width:37,
            height:37,
            child:FloatingActionButton(
              heroTag:"FAB_Sample_Down",
              backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_down),
              onPressed:(){
                SCSample.animateTo(
                  SCSample.position.maxScrollExtent,
                  duration:Duration(milliseconds:500),
                  curve:Curves.fastOutSlowIn,
                );
              },
            ),
          ),
          SizedBox(height:65)
        ],
      ),
      body:(LoadingSample==false)?ListView(
        controller:SCSample,
        children: <Widget>[










          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[ 
                        Text("UI Sample 1 | Unlocked By ",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                        ClipOval(child:Container(width:20,height:20,color:Colors.red,child:Center(child:Text(UnlockedBy_S1.toString(),style:TextStyle(color:Colors.white),),),),),
                        Text(" Users",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                      ],
                    ),
                    Divider(color:Colors.grey,),
                    Text(
                      "-Page Slider\n-Authentication Buttons\n-Profile View",
                      style: TextStyle(color:Colors.teal,fontSize:13,fontFamily: "Raleway",),
                    ),
                    UISampleInfo1(),
                    Divider(),
                    SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:
                      Row(
                        children: <Widget>[
                          (SampleUI1_Claimed==false)?
                          SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.red.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                if(AvatarTokens<600){
                                  Toast.show ("Not Enought Tokens!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                                else{
                                  setState(() {
                                    LoadingSample=true;
                                  });
                                  ClaimSample("Sample1",600);
                                  Toast.show ("Unlocking Please Wait!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                              },
                              icon:Image.asset("Images/coin.gif",width:15,height:15,),
                              label:Text(
                                "Unlock With 600",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ): SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.green.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.pushNamed(context,"/Sample1");
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Show Code Info",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:7,),
                          SizedBox(
                            child:FlatButton.icon(
                              color:Colors.teal.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>UISample1()));
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Try It Now!",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),













          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[ 
                        Text("UI Sample 2 | Unlocked By ",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                        ClipOval(child:Container(width:20,height:20,color:Colors.red,child:Center(child:Text(UnlockedBy_S2.toString(),style:TextStyle(color:Colors.white),),),),),
                        Text(" Users",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                      ],
                    ),
                    Divider(color:Colors.grey,),
                    Text(
                      "-Login Page\n-SignUp Page",
                      style: TextStyle(color:Colors.teal,fontSize:13,fontFamily: "Raleway",),
                    ),
                    UISampleInfo2(),
                    Divider(),
                    SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:
                      Row(
                        children: <Widget>[
                          (SampleUI2_Claimed==false)?
                          SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.red.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                if(AvatarTokens<400){
                                  Toast.show ("Not Enought Tokens!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                                else{
                                  setState(() {
                                    LoadingSample=true;
                                  });
                                  ClaimSample("Sample2",400);
                                  Toast.show ("Unlocking Please Wait!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                              },
                              icon:Image.asset("Images/coin.gif",width:15,height:15,),
                              label:Text(
                                "Unlock With 400",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ): SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.green.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.pushNamed(context,"/Sample2");
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Show Code Info",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:7,),
                          SizedBox(
                            child:FlatButton.icon(
                              color:Colors.teal.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>UISample2()));
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Try It Now!",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),




















          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[ 
                        Text("UI Sample 3 | Unlocked By ",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                        ClipOval(child:Container(width:20,height:20,color:Colors.red,child:Center(child:Text(UnlockedBy_S3.toString(),style:TextStyle(color:Colors.white),),),),),
                        Text(" Users",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                      ],
                    ),
                    Divider(color:Colors.grey,),
                    Text(
                      "-Tic Tac Toe",
                      style: TextStyle(color:Colors.teal,fontSize:13,fontFamily: "Raleway",),
                    ),
                    UISampleInfo3(),
                    Divider(),
                    SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:
                      Row(
                        children: <Widget>[
                          (SampleUI3_Claimed==false)?
                          SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.red.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                if(AvatarTokens<300){
                                  Toast.show ("Not Enought Tokens!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                                else{
                                  setState(() {
                                    LoadingSample=true;
                                  });
                                  ClaimSample("Sample3",300);
                                  Toast.show ("Unlocking Please Wait!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                              },
                              icon:Image.asset("Images/coin.gif",width:15,height:15,),
                              label:Text(
                                "Unlock With 300",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ): SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.green.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.pushNamed(context,"/Sample3");
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Show Code Info",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:7,),
                          SizedBox(
                            child:FlatButton.icon(
                              color:Colors.teal.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>UISample3()));
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Try It Now!",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
















          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[ 
                        Text("UI Sample 4 | Unlocked By ",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                        ClipOval(child:Container(width:20,height:20,color:Colors.red,child:Center(child:Text(UnlockedBy_S4.toString(),style:TextStyle(color:Colors.white),),),),),
                        Text(" Users",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                      ],
                    ),                    Divider(color:Colors.grey,),
                    Text(
                      "-Calculator",
                      style: TextStyle(color:Colors.teal,fontSize:13,fontFamily: "Raleway",),
                    ),
                    UISampleInfo4(),
                    Divider(),
                    SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:
                      Row(
                        children: <Widget>[
                          (SampleUI4_Claimed==false)?
                          SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.red.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                if(AvatarTokens<300){
                                  Toast.show ("Not Enought Tokens!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                                else{
                                  setState(() {
                                    LoadingSample=true;
                                  });
                                  ClaimSample("Sample4",300);
                                  Toast.show ("Unlocking Please Wait!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                              },
                              icon:Image.asset("Images/coin.gif",width:15,height:15,),
                              label:Text(
                                "Unlock With 300",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ): SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.green.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.pushNamed(context,"/Sample4");
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Show Code Info",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:7,),
                          SizedBox(
                            child:FlatButton.icon(
                              color:Colors.teal.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>UISample4()));
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Try It Now!",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),




















          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[ 
                        Text("UI Sample 5 | Unlocked By ",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                        ClipOval(child:Container(width:20,height:20,color:Colors.red,child:Center(child:Text(UnlockedBy_S5.toString(),style:TextStyle(color:Colors.white),),),),),
                        Text(" Users",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                      ],
                    ),
                    Divider(color:Colors.grey,),
                    Text(
                      "-Jumping Game",
                      style: TextStyle(color:Colors.teal,fontSize:13,fontFamily: "Raleway",),
                    ),
                    UISampleInfo5(),
                    Divider(),
                    SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:
                      Row(
                        children: <Widget>[
                          (SampleUI5_Claimed==false)?
                          SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.red.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                if(AvatarTokens<400){
                                  Toast.show ("Not Enought Tokens!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                                else{
                                  setState(() {
                                    LoadingSample=true;
                                  });
                                  ClaimSample("Sample5",400);
                                  Toast.show ("Unlocking Please Wait!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                              },
                              icon:Image.asset("Images/coin.gif",width:15,height:15,),
                              label:Text(
                                "Unlock With 400",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ): SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.green.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.pushNamed(context,"/Sample5");
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Show Code Info",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:7,),
                          SizedBox(
                            child:FlatButton.icon(
                              color:Colors.teal.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>UISample5()));
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Try It Now!",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
























          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[ 
                        Text("UI Sample 6 | Unlocked By ",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                        ClipOval(child:Container(width:20,height:20,color:Colors.red,child:Center(child:Text(UnlockedBy_S6.toString(),style:TextStyle(color:Colors.white),),),),),
                        Text(" Users",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                      ],
                    ),
                    Divider(color:Colors.grey,),
                    Text(
                      "-Fish UI\n-Hero And Bubble Animation\n",
                      style: TextStyle(color:Colors.teal,fontSize:13,fontFamily: "Raleway",),
                    ),
                    UISampleInfo6(),
                    Divider(),
                    SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:
                      Row(
                        children: <Widget>[
                          (SampleUI6_Claimed==false)?
                          SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.red.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                if(AvatarTokens<500){
                                  Toast.show ("Not Enought Tokens!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                                else{
                                  setState(() {
                                    LoadingSample=true;
                                  });
                                  ClaimSample("Sample6",500);
                                  Toast.show ("Unlocking Please Wait!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                              },
                              icon:Image.asset("Images/coin.gif",width:15,height:15,),
                              label:Text(
                                "Unlock With 500",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ): SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.green.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.pushNamed(context,"/Sample6");
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Show Code Info",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:7,),
                          SizedBox(
                            child:FlatButton.icon(
                              color:Colors.teal.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>UISample6()));
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Try It Now!",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),






















           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[ 
                        Text("UI Sample 7 | Unlocked By ",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                        ClipOval(child:Container(width:20,height:20,color:Colors.red,child:Center(child:Text(UnlockedBy_S7.toString(),style:TextStyle(color:Colors.white),),),),),
                        Text(" Users",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                      ],
                    ),
                    Divider(color:Colors.grey,),
                    Text(
                      "-Life Path Calculator With Info\n",
                      style: TextStyle(color:Colors.teal,fontSize:13,fontFamily: "Raleway",),
                    ),
                    UISampleInfo7(),
                    Divider(),
                    SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:
                      Row(
                        children: <Widget>[
                          (SampleUI7_Claimed==false)?
                          SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.red.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                if(AvatarTokens<400){
                                  Toast.show ("Not Enought Tokens!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                                else{
                                  setState(() {
                                    LoadingSample=true;
                                  });
                                  ClaimSample("Sample7",400);
                                  Toast.show ("Unlocking Please Wait!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                              },
                              icon:Image.asset("Images/coin.gif",width:15,height:15,),
                              label:Text(
                                "Unlock With 400",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ): SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.green.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.pushNamed(context,"/Sample7");
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Show Code Info",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:7,),
                          SizedBox(
                            child:FlatButton.icon(
                              color:Colors.teal.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>UISample7()));
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Try It Now!",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
























           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[ 
                        Text("UI Sample 8 | Unlocked By ",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                        ClipOval(child:Container(width:20,height:20,color:Colors.red,child:Center(child:Text(UnlockedBy_S8.toString(),style:TextStyle(color:Colors.white),),),),),
                        Text(" Users",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                      ],
                    ),
                    Divider(color:Colors.grey,),
                    Text(
                      "-Animated Splash Screen\n",
                      style: TextStyle(color:Colors.teal,fontSize:13,fontFamily: "Raleway",),
                    ),
                    UISampleInfo8(),
                    Divider(),
                    SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:
                      Row(
                        children: <Widget>[
                          (SampleUI8_Claimed==false)?
                          SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.red.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                if(AvatarTokens<200){
                                  Toast.show ("Not Enought Tokens!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                                else{
                                  setState(() {
                                    LoadingSample=true;
                                  });
                                  ClaimSample("Sample8",200);
                                  Toast.show ("Unlocking Please Wait!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                              },
                              icon:Image.asset("Images/coin.gif",width:15,height:15,),
                              label:Text(
                                "Unlock With 200",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ): SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.green.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.pushNamed(context,"/Sample8");
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Show Code Info",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:7,),
                          SizedBox(
                            child:FlatButton.icon(
                              color:Colors.teal.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>UISample8()));
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Try It Now!",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),






























           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child:Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      children: <Widget>[ 
                        Text("UI Sample 9 | Unlocked By ",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                        ClipOval(child:Container(width:20,height:20,color:Colors.red,child:Center(child:Text(UnlockedBy_S9.toString(),style:TextStyle(color:Colors.white),),),),),
                        Text(" Users",style: TextStyle(color:Colors.blue,fontSize:17,fontFamily: "PT-Mono",),),
                      ],
                    ),
                    Divider(color:Colors.grey,),
                    Text(
                      "-Authentication\n-Creating Gifts For Users\n-Hide Claimed Gift",
                      style: TextStyle(color:Colors.teal,fontSize:13,fontFamily: "Raleway",),
                    ),
                    UISampleInfo9(),
                    Divider(),
                    SingleChildScrollView(
                      scrollDirection:Axis.horizontal,
                      child:
                      Row(
                        children: <Widget>[
                          (SampleUI9_Claimed==false)?
                          SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.red.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                if(AvatarTokens<1500){
                                  Toast.show ("Not Enought Tokens!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                                else{
                                  setState(() {
                                    LoadingSample=true;
                                  });
                                  ClaimSample("Sample9",1500);
                                  Toast.show ("Unlocking Please Wait!",context,duration: Toast.LENGTH_SHORT,gravity: Toast.BOTTOM,textColor: Colors.white,);
                                }
                              },
                              icon:Image.asset("Images/coin.gif",width:15,height:15,),
                              label:Text(
                                "Unlock With 1500",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ): SizedBox(
                            width:173,
                            child:FlatButton.icon(
                              color:Colors.green.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.pushNamed(context,"/Sample9");
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Show Code Info",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width:7,),
                          SizedBox(
                            child:FlatButton.icon(
                              color:Colors.teal.withOpacity(0.8),
                              onPressed:(){
                                PlayTapSound();
                                Navigator.push(context,MaterialPageRoute(builder:(context)=>UISample9()));
                              },
                              icon:Image.asset("Images/Samples.gif",width:15,height:15,),
                              label:Text(
                                "Try It Now!",
                                style:TextStyle(
                                  color:Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),

























        ],
      ):Container(
        width:MediaQuery.of(context).size.width,
        height:MediaQuery.of(context).size.height,
        child:Center(
          child:Row(
            children: <Widget>[
              SizedBox(width:70,),
              CircularProgressIndicator(),
              SizedBox(width:7,),
              Text(
                "Getting Samples,Please Wait..."
                ,style:TextStyle(color:(ThemeResult=="Light")?Colors.black:Colors.white)
              ),
            ],
          ),
        ),
      ),
    );
  }


}