import 'package:flutter/material.dart';
import 'SettingPage.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'UserDataInfo.dart';


List MyPurchaseLst=new List();

class MyPurchaseData {
  String PurchaseID;
  String UID;
  String AvatarName;
  String Package;
  String PurchaseDate;

  MyPurchaseData(
    this.PurchaseID,
    this.UID,
    this.AvatarName,
    this.Package,
    this.PurchaseDate,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'PurchaseID'        : PurchaseID,
      'UID'               : UID,
      'AvatarName'        : AvatarName,
      'Package'           : Package,
      'PurchaseDate'      : PurchaseDate,
    };
    return map;
  }

  MyPurchaseData.fromMap(Map<String, dynamic> map) {
    PurchaseID          = map['PurchaseID'];
    UID                 = map['UID'];
    AvatarName          = map['AvatarName'];
    Package             = map['Package'];
    PurchaseDate        = map['PurchaseDate'];
  }
}



class MyPurchasePage extends StatefulWidget {
  @override
  NotificationPageState createState() => new NotificationPageState();
}

class NotificationPageState extends State<MyPurchasePage> {
  Future<List<MyPurchaseData>> MyPurchaseFList;
  bool PurchaseFound=false;
  String PurchaseResult="";


  Future<List<MyPurchaseData>> getPurchaseData() async {
    var url = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/GetPurchase.php?UID='+UID;
    http.Response response = await http.get(url);

    var maps = jsonDecode(response.body);
    print(response.body);
    List<MyPurchaseData> PurchaseDataArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        PurchaseDataArr.add(MyPurchaseData.fromMap(maps[i]));
      }
    }

    if(PurchaseDataArr.length>0){
      setState(() {
        PurchaseResult="Purchases!";
      });
    }
    else{
      setState(() {
        PurchaseResult="No Purchase Found!";
      });
    }
    return PurchaseDataArr;
  }

  @override
  void initState(){
    super.initState();
    refreshList();
  }

  refreshList() {
    setState(() {
      MyPurchaseFList=getPurchaseData();
    });
  }



  SingleChildScrollView PurchaseDataCards(List<MyPurchaseData> PurchaseLst) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:Column(
        children: <Widget>[
          for(var i=0;i<PurchaseLst.length;i++)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color:Colors.grey[200],
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    ListTile(
                      leading:Image.asset("Images/coin.gif",width:35,height:35,),
                      title:Text(
                        "Package:"+PurchaseLst[i].Package.toString(),
                        style: TextStyle(color: Colors.blueGrey,fontFamily: "Lobster",fontSize: 14,),
                      ),
                    ),
                    Divider(color:Colors.blue,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Purchase ID:\n"+PurchaseLst[i].PurchaseID.toString(),
                          style: TextStyle(color: Colors.blueGrey,fontFamily: "Lobster",fontSize: 13, ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "Purchase Date:\n"+PurchaseLst[i].PurchaseDate.toString(),
                          style: TextStyle(color: Colors.blueGrey,fontFamily: "Lobster",fontSize: 13, ),
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
        title:
        Row(
         children:<Widget>[
          Text("My Purchases"),
          IconButton(
            onPressed:(){},
            icon:Icon(Icons.monetization_on),
          ),
         ],
        ),
      ),
      body:ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:15,right:15,top:8,bottom:3),
              child:(PurchaseResult!="")?
              ClipRRect(
                            borderRadius:BorderRadius.circular(30.0),
                            child:
                            SizedBox(width:MediaQuery.of(context).size.width,
                              child:Card(
                                color:(ThemeResult=="Light")?Colors.teal:ThemeBg,
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    PurchaseResult,
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
              future:MyPurchaseFList,
              builder:(context,snapshot){
                if(snapshot.hasData){
                  PurchaseFound=true;
                  return PurchaseDataCards(snapshot.data);
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
                        Text("Fetching Purchases..."),
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