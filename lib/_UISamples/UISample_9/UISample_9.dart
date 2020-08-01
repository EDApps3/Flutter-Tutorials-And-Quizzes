import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:toast/toast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'dart:io';


bool AuthLoading=false;
var facebookLogin = FacebookLogin();
var googleuser,googleAuth;
final GoogleSignIn googleSignIn = GoogleSignIn();
String SampleUID,SampleUserName,SampleAvatarImg,SamplePID;
int SampleDollar;


List SampleGiftDataLst =new List();
List SampleGiftClaimLst=new List();
List SampleUserDataLst=new List();

bool IsSampleUserConnected=false;

  Future<void> SampleGiftUpdateDataFireStore() async {
  await Firestore.instance.collection('SampleUserData').document(SampleUID).updateData({
    "SampleUID"         : "$SampleUID",
    "SampleUserName"    : "$SampleUserName",
    "SampleDollar"      : "$SampleDollar",
    "SampleAvatarImg"   : "$SampleAvatarImg",
    "SamplePID"         : "$SamplePID",
  });
}

Future<bool> CheckSampleUserConnected() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      IsSampleUserConnected=true;
      print('User Connected To The Internet');
    }
  } on SocketException catch (_) {
    IsSampleUserConnected=false;
    print('User Not Connected To The Internet');
  }
}


class SampleUserData {
  String SampleUID;
  String SampleUserName;
  int SampleDollar;
  String SampleAvatarImg;
  String SamplePID;

  SampleUserData(
      this.SampleUID,
      this.SampleUserName,
      this.SampleDollar,
      this.SampleAvatarImg,
      this.SamplePID,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'SampleUID'        : SampleUID,
      'SampleUserName'   : SampleUserName,
      'SampleDollar'     : SampleDollar,
      'SampleAvatarImg'  : SampleAvatarImg,
      'SamplePID'        : SamplePID,
    };
    return map;
  }

  SampleUserData.fromMap(Map<String, dynamic> map) {
    SampleUID           = map['SampleUID'];
    SampleUserName      = map['SampleUserName'];
    SampleDollar        = map['SampleDollar'];
    SampleAvatarImg     = map['SampleAvatarImg'];
    SamplePID           = map['SamplePID'];
  }

}




class SampleGiftData {
  String SampleGiftID;
  String SampleGiftDescription;
  int    SampleGiftDollar;
  String SampleGiftTo;
  String SampleGiftType;

  SampleGiftData(
      this.SampleGiftID,
      this.SampleGiftDescription,
      this.SampleGiftDollar,
      this.SampleGiftTo,
      this.SampleGiftType,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'SampleGiftID'            : SampleGiftID,
      'SampleGiftDescription'   : SampleGiftDescription,
      'SampleGiftDollar'        : SampleGiftDollar,
      'SampleGiftTo'            : SampleGiftTo,
      'SampleGiftType'          : SampleGiftType,
    };
    return map;
  }

  SampleGiftData.fromMap(Map<String, dynamic> map) {
    SampleGiftID           = map['SampleGiftID'];
    SampleGiftDescription  = map['SampleGiftDescription'];
    SampleGiftDollar       = map['SampleGiftDollar'];
    SampleGiftTo           = map['SampleGiftTo'];
    SampleGiftType         = map['SampleGiftType'];
  }

}


class SampleGiftClaimData {
  String SampleGiftID;
  String SampleUID;

  SampleGiftClaimData(
      this.SampleGiftID,
      this.SampleUID,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'SampleGiftID'  : SampleGiftID,
      'SampleUID'     : SampleUID,
    };
    return map;
  }

  SampleGiftClaimData.fromMap(Map<String, dynamic> map) {
    SampleGiftID           = map['SampleGiftID'];
    SampleUID              = map['SampleUID'];
  }

}




class UISample9 extends StatefulWidget {
  @override
  UISample9State createState() => UISample9State();
}

class UISample9State extends State<UISample9> {
  FirebaseUser _user;
  bool isLoggedIn = false;
  var profileData;
  final FirebaseAuth _authFb = FirebaseAuth.instance;
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool SignInLoading = false;
  String SignInPassword = '';
  final FirebaseAuth _authInst = FirebaseAuth.instance;
  var GuestNameController   = TextEditingController();
  final GuestformKey = new GlobalKey<FormState>();






  Future<String> uploadDataFireStore() async {
    final db = Firestore.instance;

    DocumentReference ref = await db.collection("SampleUserData").add({
      "SampleUID"         : "$SampleUID",
      "SampleUserName"    : "$SampleUserName",
      "SampleDollar"      : "$SampleDollar",
      "SampleAvatarImg"   : "$SampleAvatarImg",
      "SamplePID"         : "$SamplePID",
    });

    setState(() {
      SampleUID = ref.documentID;
    });

    await SampleGiftUpdateDataFireStore();
}




  @override
  void initState(){
    SampleDollar=0;
    googleSignIn.signOut();
    facebookLogin.logOut();

    FirebaseAuth.instance.currentUser ().then ((user) =>
      setState (() {
        _user = user;
      },
      )
    );
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  Future<List<SampleUserData>> getSampleUserDataList() async {
    QuerySnapshot qShot = await Firestore.instance.collection('SampleUserData').getDocuments();

    return qShot.documents.map(
      (doc) => SampleUserData(
            doc.data['SampleUID'],
            doc.data['SampleUserName'],
            int.parse(doc.data['SampleDollar']),
            doc.data['SampleAvatarImg'],
            doc.data['SamplePID'],
      )
    ).toList();
  }


  void onLoginStatusChanged(bool isLoggedIn, {profileData}) {
    setState(() {
      this.isLoggedIn = isLoggedIn;
      this.profileData = profileData;
    });
  }


  @override
  Widget build(BuildContext context) {

   Future<FirebaseUser> signInWithGoogle() async {
    googleuser = await googleSignIn.signIn();
    googleAuth = await googleuser.authentication;

    if(googleuser==null){
      return null;
    }

    if(googleAuth==null){
      return null;
    }

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final user = (await _authInst.signInWithCredential(credential)).user;

    SampleUserName =user.displayName;
    SampleAvatarImg=user.photoUrl;
    SamplePID      =user.uid;

    List<SampleUserData> SampleUserDataLst = await getSampleUserDataList();
    bool Registered=false;
    SampleUserData US;

    for(int i=0 ; i<SampleUserDataLst.length ; i++ ){
        if(SampleUserDataLst.elementAt(i).SamplePID==SamplePID){
          Registered=true;
          print("User Is Registered!");
          SampleDollar=SampleUserDataLst.elementAt(i).SampleDollar;
          SampleUID   =SampleUserDataLst.elementAt(i).SampleUID;
          break;
        }
    }

    if( Registered==false ){
      await uploadDataFireStore();
    }

    Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MainSampleGiftPage()));
    return user;
  }


  Future<void> signInWithFb() async {
    var facebookLoginResult = await facebookLogin.logIn(['email']);

      switch (facebookLoginResult.status) {
        case FacebookLoginStatus.error:
          onLoginStatusChanged(false);
          setState(() {
            AuthLoading=false;
           });
          break;
        case FacebookLoginStatus.cancelledByUser:
          onLoginStatusChanged(false);
          setState(() {
            AuthLoading=false;
           });
          break;
        case FacebookLoginStatus.loggedIn:
          var graphResponse = await http.get(
              'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture.height(200)&access_token=${facebookLoginResult
                  .accessToken.token}');

          var profile = json.decode(graphResponse.body);
          print(profile.toString());

          onLoginStatusChanged(true, profileData: profile);
          break;
      }

      final accessToken = facebookLoginResult.accessToken.token;
      final facebookAuthCred = FacebookAuthProvider.getCredential(accessToken: accessToken);

      final user = (await _authFb.signInWithCredential(facebookAuthCred)).user;

      SampleAvatarImg=profileData['picture']['data']['url'];
      SampleUserName=profileData['name'];
      SamplePID=profileData['id'];


      setState(() {
        _user=user;
        isLoggedIn=true;
      });

      List<SampleUserData> SampleUserDataLst = await getSampleUserDataList();
      bool Registered=false;
      SampleUserData US;

      for(int i=0 ; i<SampleUserDataLst.length ; i++ ){
        if(SampleUserDataLst.elementAt(i).SamplePID==SamplePID){
          Registered=true;
          print("User Is Registered!");
          SampleDollar=SampleUserDataLst.elementAt(i).SampleDollar;
          SampleUID   =SampleUserDataLst.elementAt(i).SampleUID;
          break;
        }
      }

      if( Registered==false ){
         print("Registering Account And Setting Up Info");
         await uploadDataFireStore();
      }

      AuthLoading=false;
      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MainSampleGiftPage()));
    }



    validate() async {
      await CheckSampleUserConnected();
       if(IsSampleUserConnected==true){
        Navigator.of(context).pop();
        setState(() {AuthLoading=true;});
        if (GuestformKey.currentState.validate()) {
         GuestformKey.currentState.save();
         SampleUserName=GuestNameController.text;
         SampleAvatarImg="Images/LandingPage/Avatar.gif";
         print("Registering Account And Setting Up Info");
         await uploadDataFireStore();
         AuthLoading=false;
         Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MainSampleGiftPage()));
        }
       }
       else{
         Toast.show (
          "Internet Connection Required!",
          context,
          duration: Toast.LENGTH_SHORT,
          gravity: Toast.BOTTOM,
          textColor: Colors.blue,
        );
      }
  }


    return Scaffold(
      body:ListView(
        children:<Widget>[
          SizedBox(height:100,),
           Row(
            children: <Widget>[
              Image.asset("Images/Gift.gif",width:125,height:125,),
              Text(
                "Sample UI Gift!",
                style:TextStyle(
                  color:Colors.red,
                  fontFamily:"RaleWay",
                  fontSize:22,
                  fontWeight:FontWeight.bold,

                ),
              )
           ],
          ),
          SizedBox(height:50,),
          Divider(),
          (AuthLoading==false)?
           Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              children: <Widget>[
                


                ButtonTheme(
      height: 40.0,
      padding: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
        side: BorderSide(
          color: Colors.white.withOpacity(0.3),
        ),
      ),
      child: RaisedButton(
        onPressed:(){
          setState(() {
            AuthLoading=true;
          });
          var alert = AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
            ),
            content:SingleChildScrollView(
              scrollDirection:Axis.vertical,
              child:Container(
              height:300,
              child:ListView(
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Image.asset("Images/LandingPage/Avatar.gif",width:30,height:30,),
                 Text(
                  "Guest",
                  style:TextStyle(
                    color:Colors.teal,
                    fontFamily:"PT Mono",
                    fontWeight:FontWeight.bold
                  ),
                ),

                    ],
                  ),
                  Divider(),
                  Form(
                    key: GuestformKey,
                    child: Container(
                      height:140,
                      child:ListView(
                        children: <Widget>[

                          Text(
                            "By Proceeding As A Guest Your Progress Will Be Lost!",
                            style:TextStyle(
                              color:Colors.blueAccent,
                              fontFamily:"PT Mono",
                              fontStyle:FontStyle.italic,
                              fontSize:10,
                            ),
                          ),
                          SizedBox(height:8,),
                          Text("Enter Your Name:"),
                          TextFormField(
                            maxLength:15,
                            decoration:InputDecoration(
                              icon:Icon(Icons.person),
                              hintText:"Your Name",
                            ),
                            controller: GuestNameController,
                            keyboardType: TextInputType.text,
                            validator: (val) => val.length == 0 ? 'Please Enter Your Name' : null,
                            onSaved: (val) => SampleUserName = val,
                          ),
                          



                        ],
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    width:double.infinity,
                    child:RaisedButton(
                      color: Colors.green,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child:
                      Text(
                        'Proceed',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed: validate,
                    ),
                  ),
                  SizedBox(
                    width:double.infinity,
                    child:RaisedButton(
                      color: Colors.red,
                      shape:RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30.0),
                      ),
                      child:
                      Text(
                        'Cancel',
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                      onPressed:(){
                        Navigator.of(context).pop();
                         setState(() {
                           AuthLoading=false;
                         });
                      },
                    ),
                  ),
                
                ],
              ),
            ),
            )
          );

          showDialog(
              barrierDismissible:true,
              context: context,
              builder: (BuildContext context) {
                return alert;
              });

        },
        color: Colors.white,
        splashColor:Colors.grey.withOpacity(0.6),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.start,
          children:<Widget>[
            Image.asset("Images/LandingPage/Avatar.gif",height: 35.0,
              width: 35.0,),



            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 10.0),
              child: Text(
                "Continue As Guest",
                style:TextStyle(
                  // default to the application font-style
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),

          ],
        ),
      ),
    ),




                ButtonTheme(
      height: 40.0,
      padding: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
        side: BorderSide(
          color: Colors.white.withOpacity(0.3),
        ),
      ),
      child: RaisedButton(
        onPressed:()  async {
          await CheckSampleUserConnected();
          if(IsSampleUserConnected==true){
           setState(() {
            AuthLoading=true;
           });
           signInWithFb(); 
          }
          else{
            Toast.show (
      "Internet Connection Required!",
      context,
      duration: Toast.LENGTH_SHORT,
      gravity: Toast.BOTTOM,
      textColor: Colors.blue,
    );
          }
            
          
            
                
        },
        color: Colors.white,
        splashColor:Colors.grey.withOpacity(0.6),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.start,
          children:<Widget>[

            Padding(
              padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
              child: Image.asset(
                "Images/FB_Logo.png",
                height: 25.0,
                width : 25.0,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 10.0),
              child: Text(
                "Continue With Facebook",
                style:TextStyle(
                  // default to the application font-style
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),

          ],
        ),
      ),
    ),
  






              
               


                  ButtonTheme(
      height: 40.0,
      padding: EdgeInsets.all(0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(3.0),
        side: BorderSide(
          color: Colors.white.withOpacity(0.3),
        ),
      ),
      child: RaisedButton(
        onPressed:() async {
          await CheckSampleUserConnected();
          if(IsSampleUserConnected==true){
           setState(() {
            AuthLoading=true;
           });
            signInWithGoogle().whenComplete(()  async {
              setState(() {
            AuthLoading=false;
           });
          });
          }
          else{
            Toast.show (
      "Internet Connection Required!",
      context,
      duration: Toast.LENGTH_SHORT,
      gravity: Toast.BOTTOM,
      textColor: Colors.blue,
    );
          }
          
        },
        color: Colors.white,
        splashColor:Colors.grey.withOpacity(0.6),
        child: Row(
          mainAxisAlignment:MainAxisAlignment.start,
          children:<Widget>[

            Padding(
              padding: const EdgeInsets.fromLTRB(5,0,0,0),
              child: Image.asset(
                "Images/Google_Logo.png",
                height: 30.0,
                width: 30.0,
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 14.0, right: 10.0),
              child: Text(
                "Continue With Google",
                style:TextStyle(
                  // default to the application font-style
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),

          ],
        ),
      ),
    ),








                









              ],
            ),
          ):Container(
            width:MediaQuery.of(context).size.width,
            height:90,
            child:Center(
              child:Row(
                children: <Widget>[
                 SizedBox(width:70,),
                 CircularProgressIndicator(),
                 SizedBox(width:7,),
                 Text("Please Wait..."),
                ],
              ),
            ), 
           ),  


        ],
      ),
    );
  }




}



class MainSampleGiftPage extends StatefulWidget {
  @override
  MainSampleGiftPageState createState() => MainSampleGiftPageState();
}

class MainSampleGiftPageState extends State<MainSampleGiftPage> {
  Future<List<SampleGiftData>> SampleGiftFList;
  bool SampleGiftFound=false;
  String SampleGiftResult="";

  Future<List<SampleGiftData>> getSampleGiftDataList() async {
    QuerySnapshot qShot = await Firestore.instance.collection('SampleGifts').getDocuments();
    List SampleClaimIndex=new List();


    SampleGiftDataLst = qShot.documents.map(
        (doc) => SampleGiftData(
          doc.data['SampleGiftID'],
          doc.data['SampleGiftDescription'],
          int.parse(doc.data['SampleDollar']),
          doc.data['SampleGiftTo'],
          doc.data['SampleGiftType'],
        )
    ).toList();

    SampleGiftClaimLst=await getGiftClaimDataList();

    print("Found "+SampleGiftDataLst.length.toString() +"Gifts!");

    for(int j=0;j<SampleGiftDataLst.length;j++) {
      SampleGiftData GD=SampleGiftDataLst[j];
      if(GD.SampleGiftType=="Private"){
        if(GD.SampleGiftTo != SampleUID){
          SampleClaimIndex.add(GD);
        }
      }
    }

    for(int j=0;j<SampleGiftDataLst.length;j++){
      SampleGiftData GD=SampleGiftDataLst[j];
      for(int i=0;i<SampleGiftClaimLst.length;i++){
        SampleGiftClaimData GCD=SampleGiftClaimLst[i];
        if(GD.SampleGiftID.toString()==GCD.SampleGiftID.toString() ){
          if(GCD.SampleUID.toString()==SampleUID.toString() ){
            print("Found 1 Claimed Gift!");
            SampleClaimIndex.add(GD);
          }
        }
      }
    }

    if(SampleClaimIndex.length!=0){
      for(int i=0;i<SampleClaimIndex.length;i++){
        SampleGiftDataLst.remove(SampleClaimIndex[i]);
      }
    }

    print("Gifts Left To Claim : "+SampleGiftDataLst.length.toString() );

    if(SampleGiftDataLst.length>0){
      setState(() {
        SampleGiftResult="Here Is Your Gifts!";
      });
    }
    else{
      setState(() {
        SampleGiftResult="No Gift Found!";
      });
    }


    return SampleGiftDataLst;
  }


  Future<List<SampleGiftClaimData>> getGiftClaimDataList() async {
    QuerySnapshot qShot = await Firestore.instance.collection('SampleGiftClaim').getDocuments();

    return SampleGiftClaimLst = qShot.documents.map(
        (doc) => SampleGiftClaimData(
          doc.data['SampleGiftID'],
          doc.data['SampleUID'],
        )
    ).toList();
  }



  @override
  void initState(){
    super.initState();
    refreshList();
  }


  refreshList() {
    setState(() {
      SampleGiftFList=getSampleGiftDataList();
    });
  }


  Future<String> Claim(SampleGiftData gift) async {
    final db = Firestore.instance;
    String SampleGiftID=gift.SampleGiftID;

    DocumentReference ref = await db.collection("SampleGiftClaim").add({
      "SampleGiftID"      : "$SampleGiftID",
      "SampleUID"         : "$SampleUID",
    });


    setState(() {
      SampleDollar=SampleDollar+gift.SampleGiftDollar.toInt();
    });

    setState(() {
      SampleGiftDataLst.remove(gift);
      refreshList();
    });
    SampleGiftUpdateDataFireStore();
  }




  SingleChildScrollView GiftDataCards(List<SampleGiftData> SampleGiftLst) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child:Container(
        width:MediaQuery.of(context).size.width,
        child:Column(
        children: <Widget>[
          for(var i=0;i<SampleGiftLst.length;i++)
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Card(
                color:Colors.grey[200],
                child:ListTile(
                  leading:Image.asset("Images/Gift.gif"),
                  title:Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Text(
                      SampleGiftLst[i].SampleGiftDescription.toString(),
                      style:TextStyle(
                        fontFamily:"RaleWay",
                        color:Colors.red,
                      ),
                    ),
                  ),
                  subtitle:Column(
                    children: <Widget>[
                      Divider(color:Colors.blue,),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                        child: Row(
                        children: <Widget>[
                          Icon(Icons.monetization_on),
                          Text(SampleGiftLst[i].SampleGiftDollar.toString()),
                          SizedBox(width:60,),
                        ],
                     ),
                      ),
                     Divider(color:Colors.blue,),
                     SizedBox(
                       width:double.infinity,
                       height:30,
                       child:RaisedButton(
                      child:Text("Claim Gift!"),
                      onPressed:()  {
                        Claim(SampleGiftLst[i]);
                      },
                      )
                      ),
                      SizedBox(height:5,),
                    
                   


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


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Page1",
      home: Scaffold(
      resizeToAvoidBottomPadding: false,
      appBar:PreferredSize(
        preferredSize:Size.fromHeight(60.0),
         child:AppBar(
           actions: <Widget>[
             FlatButton.icon(
               icon:Icon(Icons.monetization_on),
               label:Text("Create Gift",style:TextStyle(color:Colors.white),),
               onPressed:(){
                 Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>CreateGiftPage()));
               },
             )
           ],
          flexibleSpace:Column(
        mainAxisAlignment:MainAxisAlignment.start,
        crossAxisAlignment:CrossAxisAlignment.start ,
      children: <Widget>[

        Container(color:Colors.transparent,width:MediaQuery.of(context).size.width, height:33,),   

        Container(
          color:Colors.transparent,
          width:MediaQuery.of(context).size.width,  
          height:43,
          child:Row(
            children: <Widget>[
              SizedBox(width:20,),
              ClipOval( 
                  child:Container(
                    child:(SampleAvatarImg=="Images/LandingPage/Avatar.gif")?
                    Image.asset(SampleAvatarImg):
                    Image.network(
                        SampleAvatarImg,
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
                SizedBox(width:5,),
                Text("$SampleUserName",style:TextStyle(color:Colors.white),), 
                SizedBox(width:20,),
                Icon(Icons.monetization_on),
                Text(" $SampleDollar ",style:TextStyle(color:Colors.white),), 
                
            ],
          )
        ),
        

      

       
      ],
      ),
         ), 
        ),
      body:ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(left:15,right:15,top:8,bottom:3),
              child:(SampleGiftResult!="")?
              ClipRRect(
                            borderRadius:BorderRadius.circular(30.0),
                            child:
                            SizedBox(width:MediaQuery.of(context).size.width,
                              child:Card(
                                child:Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text(
                                    SampleGiftResult,
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      color: Colors.teal,
                                      fontFamily: "Lobster",
                                      fontSize: 18,
                                    ),
                                  ),
                                ),
                              ),
                            ),):SizedBox(),
            ),
           
            FutureBuilder(
              future:SampleGiftFList,
              builder:(context,snapshot){
                if(snapshot.hasData){
                  SampleGiftFound=true;
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
                        Text("Getting Gifts..."),
                      ],
                    ),
                  );
                }
              },
            ),
          ],
        ),
      ),
    );
  }

}



class CreateGiftPage extends StatefulWidget {
  @override
  SampleGiftAddState createState() => new SampleGiftAddState();
}

class SampleGiftAddState extends State<CreateGiftPage> {
  TextEditingController DollarAmountCtrl = new TextEditingController();
  bool SendingGift=false;
  int _radioValue = 1;
  String Type="Private",GiftTo=SampleUID;


  void _handleRadioValueChange(int value) {   
    setState(() {
      _radioValue = value;

      switch (_radioValue) {
        case 1:
          Type="Private";
          GiftTo=SampleUID;
          break;

        case 2:
          Type="Public";
          GiftTo="AllMembers";
          break;
      }
    });
  }

  

  @override
  initState() {
    super.initState();
  }

  Future<String> AddGiftFireStore(int Amount,String Descr,String Type,String GiftTo) async {
    final db = Firestore.instance;

    DocumentReference ref = await db.collection("SampleGifts").add({
      "SampleGiftID"          : "0",
      "SampleGiftDescription" : "$Descr",
      "SampleDollar"          : "$Amount",
      "SampleGiftTo"          : "$GiftTo",
      "SampleGiftType"        : "$Type",
    });

    await Firestore.instance.collection('SampleGifts').document(ref.documentID).updateData({
      "SampleGiftID"          : ref.documentID,
      "SampleGiftDescription" : "$Descr",
      "SampleDollar"          : "$Amount",
      "SampleGiftTo"          : "$GiftTo",
      "SampleGiftType"        : "$Type",
    });

    setState(() {
      SendingGift=false;
    });
    
  }

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
          leading:IconButton(
            icon:Icon(Icons.keyboard_arrow_left),
            onPressed:(){
              Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>MainSampleGiftPage()));
            },
          ),
          title:Text('Create Gift!'),
        ),
        body:(SendingGift==false)?Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListView(
            children: <Widget>[
              Text("Dollar Amount:"),
              TextField(
                controller:DollarAmountCtrl,
                decoration:InputDecoration(hintText:"10"),
              ),
              Text("Send To:"),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      new Radio(
                        value:1,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                      new Text('Only Me'),
                      new Radio(
                        value:2,
                        groupValue: _radioValue,
                        onChanged: _handleRadioValueChange,
                      ),
                      new Text('All Members'),
                    ],
                  ),
              RaisedButton(
                child:Text("Send Gift!"),
                onPressed:(){
                  int SendDollar;
                  if(DollarAmountCtrl.text==""){
                    Toast.show("Enter Dollar Amount!", context);
                  }
                  else{
                    SendDollar = int.parse(DollarAmountCtrl.text);
                    if(SendDollar<1 || SendDollar>100){
                      Toast.show("Enter Amount Between 1 And 100 !", context);
                    }
                    else{
                      setState((){SendingGift=true;});
                      AddGiftFireStore(SendDollar,"Gift!",Type,GiftTo);
                    }

                  }
                  

                },
              ),

            ],
          ),
        ):Center(child:CircularProgressIndicator(),),
        ),
    );
  }


}








