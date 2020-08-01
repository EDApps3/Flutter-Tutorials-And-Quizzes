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
import 'Notifications.dart';



class NotificationAdminDeletePage extends StatefulWidget {
  AuthCheckState parent;
  NotificationAdminDeletePage(this.parent);

  @override
  NotificationAdminDeletePageState createState() => new NotificationAdminDeletePageState();
}

class NotificationAdminDeletePageState extends State<NotificationAdminDeletePage> {
  Future<List<NotificationData>> GiftFList;
  bool NotifFound=false;
  String NotifResult="";
  bool Deleting=false;


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

    if(NotificationDataArr.length>0){
      setState(() {
        NotifResult="Notifications!";
      });
    }
    else{
      setState(() {
        NotifResult="No Notification Found!";
      });
    }
    return NotificationDataArr;
  }





  Future<void> DeleteNotif(Notif) async {
    setState(() {
      Deleting=true;
    });
    String uploadEndPoint = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/DeleteNotification.php';
     await http.post(uploadEndPoint, body: {
        "Notif_ID": Notif.Notif_ID,
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
      GiftFList=getNotificationData();
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
                          DeleteNotif(NotifLst[i]);
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
          title:Text("Notification Admin Delete"),
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
                        Text("Fetching Notifications..."),
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