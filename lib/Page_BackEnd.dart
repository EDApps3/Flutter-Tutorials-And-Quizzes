
import 'dart:collection';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/1000_Rating.dart';
import 'AppSoundPlay.dart';
import 'SQLite/Show_Bookmarks_Contents.dart';
import 'SettingPage.dart';
import '_Comp_Courses/Cmp_Cust_ExpTile.dart';
import '_GlobalVariables_BackEnd.dart';
import 'AppLang.dart';


List ContentBookMarkedListBackEnd=new List();
bool GettingBookmarkBackEndContent=false;
var ShowBookmarks_BackEnd;
HashMap AllContentsBackendHashMap=HashMap<String,Object>();
List AllContentsBackendList      =new List();

var Show_SQFLite                     ;
var Show_HTTP_PHP                    ;
var Show_FireBase                    ;
var Show_FireStore                   ;
var Show_FireBaseAdmob               ;
var Show_FireBasePushNotification    ;
var Show_Phone_Verification          ;
var Show_HTTP_PHP_Auth               ;
var Show_HTTP_PHP_CRUDImg            ;



var Cmp_SQFLite ;
var Cmp_HTTP_PHP ;
var Cmp_FireBase ;
var Cmp_FireStore ;
var Cmp_FireBaseAdmob ;
var Cmp_FireBasePushNotification ;
var Cmp_Phone_Verification;
var Cmp_HTTP_PHP_Auth;
var Cmp_HTTP_PHP_CRUDImg;



void FetchContentBackEndHashMap(String S){
  print("ddd");
  AllContentsBackendList=new List();
  if(S==""){
    AddAllBackEndList();
  }
  else{
    AllContentsBackendHashMap.forEach((key, value) {
    if(key.toString().toLowerCase().contains(S.toLowerCase())){
      AllContentsBackendList.add(value);
    }
   });
  }
}




void AddAllBackEndList(){
  AllContentsBackendList.add(Cmp_SQFLite);
  AllContentsBackendHashMap.putIfAbsent("SQFLite"       , () => Cmp_SQFLite);

  AllContentsBackendList.add(Cmp_HTTP_PHP);
  AllContentsBackendHashMap.putIfAbsent("HTTP_PHP"       , () => Cmp_HTTP_PHP);

  AllContentsBackendList.add(Cmp_FireBase);
  AllContentsBackendHashMap.putIfAbsent("FireBase"       , () => Cmp_FireBase);

  AllContentsBackendList.add(Cmp_FireStore);
  AllContentsBackendHashMap.putIfAbsent("FireStore"       , () => Cmp_FireStore);

  AllContentsBackendList.add(Cmp_FireBaseAdmob);
  AllContentsBackendHashMap.putIfAbsent("FireBaseAdmob"       , () => Cmp_FireBaseAdmob);

  AllContentsBackendList.add(Cmp_FireBasePushNotification);
  AllContentsBackendHashMap.putIfAbsent("FireBasePushNotification"       , () => Cmp_FireBasePushNotification);

  AllContentsBackendList.add(Cmp_Phone_Verification);
  AllContentsBackendHashMap.putIfAbsent("Phone_Verification"       , () => Cmp_Phone_Verification);

  AllContentsBackendList.add(Cmp_HTTP_PHP_Auth);
  AllContentsBackendHashMap.putIfAbsent("HTTP_PHP_Auth"       , () => Cmp_HTTP_PHP_Auth);

  AllContentsBackendList.add(Cmp_HTTP_PHP_CRUDImg);
  AllContentsBackendHashMap.putIfAbsent("Cmp_HTTP_PHP_CRUDImg"       , () => Cmp_HTTP_PHP_CRUDImg);
}



class BackEndPage extends StatefulWidget {
  @override
  BackEndPageState createState() => new BackEndPageState();
}

class BackEndPageState extends State<BackEndPage>  {
  var BookmarkBackendValue=false;
  TextEditingController SearchBackTFCtrl= new TextEditingController();

  Future<void> _onBkChanged(bool value)  async {
    setState (()   {
      GettingBookmarkBackEndContent=true;
      BookmarkBackendValue = value;
      var dbApp = DBApp();
      App AS;

      if(SoundResult=="NotMuted") {
        PlayTapSound();
      }

      if(BookmarkBackendValue==false){
        AS=new App(5,"ShowBookmarkBackEnd","ShowBookmark");
      }
      else{
        AS=new App(5,"ShowBookmarkBackEnd","DontShowBookmark");
      }
      dbApp.update(AS);
      dbApp.getShowBookmarkBackEnd();
    });
    setState(() {
      GettingBookmarkBackEndContent=true;
    });
    await new DBBkContApp().getContentBookmarkBackend();
    setState(() {
      GettingBookmarkBackEndContent=false;
    });
  }



  @override
  void initState(){
    AllContentsBackendList=new List();
    initPlayer();

    setState(() {
      if(BookmarkBackendValue=="DontShowBookmark"){
        BookmarkBackendValue=false;
      }
      else {
        BookmarkBackendValue = true;
      }


       Cmp_SQFLite = CmpCustExpTile(
      ExpIcon:Icon(Icons.data_usage,color:Colors.white),
      ExpTitle:"1.SQLFlite",
      ExpBg:CardBg,
      ExInsideBg:CardBg.withOpacity(0.5),
      BordRadius:20.0,
      InQuizzRoute:"/Generate_SQLFlite_Quizz",
      CardLength:SQLFliteList.length,
      CardsList:SQLFliteList,
      isBookmarked:Show_SQFLite,
      ID:1,
      Type:"BackEnd",
    );

 Cmp_HTTP_PHP = CmpCustExpTile(
  ExpIcon:Icon(Icons.data_usage,color:Colors.white),
  ExpTitle:"2.HTTP+PHP(CRUD|NoImg)",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_HTTP_PHP_Quizz",
  CardLength:HTTP_PHP_List.length,
  CardsList:HTTP_PHP_List,
  isBookmarked:Show_HTTP_PHP,
  ID:2,
  Type:"BackEnd",
);

 Cmp_FireBase = CmpCustExpTile(
  ExpIcon:Icon(Icons.data_usage,color:Colors.white),
  ExpTitle:"3.FireBase",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FireBase_Quizz",
  CardLength:Firebase_List.length,
  CardsList:Firebase_List,
  isBookmarked:Show_FireBase,
  ID:3,
  Type:"BackEnd",
);

 Cmp_FireStore = CmpCustExpTile(
  ExpIcon:Icon(Icons.data_usage,color:Colors.white),
  ExpTitle:"4.FireStore",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FireStore_Quizz",
  CardLength:FireStore_List.length,
  CardsList:FireStore_List,
  isBookmarked:Show_FireStore,
  ID:4,
  Type:"BackEnd",
);

 Cmp_FireBaseAdmob = CmpCustExpTile(
  ExpIcon:Icon(Icons.data_usage,color:Colors.white),
  ExpTitle:"5.FireBase Admob",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FireBaseAdmob_Quizz",
  CardLength:FireBaseAdmob_List.length,
  CardsList:FireBaseAdmob_List,
  isBookmarked:Show_FireBaseAdmob,
  ID:5,
  Type:"BackEnd",
);

 Cmp_FireBasePushNotification = CmpCustExpTile(
  ExpIcon:Icon(Icons.data_usage,color:Colors.white),
  ExpTitle:"6.FireBase Push Notification",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_FireBasePushNotification_Quizz",
  CardLength:FireBasePushNotification_List.length,
  CardsList:FireBasePushNotification_List,
  isBookmarked:Show_FireBasePushNotification,
  ID:6,
  Type:"BackEnd",
);


 Cmp_Phone_Verification = CmpCustExpTile(
  ExpIcon:Icon(Icons.data_usage,color:Colors.white),
  ExpTitle:"7.Phone Verification",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_PhoneVerification_Quizz",
  CardLength:PhoneVerification_List.length,
  CardsList:PhoneVerification_List,
  isBookmarked:Show_Phone_Verification,
  ID:7,
  Type:"BackEnd",
);


 Cmp_HTTP_PHP_Auth = CmpCustExpTile(
  ExpIcon:Icon(Icons.data_usage,color:Colors.white),
  ExpTitle:"8.HTTP+PHP(Auth)",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_HTTP_PHP_Auth_Quizz",
  CardLength:HTTP_PHP_Auth_List.length,
  CardsList:HTTP_PHP_Auth_List,
  isBookmarked:Show_HTTP_PHP_Auth,
  ID:8,
  Type:"BackEnd",
);


Cmp_HTTP_PHP_CRUDImg = CmpCustExpTile(
  ExpIcon:Icon(Icons.data_usage,color:Colors.white),
  ExpTitle:"9.HTTP+PHP(CRUD|Img)",
  ExpBg:CardBg,
  ExInsideBg:CardBg.withOpacity(0.5),
  BordRadius:20.0,
  InQuizzRoute:"/Generate_HTTP_PHP_CRUDImg_Quizz",
  CardLength:HTTP_PHP_CRUDImg_List.length,
  CardsList:HTTP_PHP_CRUDImg_List,
  isBookmarked:Show_HTTP_PHP_CRUDImg,
  ID:9,
  Type:"BackEnd",
);



    AddAllBackEndList();



    });
  }


  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
            children:<Widget>[


              Card(
                color:Colors.grey[200],
                child:(GettingBookmarkBackEndContent==false)?
                Row(
                  children: <Widget>[
                    Container(
                      width:MediaQuery.of(context).size.width*0.20,
                      child:Icon(Icons.favorite,color:Colors.red),
                    ),
                    Text(OnTxtTrans),
                    Container(
                      width:MediaQuery.of(context).size.width*0.26,
                      child:Switch(
                        activeColor:Colors.white,
                        inactiveThumbColor:Colors.white,
                        value: BookmarkBackendValue,
                        onChanged: _onBkChanged,
                      ),
                    ),
                    Text(OffTxtTrans),
                    Container(
                      width:MediaQuery.of(context).size.width*0.20,
                      child:Icon(Icons.favorite_border,color:Colors.red),
                    ),
                  ],
                ):Center(
                  child:Padding(
                    padding: const EdgeInsets.all(14.0),
                    child: Row(
                      children: <Widget>[
                        CircularProgressIndicator(
                          backgroundColor:
                          Colors.blueAccent,
                          valueColor:
                          AlwaysStoppedAnimation<Color>(Colors.indigo),
                        ),
                        SizedBox(width:10,),
                        Text(
                          "Updating Data...",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: CardBg,
                            fontFamily: "Lobster",
                            fontSize: 18,
                          ),
                        ),

                      ],
                    ),
                  ),
                ),
              ),

              Card(
               color:Colors.grey[200],
               child:Padding(
                 padding: const EdgeInsets.all(8.0),
                 child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:<Widget>[
                      Container(
                        width:210,
                        child:TextField(
                         controller:SearchBackTFCtrl,
                         decoration:InputDecoration(
                           hintText:SearchContentsTxtTrans
                         )
                        ),
                      ),
                        RaisedButton(
                          child:Text(SearchTxtTrans),
                          onPressed:(){
                            setState(() {
                              FetchContentBackEndHashMap(SearchBackTFCtrl.text);
                            });
                          }
                        )
                      
                    ]
                  ),
               ),
              ),


              (ShowBookmarks_BackEnd=="DontShowBookmark")?
              Column(
                children: <Widget>[
                  ClipRRect(
                    borderRadius:BorderRadius.circular(30.0),
                    child:
                    SizedBox(width:MediaQuery.of(context).size.width,
                      child:Card(
                        color:Colors.green[200],
                        child:Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            (SearchBackTFCtrl.text=="")?AllContentsShownTxtTrans:SearchShownTxtTrans,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: "Lobster",
                              fontSize: 18,
                            ),
                          ),
                        ),
                      ),
                    ),),
                    for(var item in AllContentsBackendList)
                      Container(child:item),
                ],
              ) :SizedBox(),



              (ShowBookmarks_BackEnd=="ShowBookmark" && ContentBookMarkedListBackEnd.length!=0 )?
              Column(
                children: <Widget>[
                  SizedBox(),
                  for(var item in ContentBookMarkedListBackEnd)
                    Container(child:item),
                ],
              ):(ShowBookmarks_BackEnd=="ShowBookmark" && ContentBookMarkedListBackEnd.length==0 )?  ClipRRect(
                borderRadius:BorderRadius.circular(30.0),
                child:SizedBox(width:MediaQuery.of(context).size.width,
                  child:
                  Card(
                    color:Colors.red[200],
                    child:Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "No Bookmark Found!",
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





              SizedBox(height: 10,),
              RatingUI(),




            ],
          
        ),
    );
  }


}



