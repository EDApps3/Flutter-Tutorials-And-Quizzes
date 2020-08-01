import 'package:flutter/material.dart';
import 'Landing_Loading_Page_Component/Landing_Slider.dart';
import 'MainSplashScreen.dart';
import 'SettingPage.dart';
import 'UserDataInfo.dart';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'package:cloud_firestore/cloud_firestore.dart';
import 'CheckConnection.dart';
import 'package:toast/toast.dart';
import 'package:google_sign_in/google_sign_in.dart';


bool AuthLoading=false;
var facebookLogin = FacebookLogin();
var googleuser,googleAuth;
final GoogleSignIn googleSignIn = GoogleSignIn();


class LandingLoginPage extends StatefulWidget {
  @override
  LandingLoginPageState createState() => LandingLoginPageState();
}

class LandingLoginPageState extends State<LandingLoginPage> {
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

    DocumentReference ref = await db.collection("UserData").add({
      "UID"         : "$UID",
      "UserName"    : "$AvatarName",
      "Tokens"      : "$AvatarTokens",
      "Xp"          : "$AvatarXp",
      "AvatarImg"   : "$AvatarImg",
      "PID"         : "$PID",
    });

    setState(() {
      UID = ref.documentID;
    });
}




  @override
  void initState(){
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

    Future<List<UserData>> getUserDataList() async {
    QuerySnapshot qShot = await Firestore.instance.collection('UserData').getDocuments();

    return qShot.documents.map(
      (doc) => UserData(
            doc.data['UID'],
            int.parse(doc.data['Tokens']),
            int.parse(doc.data['Xp']),
            doc.data['UserName'],
            doc.data['AvatarImg'],
            doc.data['UID'],
            doc.data['PID'],
            1,
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

    AvatarName=user.displayName;
    AvatarImg=user.photoUrl;
    PID=user.uid;

    var dbApp = DBApp();
      App  AS=new App(3,"Login","Google");
      dbApp.update(AS);
      dbApp.getLogin();

      List<UserData> UserDataLst = await getUserDataList();
      bool Registered=false;
      UserData US;

      for(int i=0 ; i<UserDataLst.length ; i++ ){
        if(UserDataLst.elementAt(i).PID==PID){
          Registered=true;
          print("User Is Registered!");
          AvatarTokens=UserDataLst.elementAt(i).Tokens;
          AvatarXp    =UserDataLst.elementAt(i).Xp;
          UID         =UserDataLst.elementAt(i).UID;
          US=new UserData("1",AvatarTokens,AvatarXp,AvatarName,AvatarImg,UID,PID,1);
          break;
        }
      }

      if( Registered==false ){
         print("Registering Account And Setting Up Info");
         await uploadDataFireStore();
         US=new UserData("1",0,0,AvatarName,AvatarImg,UID,PID,1);
      }

      await dbApp.updateUserData(US);
      await dbApp.getAvatarInfo();


      Navigator.push(context,MaterialPageRoute(builder:(context)=>MainSplashScreen()));

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

      AvatarImg=profileData['picture']['data']['url'];
      AvatarName=profileData['name'];
      PID=profileData['id'];


      setState(() {
        _user=user;
        isLoggedIn=true;
      });

      var dbApp = DBApp();
      App  AS=new App(3,"Login","FaceBook");
      dbApp.update(AS);
      dbApp.getLogin();

      List<UserData> UserDataLst = await getUserDataList();
      bool Registered=false;
      UserData US;

      for(int i=0 ; i<UserDataLst.length ; i++ ){
        if(UserDataLst.elementAt(i).PID==PID){
          Registered=true;
          print("User Is Registered!");
          AvatarTokens=UserDataLst.elementAt(i).Tokens;
          AvatarXp    =UserDataLst.elementAt(i).Xp;
          UID         =UserDataLst.elementAt(i).UID;
          US=new UserData("1",AvatarTokens,AvatarXp,AvatarName,AvatarImg,UID,PID,1);
          break;
        }
      }

      if( Registered==false ){
         print("Registering Account And Setting Up Info");
         await uploadDataFireStore();
         US=new UserData("1",0,0,AvatarName,AvatarImg,UID,PID,1);
      }

      await dbApp.updateUserData(US);
      await dbApp.getAvatarInfo(); 
     
      AuthLoading=false;
      Navigator.push(context,MaterialPageRoute(builder:(context)=>MainSplashScreen()));
    }



      validate() async {

        await CheckUserConnected();
          if(IsUserConnected==true){
            Navigator.of(context).pop();
           setState(() {
            AuthLoading=true;
           });
            if (GuestformKey.currentState.validate()) {
      GuestformKey.currentState.save();
      AvatarName=GuestNameController.text;
      
      var dbApp = DBApp();
      App  AS=new App(3,"Login","Guest");
      dbApp.update(AS);
      dbApp.getLogin();

      UserData US;
      PID="Guest";
      AvatarImg="Images/LandingPage/Avatar.gif";

      print("Registering Account And Setting Up Info");
      await uploadDataFireStore();
      US=new UserData("1",0,0,AvatarName,AvatarImg,UID,PID,1);
      
      await dbApp.updateUserData(US);
      await dbApp.getAvatarInfo();

      AuthLoading=false;
      
      Navigator.push(context,MaterialPageRoute(builder:(context)=>MainSplashScreen()));

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
      backgroundColor:(ThemeResult=="Light")?Colors.white:Colors.black12, 
      body:ListView(
        children:<Widget>[
          LandingPageSlider(),
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
                            onSaved: (val) => AvatarName = val,
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
              barrierDismissible:false,
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
          await CheckUserConnected();
          if(IsUserConnected==true){
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
          await CheckUserConnected();
          if(IsUserConnected==true){
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
                 Text("Please Wait...",style:TextStyle(color:(ThemeResult=="Light")?Colors.black:Colors.white),), 
                ],
              ),
            ), 
           ),  


        ],
      ),
    );
  }




}