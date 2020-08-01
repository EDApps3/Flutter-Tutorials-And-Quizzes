import 'package:flutter/material.dart';
import 'SettingPage.dart';
import 'AuthCheck.dart';
import 'Gifts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';



class GiftAdminDeletePage extends StatefulWidget {
  AuthCheckState parent;
  GiftAdminDeletePage(this.parent);

  @override
  GiftAdminDeletePageState createState() => new GiftAdminDeletePageState();
}

class GiftAdminDeletePageState extends State<GiftAdminDeletePage> {
  Future<List<GiftData>> GiftFList;
  bool NotifFound=false;
  String NotifResult="";
  bool Deleting=false;


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

    if(GiftDataArr.length>0){
      setState(() {
        NotifResult="Gifts!";
      });
    }
    else{
      setState(() {
        NotifResult="No Gifts Found!";
      });
    }
    return GiftDataArr;
  }





  Future<void> DeleteGift(GiftData gift) async {
    setState(() {
      Deleting=true;
    });
    String uploadEndPoint = 'https://httpfluttertest.000webhostapp.com/Flutter_FTQ/DeleteGift.php';
     await http.post(uploadEndPoint, body: {
        "GiftID": gift.GiftID,
     });
     GiftDataLst.remove(gift);
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
      GiftFList=getGiftData();
    });
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
                child:Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment:CrossAxisAlignment.start,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          (Deleting==false)?IconButton(
                          icon:Icon(Icons.delete),
                          onPressed:()  {
                            DeleteGift(GiftLst[i]);
                          }
                        ):CircularProgressIndicator(),
                        
                          Image.asset("Images/Gift.gif",width:35,height:35),
                        Text(
                        GiftLst[i].GiftTitle.toString(),
                        style:TextStyle(
                          fontFamily:"RaleWay",
                          color:Colors.red,
                        ),
                      ),
                      
                     
                      

                        ],
                      ),
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
            icon:Image.asset("Images/Gift.gif"),
          ),
          title:Text("Gift Admin Delete"),
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
                        Text("Fetching Gifts..."),
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