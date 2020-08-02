import 'package:flutter/material.dart';
import 'UserDataInfo.dart';
import 'SettingPage.dart';
import 'AuthCheck.dart';
import 'package:http/http.dart' as http;
import 'Gifts.dart';


class GiftAdminAdd extends StatefulWidget {
  AuthCheckState parent;
  GiftAdminAdd(this.parent);

  @override
  GiftAdminAddState createState() => new GiftAdminAddState();
}

class GiftAdminAddState extends State<GiftAdminAdd> {
  final GiftAdminSendformKey = new GlobalKey<FormState>();
  TextEditingController GiftTitleCtrl  = new TextEditingController();
  TextEditingController GiftDescrCtrl  = new TextEditingController();
  TextEditingController GiftTypeCtrl   = new TextEditingController();
  TextEditingController GiftToCtrl     = new TextEditingController();
  TextEditingController GiftTokensCtrl = new TextEditingController();
  TextEditingController GiftXPCtrl     = new TextEditingController();
  TextEditingController GiftDateCtrl   = new TextEditingController();
  bool Loading=false;
  String Res="";


  Future<void> AddNotification() async {
    String uploadEndPoint = '../AddNotification.php';
     await http.post(uploadEndPoint, body: {
        "Notif_Date"        : GiftDateCtrl.text        ,
        "Notif_Title"       : GiftTitleCtrl.text       ,
        "Notif_Description" : GiftDescrCtrl.text       ,
        "Notif_Type"        : "Local"                  ,
        "Notif_RedirectTo"  : "Gift"                   ,
        "Notif_Image"       : "NoImage"                ,
     });    
  }


  validate() async {
    if (GiftAdminSendformKey.currentState.validate()) {
      GiftAdminSendformKey.currentState.save();
      setState(() {
        Loading=true;
        Res="Sending Gift...";
      });
      await SendGift();
      setState(() {
        Res="Sending Notification...";
      });
      await AddNotification();
      setState(() {
        Res="";
        Loading=false;
      });
      this.widget.parent.setState(() {
        ActivePage=Gifts(this.widget.parent);
      });
    }  
  }

  @override
  void initState(){
    super.initState();
  }

  Future<void> SendGift() async {
    String uploadEndPoint = '../SendGift.php';
     await http.post(uploadEndPoint, body: {
        "GiftTitle"       : GiftTitleCtrl.text   ,
        "GiftDescription" : GiftDescrCtrl.text   ,
        "GiftType"        : GiftTypeCtrl.text    ,
        "GiftTo"          : GiftToCtrl.text      ,
        "GiftTokens"      : GiftTokensCtrl.text  ,
        "GiftXP"          : GiftXPCtrl.text      ,
        "GiftDate"        : GiftDateCtrl.text    ,
       });
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
          title:Text("Gift Admin Add"),
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
              key:GiftAdminSendformKey,
              child:Column(
               crossAxisAlignment:CrossAxisAlignment.start,
               children: <Widget>[

                Text("Gift Title:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:GiftTitleCtrl,
                  decoration:InputDecoration(hintText:"Please Input Title"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input Title' : null,
                ),
                SizedBox(height:7,),

                Text("Gift Description:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:GiftDescrCtrl,
                  decoration:InputDecoration(hintText:"Please Input Description"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input Description' : null,
                ),
                SizedBox(height:7,),

                Text("Gift Type:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:GiftTypeCtrl,
                  decoration:InputDecoration(hintText:"Please Input Type"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input Type' : null,
                ),
                SizedBox(height:7,),

                Text("Gift To:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:GiftToCtrl,
                  decoration:InputDecoration(hintText:"Please Input GiftTo"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input GiftTo' : null,
                ),
                SizedBox(height:7,),

                Text("Gift Tokens:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:GiftTokensCtrl,
                  decoration:InputDecoration(hintText:"Please Input Gift Tokens"),
                  keyboardType: TextInputType.number,
                  validator: (val) => val.length == 0 ? 'Please Input Gift Tokens' : null,
                ),
                SizedBox(height:7,),

                Text("Gift XP:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:GiftXPCtrl,
                  decoration:InputDecoration(hintText:"Please Input Gift XP"),
                  keyboardType: TextInputType.number,
                  validator: (val) => val.length == 0 ? 'Please Input Gift XP' : null,
                ),
                SizedBox(height:7,),

                Text("Gift Date:",style:TextStyle(fontSize:15,fontFamily:"RaleWay"),),
                TextFormField(
                  controller:GiftDateCtrl,
                  decoration:InputDecoration(hintText:"Please Input Gift Date"),
                  keyboardType: TextInputType.text,
                  validator: (val) => val.length == 0 ? 'Please Input Gift Date' : null,
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
              Text(Res),
            ],
          ),
        ),
    );
  }


}
