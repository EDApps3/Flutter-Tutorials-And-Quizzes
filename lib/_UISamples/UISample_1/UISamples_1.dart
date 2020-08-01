import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:http/http.dart' as http;
import 'package:toast/toast.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'dart:io';
import 'package:animated_text_kit/animated_text_kit.dart';




String UserName,UserID,UserEmail,UserImgUrl,LoginBy;
bool IsUserConnectedBool=false;


Future<bool> CheckUserIfConnected() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
      IsUserConnectedBool=true;
      print('User Connected To The Internet');
    }
  } on SocketException catch (_) {
    IsUserConnectedBool=false;
    print('User Not Connected To The Internet');
  }
}


bool AuthLoading=false;
var facebookLogin = FacebookLogin();
var googleuser,googleAuth;
final GoogleSignIn googleSignIn = GoogleSignIn();






class PageSlider extends StatefulWidget {
  @override
  PageSliderState createState() => PageSliderState();
}

class PageSliderState extends State<PageSlider> {
  CarouselSlider carouselSlider;
  int _current = 0;
  static bool TextAnim1=true;
  static bool TextAnim2=false;
  static bool TextAnim3=false;

  List CapList = [
  Padding(
    padding: const EdgeInsets.all(12.0),
    child:Container(
      color:Colors.blue.withOpacity(0.5),
      height:45,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,5,20,5),
        child:TypewriterAnimatedTextKit(     
            totalRepeatCount:999,
            text: [
              "Learn Widgets Step By Step",
            ],
            textStyle: TextStyle(
              color:Colors.white,
              fontSize: 16.0,
              fontFamily: "PT Mono",
            ),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.center
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(12.0),
    child:Container(
      color:Colors.blueGrey.withOpacity(0.5),
      height:45,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,5,20,5),
        child:TypewriterAnimatedTextKit(     
            totalRepeatCount:999,
            text: [
              "Discover And Share Codes",
            ],
            textStyle: TextStyle(
              color:Colors.white,
              fontSize: 16.0,
              fontFamily: "PT Mono",
            ),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.center
        ),
      ),
    ),
  ),
  Padding(
    padding: const EdgeInsets.all(12.0),
    child:Container(
      color:Colors.teal.withOpacity(0.5),
      height:45,
      width: 400,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20,5,20,5),
        child:TypewriterAnimatedTextKit(     
            totalRepeatCount:999,
            text: [
              "Run Quizzes And Test Yourself",
            ],
            textStyle: TextStyle(
              color:Colors.white,
              fontSize: 16.0,
              fontFamily: "PT Mono",
            ),
            textAlign: TextAlign.center,
            alignment: AlignmentDirectional.center
        ),
      ),
    ),
  ),
];


  List imgList = [
    'Images/LandingPage/Slider1.jpg',
    'Images/LandingPage/Slider2.jpg',
    'Images/LandingPage/Slider3.jpg',
  ];

  @override
  void initState(){
    super.initState();
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:MediaQuery.of(context).size.width,
      height:360,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(height:10),
          carouselSlider = CarouselSlider(
            autoPlayInterval:Duration(seconds:2),
            autoPlay:true,
            enableInfiniteScroll:true,
            height: 300.0,
            initialPage: 0,
            enlargeCenterPage: true,
            onPageChanged: (index) {
              setState(() {
                _current = index;
              });
            },

            items: imgList.map((imgUrl) {
              return Builder(
                builder: (BuildContext context) {
                  return Container(
                      width: MediaQuery.of(context).size.width,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        color: Colors.green,
                      ),
                      child:
                      Stack(
                        children: <Widget>[
                          new Positioned.fill(
                            child:Image.asset(
                              imgUrl,
                              fit: BoxFit.fill,
                            ),
                          ),
                          CapList[imgList.indexOf(imgUrl)],


                        ],
                      )






                  );
                },
              );
            }).toList(),
          ),



        ],
      ),
    );
  }
}


class UISample1 extends StatefulWidget {
  @override
  UISample1State createState() => UISample1State();
}

class UISample1State extends State<UISample1> {
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





  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
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
          LoginBy="Google";
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

    UserName=user.displayName;
    UserImgUrl=user.photoUrl;
    UserID=user.uid;

    Navigator.push(context,MaterialPageRoute(builder:(context)=>SampleProfilePage()));


    return user;
  }



    Future<void> signInWithFb() async {
      LoginBy="Facebook";
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

      UserImgUrl=profileData['picture']['data']['url'];
      UserName=profileData['name'];
      UserID=profileData['id'];


      setState(() {
        isLoggedIn=true;
      });

      AuthLoading=false;
      Navigator.push(context,MaterialPageRoute(builder:(context)=>SampleProfilePage()));
    }



      validate() async {
        LoginBy="Guest";
            Navigator.of(context).pop();
           setState(() {
            AuthLoading=true;
           });
            if (GuestformKey.currentState.validate()) {
      GuestformKey.currentState.save();
      UserName=GuestNameController.text;
      UserImgUrl="Images/LandingPage/Avatar.gif";

      AuthLoading=false;
          Navigator.push(context,MaterialPageRoute(builder:(context)=>SampleProfilePage()));

      

    }
          }
         

   
  









    return Scaffold(
      body:ListView(
        children:<Widget>[
          PageSlider(),
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
                            onSaved: (val) => UserName = val,
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
          await CheckUserIfConnected();
          if(IsUserConnectedBool==true){
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
          await CheckUserIfConnected();
          if(IsUserConnectedBool==true){
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





class SampleProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => new ProfilePageState();
}

class ProfilePageState extends State<SampleProfilePage>  {


  Future<void> logout() async {
    await googleSignIn.signOut();
    await facebookLogin.logOut();
  }



  void initState(){
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        leading:Icon(Icons.person,color:Colors.white,),
        title:Text("Profile"),
        actions: <Widget>[
          IconButton(
          icon:Image.asset("Images/logout.png",width:35,height:35),
          onPressed:() {
            logout();
            Navigator.pop(context);
          },
        ),
        ],
      ),
      body:
      ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              mainAxisAlignment:MainAxisAlignment.center,
              children: <Widget>[

                SizedBox(height:10),


                ClipOval(
                  child:Container(
                    color:Colors.red,
                    width:150,
                    height:150,
                    child:(LoginBy=="Guest")?
                    Image.asset(UserImgUrl,width:300,height:300,fit:BoxFit.fill,):
                    Image.network(
                      UserImgUrl,width:300,height:300,fit:BoxFit.fill,
                      loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                        if (loadingProgress == null) return child;
                        return Center(
                          child: CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
                            value: loadingProgress.expectedTotalBytes != null ?
                            loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                                : null,
                          ),
                        );
                      },
                    ),
                  ),
                ),

                Divider(),

                 Row(
                  mainAxisAlignment:MainAxisAlignment.center,
                  children: <Widget>[
                    Text("$UserName",style: TextStyle(color: Colors.lightBlue,fontFamily:"Lora",fontSize:25),), 
                  ],
                ),

                Divider(),


                 Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: <Widget>[
                    Text("     LoggedIn By:",style: TextStyle(color: Colors.teal,fontFamily:"Lora",),), 
                    Text(" $LoginBy"),
                  ],
                ),

                Divider(),

                (LoginBy!="Guest")?Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: <Widget>[
                    Text("     UserID:",style: TextStyle(color: Colors.teal,fontFamily:"Lora",),),
                    Text(" $UserID"),
                  ],
                ):SizedBox(),

                Divider(),

               


                



                



              ],
            ),
          ),
        ],
      )
    );
  }


}