import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '0_Quizzes/0_GenerateRandomQuizzes.dart';
import 'AppSoundPlay.dart';
import 'Codes_FrontEnd/55_DataTable/9_DataTable_CustomPagination.dart';
import 'SettingPage.dart';
import 'UserDataInfo.dart';
import 'main.dart';
import 'LeaderBoardPrizes.dart';
import 'LeaderBoard_ShowResultBy.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';


List<UserData> UserDataLst;
TextEditingController LeaderBoardGiftTitleCtrl  = new TextEditingController();
TextEditingController LeaderBoardGiftDescrCtrl  = new TextEditingController();
TextEditingController LeaderBoardGiftAmountCtrl = new TextEditingController();
TextEditingController LeaderBoardGiftDateCtrl   = new TextEditingController();



Future<void> SendGift(String GiftTo) async {
    String uploadEndPoint = '...SendGift.php';
     await http.post(uploadEndPoint, body: {
        "GiftTitle"       : LeaderBoardGiftTitleCtrl.text   ,
        "GiftDescription" : LeaderBoardGiftDescrCtrl.text   ,
        "GiftType"        : "Private"                       ,
        "GiftTo"          : GiftTo                          ,
        "GiftTokens"      : LeaderBoardGiftAmountCtrl.text  ,
        "GiftXP"          : "20"                            ,
        "GiftDate"        : LeaderBoardGiftDateCtrl.text    ,
       });
  }



class UserDataTableSource extends DataTableSource {
  UserDataTableSource({
    @required List<UserData> userData,
  })  : _userData = userData,
        assert(userData != null);

  final List<UserData> _userData;

  @override
  DataRow getRow(int index) {
    assert(index >= 0);

    if (index >= _userData.length) {
      return null;
    }
    final _user = _userData[index];

    return DataRow.byIndex(
      index: index,
      cells: <DataCell>[

        DataCell(
          ( _user.Rank+1==1 || _user.Rank+1==2 || _user.Rank+1==3 )?
            Container(
              height:46, 
              color:(_user.UID==UID)?Colors.yellowAccent.withOpacity(0.5):Colors.grey,
              child:Row(
               children: <Widget>[
                SizedBox(width:10,),
                Image.asset("Images/trophy.png",width:20,height:20,),
                Text((_user.Rank+1).toString())
              ],
             )
            )
          :Container(
              height:50, 
              color:(_user.UID==UID)?Colors.yellowAccent.withOpacity(0.5):Colors.grey, 
              child:Row(
               children: <Widget>[
                Text("         "+_user.Rank.toString()) 
              ],
             )
            )
        ),

         DataCell(
           Container(
             width:70,
             child:Row(
               children: <Widget>[

                            Container( 
              width:46, 
              height:46,
              color:(_user.UID==UID)?Colors.yellowAccent.withOpacity(0.5):Colors.grey,
              child:
                  ClipOval(
            child:(_user.AvatarImage=="Images/LandingPage/Avatar.gif")?
              Image.asset(_user.AvatarImage):
                    Image.network(
                      _user.AvatarImage,
                      width:40, 
                      height:40,
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
          Container( 
            height:46,
            width:24,
            color:(_user.UID==UID)?Colors.yellowAccent.withOpacity(0.5):Colors.grey,
          )
                
               ],
              ),
           )

         ),
         
         

        DataCell(
          Container( 
              width:200,
              height:46,
              color:(_user.UID==UID)?Colors.yellowAccent.withOpacity(0.5):Colors.grey,
              child:Row(
                children: <Widget>[
                Text('${_user.UserName}')
                ],
              ),
          ), 
        ),

        DataCell(
          Container( 
              width:150,
              height:46,
              color:(_user.UID==UID)?Colors.yellowAccent.withOpacity(0.5):Colors.grey,
              child:Row(
                children: <Widget>[
                Text('${_user.Xp}')
                ],
              ),
          ), 
        ),


        DataCell(
          Container( 
              width:200,
              height:46,
              color:(_user.UID==UID)?Colors.yellowAccent.withOpacity(0.5):Colors.grey,
              child:Row(
                children: <Widget>[
                Text('${_user.UID}')
                ],
              ),
          ), 
        ),


        (UID=="W7c6gejcz5eI5MEqMuWn")?
          DataCell(
            RaisedButton(
              child:Text("Send Gift"),
              onPressed:(){
                AlertDialog AD=new AlertDialog(
                  content:Container(
                    height:390, 
                    child:Column(
                      mainAxisAlignment :MainAxisAlignment.center,
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[


                        Text("Gift Title"),
                        TextField(
                         controller:LeaderBoardGiftTitleCtrl,
                         decoration:InputDecoration(
                          hintText:"Please Input Title"
                         ),
                        ),
                        SizedBox(height:5,),
                        Text("Gift Description"),
                        TextField(
                         controller:LeaderBoardGiftDescrCtrl,
                         decoration:InputDecoration(
                          hintText:"Please Input Description"
                         ),
                        ),
                        SizedBox(height:5,),
                        Text("Gift Amount"),
                        TextField(
                         controller:LeaderBoardGiftAmountCtrl,
                         decoration:InputDecoration(
                          hintText:"Please Input Tokens Amount"
                         ),
                        ),
                        SizedBox(height:5,),
                        Text("Gift Date"),
                        TextField(
                         controller:LeaderBoardGiftDateCtrl,
                         decoration:InputDecoration(
                          hintText:"Please Input Gift Date"
                         ),
                        ),


                        SizedBox(
                         width:double.infinity,
                         child:RaisedButton(
                          color:Colors.green,
                          child:Text("Send",style:TextStyle(color:Colors.white),),
                          onPressed:() async {
                            if(LeaderBoardGiftDescrCtrl.text!="" && LeaderBoardGiftAmountCtrl.text !=""  && LeaderBoardGiftTitleCtrl.text !=""  && LeaderBoardGiftDateCtrl.text !="" ){
                              await SendGift(_user.UID);
                              Get.back();
                            }
                          },
                         ),
                        ),

                        SizedBox(
                         width:double.infinity,
                         child:RaisedButton(
                          color:Colors.red,
                          child:Text("Close",style:TextStyle(color:Colors.white),),
                          onPressed:(){
                            Get.back();
                          },
                         ),
                        ),

                        

                      ],
                    ),
                  ),
                );
                Get.dialog(
                  AD,
                  barrierDismissible:false,
                );
                
                

              },
            )
          ):DataCell(Container()),

      ],
    );
  }

  @override
  bool get isRowCountApproximate => false;

  @override
  int get rowCount => _userData.length;

  @override
  int get selectedRowCount => 0;


  void sort<T>(Comparable<T> Function(UserData d) getField, bool ascending) {
    _userData.sort((a, b) {
      final aValue = getField(a);
      final bValue = getField(b);
      return ascending
          ? Comparable.compare(aValue, bValue)
          : Comparable.compare(bValue, aValue);
    });

    notifyListeners();
  }
}



class LeaderBoard extends StatefulWidget {
  @override
  LeaderBoardState createState() => LeaderBoardState();
}

class LeaderBoardState extends State<LeaderBoard> {
  bool UserDataLeaderBoardListLoaded=false;
  int ColIndex=0;
  bool sort=true;
  double MyIndex=0;
  bool FoundMyIndex=false;
  ScrollController SCLeaderBoard=new ScrollController(initialScrollOffset:5.0);
  Future<List<UserData>> FutureUserDataLst;



  



  




  SingleChildScrollView UserDataTable(List<UserData> UserLst) {
    return SingleChildScrollView(
        child:CustomPaginatedDataTable(
              
              rowsPerPage:int.parse(selectedShowLeaderBoard),
              columns: [
                DataColumn(
                  label:Container(
                      width:90,
                      height:59,   
                      color:Colors.blueGrey,
                      child:Row(
                      children: <Widget>[
                         Image.asset("Images/trophy.png",width:20,height:20,), 
                         Text("Rank")
                      ],
                    ),
                    ),
                ),
                

                DataColumn(
                  label:Container(
                      width:70,
                      height:59,   
                      color:Colors.blueGrey,
                      child:Row( 
                    children: <Widget>[
                       Image.asset("Images/LandingPage/Avatar.gif",width:20,height:20,), 
                       Text("Avatar")
                    ],
                  ),
                  ), 
                ),

                DataColumn(
                  label:Container(
                      width:200,
                      height:59,   
                      color:Colors.blueGrey,
                      child:Row( 
                    children: <Widget>[
                      Icon(Icons.format_align_center,size:15,),
                      Text("Avatar Name")
                    ],
                  ),
                ),
                ),

                DataColumn(
                  label:Container(
                      width:150, 
                      height:59,   
                      color:Colors.blueGrey,
                      child:Row( 
                    children: <Widget>[
                       Image.asset("Images/Star.gif",width:16,height:16,),  
                       Text("XP")
                    ],
                  ),
                ),
                ),
                  
                DataColumn(
                  label:Container(
                      width:200,
                      height:59,   
                      color:Colors.blueGrey,
                      child:Row( 
                    children: <Widget>[
                      Icon(Icons.format_align_center,size:15,),
                      Text("UID")
                    ],
                  ),
                ),),

                (UID=="W7c6gejcz5eI5MEqMuWn")?DataColumn(
                  label:Container(
                      width:150,
                      height:59,   
                      color:Colors.blueGrey,
                      child:Row( 
                    children: <Widget>[
                      Image.asset("Images/Gift.gif",width:25,height:25,),
                      Text("Gift"),  
                    ], 
                  ),
                 ),
                ):DataColumn(label:Container()),

              ],
              source:UserDataTableSource(userData:UserDataLst)
            ),
       );
  }



  onSortColum(int columnIndex, bool ascending) async {
      if (ascending) {
        UserDataLst.sort((a, b) => (a.Xp.toInt()).compareTo(b.Xp.toInt()));
      } else {
        UserDataLst.sort((a, b) => (b.Xp.toInt()).compareTo(a.Xp.toInt()));
      } 
      for(int i=0;i<UserDataLst.length;i++) {
        UserDataLst[i].Rank=i;
      }
  }

  Future<List<UserData>> getUserDataList() async {
    
    QuerySnapshot qShot = await Firestore.instance.collection('UserData').getDocuments();
    List<UserData> ShowByUserDataLst=new List();

    UserDataLst=qShot.documents.map(
      (doc) => UserData(
            doc.data['UID'],
            int.parse(doc.data['Tokens']),
            int.parse(doc.data['Xp']),
            doc.data['UserName'],
            doc.data['AvatarImg'],
            doc.data['UID'],
            doc.data['PID'],
            0,
      )
    ).toList();

if(sort==false){
                       onSortColum(2,true);
                    }
                    else{
                       onSortColum(2,false);
                    }


          if(selectedShowLeaderBoard==50){
            for(int i=0;i<50;i++){
              ShowByUserDataLst.add(UserDataLst[i]);
            }
          }
          else if(selectedShowLeaderBoard==100){
            for(int i=0;i<100;i++){
              ShowByUserDataLst.add(UserDataLst[i]);
            }
          }
          else if(selectedShowLeaderBoard==10){
            for(int i=0;i<10;i++){
              ShowByUserDataLst.add(UserDataLst[i]);
            }
          }
          else{
             for(int i=0;i<200;i++){
              ShowByUserDataLst.add(UserDataLst[i]);
            }          
          }

    return ShowByUserDataLst;
  }


  @override
  void initState()  {
    //ShowMyAds();
    super.initState();
    SCLeaderBoard=new ScrollController();
    refreshList();
  }


  refreshList() {
    setState(() {
      FutureUserDataLst=getUserDataList();
    });
  }


  @override
  void dispose(){
    SCLeaderBoard.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {


    return Scaffold(
            backgroundColor:ThemeBg,
        appBar: AppBar(
                  backgroundColor:ThemeAppBar,
          leading:IconButton(
               onPressed:(){},
               icon:Image.asset("Images/trophy.png",width:35,height:35),
              ),
          title: Text('LeaderBoard'),
          actions: <Widget>[
            FlatButton.icon(
              onPressed:(){
                PlayTapSound();
                RandQuizz=true;
                Navigator.push(context,MaterialPageRoute(builder:(context)=>cl_RandomQuizz()));
              },
            icon:Image.asset("Images/Quizz.png",width:25,height:25,),
            label:Text("Run Quizzes",style:TextStyle(color:Colors.white,))
          )
          ],
        ),
        body:ListView(
          controller:SCLeaderBoard,
          children: <Widget>[
            LeaderBoardPrizes(),
            LeaderBoardShowResultBy(this),
            
           
       
            
          FutureBuilder(
          future:FutureUserDataLst,
          builder:(context,snapshot){
            if(snapshot.hasData){
              return UserDataTable(snapshot.data);
            }
            else{
              return Container(
                width:MediaQuery.of(context).size.width,
                height:MediaQuery.of(context).size.height,
                child:Row(
                mainAxisAlignment:MainAxisAlignment.center,
                crossAxisAlignment:CrossAxisAlignment.center,
                children: <Widget>[
                  CircularProgressIndicator(),
                  SizedBox(width:10,),
                  Text(
                    "Fetching Data...",
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
        ),      
        floatingActionButton:Column(
        mainAxisAlignment:MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width: 37,
            height:37,
            child:FloatingActionButton(
              heroTag:"LD_Up",
              backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_up),
              onPressed:(){
                SCLeaderBoard.animateTo(
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
              heroTag:"LD_Pos",
              backgroundColor:Colors.yellow.withOpacity(0.5),
              child:Icon(Icons.person),
              onPressed:(){
               for(int i=0;i<UserDataLst.length;i++){
                if(UserDataLst[i].UID==UID){
                  Toast.show("Your Position Is: "+i.toString(),context);
                  break;
                }
               } 
              },
            ),
          ),
          SizedBox(height:6,),
          Container(
            width:37,
            height:37,
            child:FloatingActionButton(
              heroTag:"LD_Down",
              backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_down),
              onPressed:(){
                SCLeaderBoard.animateTo(
                  SCLeaderBoard.position.maxScrollExtent,
                  duration:Duration(milliseconds:500),
                  curve:Curves.fastOutSlowIn,
                );
              },
            ),
          ),
          SizedBox(height:50,),  
        ],
      ),
    
    );
  }
}



