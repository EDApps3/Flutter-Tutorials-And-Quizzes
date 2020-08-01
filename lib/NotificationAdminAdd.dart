import 'package:flutter/material.dart';
import 'SettingPage.dart';
import 'AuthCheck.dart';
import 'package:http/http.dart' as http;
import 'Notifications.dart';


class NotificationAdminAdd extends StatefulWidget {
  AuthCheckState parent;
  NotificationAdminAdd(this.parent);

  @override
  NotificationAdminAddState createState() => new NotificationAdminAddState();
}

class NotificationAdminAddState extends State<NotificationAdminAdd> {
  final NotifAdminAddformKey = new GlobalKey<FormState>();
  TextEditingController NotifDateCtrl         = new TextEditingController();
  TextEditingController NotifTitleCtrl        = new TextEditingController();
  TextEditingController NotifDescrCtrl        = new TextEditingController();
  TextEditingController NotifTypeCtrl         = new TextEditingController();
  TextEditingController NotifRedirectToCtrl   = new TextEditingController();
  TextEditingController NotifImageCtrl        = new TextEditingController();
  bool Loading=false;



  validate() async {
    if (NotifAdminAddformKey.currentState.validate()) {
      NotifAdminAddformKey.currentState.save();
       setState(() {
        Loading=true;
      });
      await AddNotification();
      this.widget.parent.setState(() {
        ActivePage=NotificationPage(this.widget.parent);
      });
    }  
  }


  @override
  void initState(){
    super.initState();
  }

  Future<void> AddNotification() async {
    String uploadEndPoint = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/AddNotification.php';
     await http.post(uploadEndPoint, body: {
        "Notif_Date"        : NotifDateCtrl.text        ,
        "Notif_Title"       : NotifTitleCtrl.text       ,
        "Notif_Description" : NotifDescrCtrl.text       ,
        "Notif_Type"        : NotifTypeCtrl.text        ,
        "Notif_RedirectTo"  : NotifRedirectToCtrl.text  ,
        "Notif_Image"       : NotifImageCtrl.text    ,
     });    
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
          title:Text("Notification Admin Add"),
          actions: <Widget>[
            (Loading==false)?FlatButton.icon(
              onPressed: validate,
              icon:Icon(Icons.send,color:Colors.white,),
              label:Text("Send",style:TextStyle(color:Colors.white)),
            ):SizedBox(),
          ],
    
        ),
        
        body:(Loading==false)?SingleChildScrollView(
          child:Padding(
            padding: const EdgeInsets.only(left:10,right:10,top:4,bottom:4),
            child:Form(
              key:NotifAdminAddformKey,
              child:Column(
               crossAxisAlignment:CrossAxisAlignment.start,
               children: <Widget>[

                Text("Notification Date:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:NotifDateCtrl,
                  decoration:InputDecoration(hintText:"Please Input Notification Date"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input Notification Date' : null,
                ),
                SizedBox(height:7,),

                Text("Notification Title:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:NotifTitleCtrl,
                  decoration:InputDecoration(hintText:"Please Input Notification Title"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input Notification Title' : null,
                ),
                SizedBox(height:7,),

                Text("Notification Description:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:NotifDescrCtrl,
                  decoration:InputDecoration(hintText:"Please Input Notification Description"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input Notification Description' : null,
                ),
                SizedBox(height:7,), 

                Text("Notification Type:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:NotifTypeCtrl,
                  decoration:InputDecoration(hintText:"Please Input Notification Type"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input Notification Type' : null,
                ),
                SizedBox(height:7,),

                Text("Notification RedirectTo:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:NotifRedirectToCtrl,
                  decoration:InputDecoration(hintText:"Please Input Notification RedirectTo"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input Notification RedirectTo' : null,
                ),
                SizedBox(height:7,),

                Text("Notification Image:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:NotifImageCtrl,
                  decoration:InputDecoration(hintText:"Please Input Notification Image"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input Notification Image' : null,
                ),
                SizedBox(height:7,),


              ],
            ),
          )
         ),
        ):Container(
          width :MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child:Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(width:5,),
              Text("Sending Notification..."),
            ],
          ),
        ),
    );
  }


}