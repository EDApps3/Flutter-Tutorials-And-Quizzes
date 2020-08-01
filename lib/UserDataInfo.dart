import 'dart:async';
import 'package:flutter/material.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'Profile.dart';
import 'SettingPage.dart';
import 'AuthCheck.dart';
import 'Notifications.dart';
import 'Tokens.dart';
import 'UpdateApp.dart';
import 'LoadFireBaseAdmob.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'CheckConnection.dart';
import 'AppSoundPlay.dart';
import 'AppLang.dart';


 
double XpPercVal=1.0;
int AvatarXp,AvatarTokens,XpMax;
String UID,PID,AvatarImg,AvatarName;
String Lvl;
bool LoadedNotif=false;



Future<List<NotificationData>> getNotificationData() async {
    var url = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/GetNotification.php';
    http.Response response = await http.get(url);
    var maps = jsonDecode(response.body);
    print(response.body);
    List<NotificationData> NotificationDataArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        NotificationDataArr.add(NotificationData.fromMap(maps[i]));
      }
    }
    return NotificationDataArr;
  }

  Future<List<NotificationReadData>> getNotificationReadData() async {
    var url = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/GetNotificationRead.php';
    http.Response response = await http.get(url);
    var maps = jsonDecode(response.body);
    print(response.body);
    List<NotificationReadData> NotificationReadDataArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        NotificationReadDataArr.add(NotificationReadData.fromMap(maps[i]));
      }
    }
    return NotificationReadDataArr;
  }


  Future<List<NotificationData>> ShowNotificationData() async {
    List NotifReadIndex=new List();
    NotificationLst= await getNotificationData();
    print("Found "+NotificationLst.length.toString() +"Notifications!");
    NotificationReadLst=await getNotificationReadData();

    for(int j=0;j<NotificationLst.length;j++){
      NotificationData GD=NotificationLst[j];
      for(int i=0;i<NotificationReadLst.length;i++){
        NotificationReadData GCD=NotificationReadLst[i];
        if(GD.Notif_ID.toString()==GCD.Notif_ID.toString() ){
          if(GCD.UID.toString()==UID.toString() ){
            print("Found 1 Read Notification!");
            NotifReadIndex.add(GD);
          }
        }
      }
    }

    if(NotifReadIndex.length!=0){
      for(int i=0;i<NotifReadIndex.length;i++){
        NotificationLst.remove(NotifReadIndex[i]);
      }
    }
    print("Notification Left To Read : "+NotificationLst.length.toString() );
    LoadedNotif=true;

    
    return NotificationLst; 
}




class UserDataInfo extends StatefulWidget {
  AuthCheckState parent;
  UserDataInfo(this.parent);

  @override
  UserDataInfoState createState() => new UserDataInfoState();
}

class UserDataInfoState extends State<UserDataInfo> {
  Timer timer;


  @override
  void initState(){
    super.initState();
    if(LoginResult!="NoLoginFound"){
    timer = Timer.periodic(Duration(seconds:5), (Timer t){
      CheckConnection();
      setState((){
       ShowNotificationData();
      });
      new Flutter_AppBadger().AddBadge(NotificationLst.length);
      this.widget.parent.setState(() { });
      getAdmob();
    });
    }
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      width:300,
      child:
    Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start ,
      children: <Widget>[

        Container(
          color:Colors.transparent,
          width:MediaQuery.of(context).size.width,
          height:55, 
          child:ListTile(
              contentPadding:const EdgeInsets.all(1.0), 
              trailing:null,
                  onTap:(){ 
                    PlayTapSound(); 
                    MainDrawerController.page=AuthCheckPage(ActivePage:ProfilePage());           
                  },
                  
                leading:ClipOval(
                  child:Container(
                    child:(LoginResult=="Guest")?
                    Image.asset(AvatarImg):
                    Image.network(
                        AvatarImg,
                        width :43,  
                        height:43,    
                      loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
                          value: loadingProgress.expectedTotalBytes != null ?
                          loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                              : null,
                        );
                      },
                    ),
                  ),
                ),
                title:Padding( 
                  padding: const EdgeInsets.only(left:0,right:0,bottom:0,top:5),
                  child: Row(
                    children: <Widget>[ 
                      (IsUserConnected==true)?Icon(Icons.wifi,color:Colors.green,size:15,):Icon(Icons.signal_wifi_off,color:Colors.red,size:15,),
                      SizedBox(width:4,),
                      Text(AvatarName,style:TextStyle(color:Colors.white,fontSize:14),),
                    ],
                  ),
                ),
                subtitle:SingleChildScrollView(
                  scrollDirection:Axis.horizontal,
                  child:Container(
                    width:1000,
                    child:Column(
                  children: <Widget>[
                    Row(
                  children: <Widget>[
                    Image.asset("Images/Star.gif",width:15,height:15),                    
                    Text(" $LevelTxtTrans $Lvl",style:TextStyle(color:Colors.white,fontSize:12),),
                    SizedBox(width:9,),
                    Image.asset("Images/coin.gif",width:15,height:15),
                    Text(" $AvatarTokens ",style:TextStyle(color:Colors.white,fontSize:12),),
                    GestureDetector(
                      onTap:(){
                         PlayTapSound();
                         MainDrawerController.page=AuthCheckPage(ActivePage:TokensPage(widget.parent));           
                      },
                     child:Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipOval(
                        child: Container(
                        color:Colors.blueGrey,
                        width:13,
                        height:13,
                        child:Center(child:Text("+",style:TextStyle(color:Colors.white,fontSize:12),),),
                      ),
                      ),
                    ),
                    ),
                    SizedBox(width:5,),

                    GestureDetector(
                      child:Icon(Icons.notification_important,size:21,color:Colors.grey,),
                      onTap:(){
                        PlayTapSound();
                        MainDrawerController.page=AuthCheckPage(ActivePage:NotificationPage(widget.parent));           
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.all(3.0),
                      child: ClipOval(
                        child: Container(
                        color:Colors.red,
                        width:13,
                        height:13,
                        child:(LoadedNotif==true)?Center(child:Text(NotificationLst.length.toString(),style:TextStyle(color:Colors.white,fontSize:12),),):CircularProgressIndicator(),
                      ),
                      ),
                    ),

                  
                   
                    
                    
                  ],
                ),

                 new LinearPercentIndicator(
                  animation:true,
                  width:218,   
                  lineHeight: 15.0,  
                  percent: XpPercVal,
                  center: Text(
                     "$AvatarXp/$XpMax",
                    style: new TextStyle(fontSize: 12.0,color:Colors.white),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.red.withOpacity(0.5),
                ),
                

                
                    
                    
                  ],
                ),
                )
                ),
           
        
        

      
        
       
      
      
                  
        ),
        ),
      ],
      
    ),      
      );

  }
}






