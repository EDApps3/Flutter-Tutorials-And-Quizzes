import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/Samples.dart';
import 'NotificationAdminAdd.dart';
import 'SettingPage.dart';
import 'AuthCheck.dart';
import 'Gifts.dart';
import 'LeaderBoard.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'UserDataInfo.dart';
import 'NotificationAdminDelete.dart';
import 'AppSoundPlay.dart';
import 'AppLang.dart';
import 'package:translator/translator.dart';


List NotificationLst=new List();
List NotificationReadLst=new List();

class NotificationData {
  String Notif_ID;
  String Notif_Title;
  String Notif_Description;
  String Notif_Type;
  String Notif_RedirectTo;
  String Notif_Image;
  String Notif_Date;

  NotificationData(
      this.Notif_ID,
      this.Notif_Title,
      this.Notif_Description,
      this.Notif_Type,
      this.Notif_RedirectTo,
      this.Notif_Image,
      this.Notif_Date,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'Notif_ID'            : Notif_ID,
      'Notif_Title'         : Notif_Title,
      'Notif_Description'   : Notif_Description,
      'Notif_Type'          : Notif_Type,
      'Notif_RedirectTo'    : Notif_RedirectTo,
      'Notif_Image'         : Notif_Image,
      'Notif_Date'          : Notif_Date,
    };
    return map;
  }

  NotificationData.fromMap(Map<String, dynamic> map) {
    Notif_ID            = map['Notif_ID'];
    Notif_Title         = map['Notif_Title'];
    Notif_Description   = map['Notif_Description'];
    Notif_Type          = map['Notif_Type'];
    Notif_RedirectTo    = map['Notif_RedirectTo'];
    Notif_Image         = map['Notif_Image'];
    Notif_Date          = map['Notif_Date'];
  }

}
 

class NotificationReadData {
  String Notif_ID;
  String UID;

  NotificationReadData(
      this.Notif_ID,
      this.UID,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'Notif_ID'  : Notif_ID,
      'UID'     : UID,
    };
    return map;
  }

  NotificationReadData.fromMap(Map<String, dynamic> map) {
    Notif_ID         = map['Notif_ID'];
    UID              = map['UID'];
  }

}




class NotificationPage extends StatefulWidget {
  AuthCheckState parent;
  NotificationPage(this.parent);

  @override
  NotificationPageState createState() => new NotificationPageState();
}

class NotificationPageState extends State<NotificationPage> {
  bool GiftClaimed=false;
  Future<List<NotificationData>> GiftFList;
  bool NotifFound=false;
  String NotifResult="";
  bool Deleting=false;

  final AppLangTranslator = GoogleTranslator();

  Future<String> TranslateWord(S) async{
    String TS="";
    await AppLangTranslator.translate(S,to:SelectedLangAbv).then((TranslatedResult){
     TS=TranslatedResult;
    });
   return TS;
  }


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

    if(NotificationLst.length>0){
      setState(() {
        NotifResult="$NotificationsTxtTrans!";
      });
    }
    else{
      setState(() {
        NotifResult="$NoNotificationFoundTxtTrans!";
      });
    }

    for(int i=0;i<NotificationLst.length;i++){
      var Title,Description;
      await TranslateWord(NotificationLst[i].Notif_Title).then         ((value){     Title         =value;     });
      await TranslateWord(NotificationLst[i].Notif_Description).then   ((value){     Description   =value;     });
      NotificationLst[i].Notif_Title      =Title;
      NotificationLst[i].Notif_Description=Description;
    }

    return NotificationLst; 
}


  Future<void> ReadNotif(Notif) async {
    setState(() {
      Deleting=true;
    });
    String uploadEndPoint = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/ReadNotif.php';
     await http.post(uploadEndPoint, body: {
        "Notif_ID": Notif.Notif_ID,
        "UID"     : UID.toString(),
     });
     NotificationLst.remove(Notif);
     refreshList();
     setState(() {
      Deleting=false;
     });
  }


  @override
  void initState(){
    //ShowMyAds();
    super.initState();
    //createMyBannerAd();
    refreshList();
  }


  refreshList() {
    setState(() {
      GiftFList=ShowNotificationData();
    });
  }

  


  

  SingleChildScrollView NotifDataCards(List<NotificationData> NotifLst) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:Column(
        children: <Widget>[
          for(var i=0;i<NotifLst.length;i++)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color:Colors.grey[200],
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      leading:
                       (NotifLst[i].Notif_Title.toString().contains("Gift"))?
                         Image.asset("Images/Gift.gif",width:35,height:35,):
                       (NotifLst[i].Notif_Title.toString().contains("LeaderBoard"))?
                         Image.asset("Images/trophy.png",width:35,height:35,):
                       (NotifLst[i].Notif_Title.toString().contains("UISample"))?
                         Image.asset("Images/Samples.gif",width:35,height:35,)
                         :Icon(Icons.notification_important),
                      title:Text(
                        NotifLst[i].Notif_Title.toString(),
                          style: TextStyle(
                            color: Colors.blueGrey,
                                      fontFamily: "Lobster",
                                      fontSize: 14,
                                    ), 
                                  ),
                     
                      trailing:(Deleting==false)?IconButton(
                        icon:Icon(Icons.delete),
                        onPressed:()  {
                          ReadNotif(NotifLst[i]);
                        }
                      ):CircularProgressIndicator(),
                    ),
                    Divider(color:Colors.blue,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          
                          NotifLst[i].Notif_Description.toString(),
                            style: TextStyle(
                              color: Colors.blueGrey,
                                        fontFamily: "Lobster",
                                        fontSize: 13, 
                                      ),
                                    ),
                    ),
                    (NotifLst[i].Notif_Image.toString()=="NoImage")?
                      SizedBox():
                      Image.network(
              NotifLst[i].Notif_Image.toString(),
              fit: BoxFit.cover,
              loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                if (loadingProgress == null) return child;
                return Center(
                  child: CircularProgressIndicator(
                    value: loadingProgress.expectedTotalBytes != null ?
                    loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                        : null,
                  ),
                );
              },
            ),
             Align(
              alignment:Alignment.bottomRight,
              child:Text(
                          NotifLst[i].Notif_Date.toString(),
                            style: TextStyle(
                              color: Colors.blue,
                                        fontFamily: "Lobster",
                                        fontSize: 10, 
                                      ),
                                    ),
            ), 
            Divider(color:Colors.blue,),
           
            Padding(
              padding: const EdgeInsets.all(4.0),
              child: SizedBox(
                width:MediaQuery.of(context).size.width,
                child:(NotifLst[i].Notif_Type=="Local")?RaisedButton(
                  child:Text(ProceedTxtTrans),
                  onPressed:(){
                    var Proceed=NotifLst[i].Notif_RedirectTo.toString();
                    if(Proceed=="Gift"){
                      this.widget.parent.setState(() { 
                        ActivePage=Gifts(this.widget.parent);
                      });
                    }
                    else if(Proceed=="LeaderBoard"){
                       this.widget.parent.setState(() { 
                        ActivePage=LeaderBoard();
                      });
                    }
                    else if(Proceed=="UISample"){
                       this.widget.parent.setState(() { 
                        ActivePage=Samples(this.widget.parent);
                      });
                    }
                  },
                ):RaisedButton(
                  child:Text("Proceed"),
                   onPressed:() async{
                    var url="https://www.facebook.com/EDApps-104598497562080";
                      if(await canLaunch(url)){
                       await launch(url);
                      }
                      else{
                       throw 'Could Not Launch Url!';
                    }
                   },
                ),
              ),
            )




                    
                  ],
                )
              ),
            )

        ],
       ),
    );
  }



  Widget build(BuildContext context) {
    return Scaffold(
                  backgroundColor:ThemeBg,
        appBar:AppBar(
                            backgroundColor:ThemeAppBar,
          leading:IconButton(
            onPressed:(){},
            icon:Icon(Icons.notification_important),
          ),
          title:Text(NotificationsTxtTrans),
          actions: <Widget>[
            (UID=="W7c6gejcz5eI5MEqMuWn")?FlatButton.icon(
              icon:Icon(Icons.add,color:Colors.white,),
              label:Text("Add",style:TextStyle(color:Colors.white),),
              onPressed:() {
                   PlayTapSound();
                   MainDrawerController.page=AuthCheckPage(ActivePage:NotificationAdminAdd(widget.parent));           
                
              },
            ):SizedBox(),
            (UID=="W7c6gejcz5eI5MEqMuWn")?FlatButton.icon(
              icon:Icon(Icons.delete,color:Colors.white,),
              label:Text("Delete",style:TextStyle(color:Colors.white),),
              onPressed:() {
                PlayTapSound();
                   MainDrawerController.page=AuthCheckPage(ActivePage:NotificationAdminDeletePage(widget.parent));           
                
               
                
              },
            ):SizedBox()
          ],
        ),
       
        body:ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:15,right:15,top:8,bottom:3),
              child:(NotifResult!="")?
              ClipRRect(
                            borderRadius:BorderRadius.circular(30.0),
                            child:
                            SizedBox(width:MediaQuery.of(context).size.width,
                              child:Card(
                                color:(ThemeResult=="Light")?Colors.teal:ThemeBg,
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    NotifResult,
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
                  NotifFound=true;
                  return NotifDataCards(snapshot.data);
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
                          FetchingNotificationsTxtTrans,
                          style:TextStyle(
                            color:(ThemeResult=="Light")?Colors.black:Colors.white
                          ),
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