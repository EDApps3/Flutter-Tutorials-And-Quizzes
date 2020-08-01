import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/AppSoundPlay.dart';
import 'package:flutter_tutorials_and_quizzes/UserDataInfo.dart';
import 'package:toast/toast.dart';
import 'MainSplashScreen.dart';
import 'SettingPage.dart';
import 'Landing_Login_Page.dart';
import 'main.dart';
import 'package:flutter/services.dart';
import 'Gifts.dart';
import 'LeaderBoard.dart';
import 'package:kf_drawer/kf_drawer.dart';
import 'main.dart';
import 'UserDataInfo.dart';
import 'AppSoundPlay.dart';
import 'Profile.dart';
import 'SettingPage.dart';
import 'Samples.dart';
import 'UpdateApp.dart';
import 'UserAction.dart';
import '_Comp_Drawer/Header_Drawer.dart';
import 'package:animated_background/animated_background.dart';
import 'AppLang.dart';


var ActivePage;
var MainPageActive=false;
KFDrawerController MainDrawerController;



class AuthCheck extends StatefulWidget {
  @override
  AuthCheckState createState() => AuthCheckState();
}

class AuthCheckState extends State<AuthCheck> with TickerProviderStateMixin {

  ParticleOptions Particles = ParticleOptions(
    baseColor: Colors.blueGrey,
    spawnOpacity: 0.0,
    opacityChangeRate: 0.25,
    minOpacity: 0.1,
    maxOpacity: 0.4,
    spawnMinSpeed: 30.0,
    spawnMaxSpeed: 70.0, 
    spawnMinRadius: 7.0,
    spawnMaxRadius: 15.0,
    particleCount: 160,
  );

  @override
  void initState() {
    setState(() {
         if(LoginResult=="NoLoginFound"){
           ActivePage=AuthCheckPage(ActivePage:LandingLoginPage());
         }
         else{
           ActivePage=AuthCheckPage(ActivePage:Main(this));
        }
     });
  
    super.initState();
    MainDrawerController = KFDrawerController(
      initialPage: ActivePage,
      items: [
        KFDrawerItem.initWithPage(
          text: Text(HomeTxtTrans, style: TextStyle(fontSize:15,color:Colors.white,fontWeight:FontWeight.bold)),
          icon: Container(
            width:35,
            height:35,
            child:Center(child:Image.asset("Images/Book.gif",width:30,height:30),),
          ),
          page: (LoginResult!="NoLoginFound")?AuthCheckPage(ActivePage:Main(this)):AuthCheckPage(ActivePage:LandingLoginPage()),
        ),
        KFDrawerItem.initWithPage(
          text: Text(ProfileTxtTrans, style: TextStyle(fontSize:15,color:Colors.white,fontWeight:FontWeight.bold)),
          icon: Container(
            width:35,
            height:35,
            child:Center(child:Image.asset("Images/LandingPage/Avatar.gif",width:25,height:25),),
          ),   
          page: (LoginResult!="NoLoginFound")?AuthCheckPage(ActivePage:ProfilePage()):AuthCheckPage(ActivePage:LandingLoginPage()),
        ),
        KFDrawerItem.initWithPage(
          text: Text(SettingsTxtTrans, style: TextStyle(fontSize:15,color:Colors.white,fontWeight:FontWeight.bold)),
          icon: Container(
            width:35,
            height:35,
            child:Center(child:Image.asset("Images/settings.png",width:25,height:25),),
          ), 
          page: (LoginResult!="NoLoginFound")?AuthCheckPage(ActivePage:SettingPage()):AuthCheckPage(ActivePage:LandingLoginPage()),
        ),
        KFDrawerItem.initWithPage(
          text: Text(LeaderBoardTxtTrans, style: TextStyle(fontSize:15,color:Colors.white,fontWeight:FontWeight.bold)),
          icon: Container(
            width:35,
            height:35,
            child:Center(child:Image.asset("Images/trophy.png",width:30,height:30),),
          ), 
          page: (LoginResult!="NoLoginFound")?AuthCheckPage(ActivePage:LeaderBoard()):AuthCheckPage(ActivePage:LandingLoginPage()),
        ),
        KFDrawerItem.initWithPage(
          text: Text(GiftTxtTrans, style: TextStyle(fontSize:15,color:Colors.white,fontWeight:FontWeight.bold)),
          icon: Container(
            width:35,
            height:35,
            child:Center(child:Image.asset("Images/Gift.gif",width:30,height:30),),
          ), 
          page: (LoginResult!="NoLoginFound")?AuthCheckPage(ActivePage:Gifts(this)):AuthCheckPage(ActivePage:LandingLoginPage()),
        ),
        KFDrawerItem.initWithPage(
          text: Text(UISamplesTxtTrans, style: TextStyle(fontSize:15,color:Colors.white,fontWeight:FontWeight.bold)),
          icon: Container(
            width:35,
            height:35,
            child:Center(child:Image.asset("Images/Samples.gif",width:20,height:20),),
          ),
          page: (LoginResult!="NoLoginFound")?AuthCheckPage(ActivePage:Samples(this)):AuthCheckPage(ActivePage:LandingLoginPage()),
        ),
        KFDrawerItem.initWithPage(
          text: Text(UpdateTxtTrans, style: TextStyle(color: Colors.white,fontWeight:FontWeight.bold),),
          icon: Container(
            width:35,
            height:35,
            child:Center(child:Image.asset("Images/Update.png",width:20,height:20),),
          ),
          page: (LoginResult!="NoLoginFound")?AuthCheckPage(ActivePage:AppCheckForUpdate()):AuthCheckPage(ActivePage:LandingLoginPage()),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {

    
        Future<bool> CloseDialog() {
            
        return showDialog(
          context: context,
          builder: (context) => new AlertDialog(
              title: new Text(ClosingTheAppTxtTrans),
              content:Container(
                height:106,
                child:Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Divider(),
                    new Text(AreYouSureTxtTrans),
                    SizedBox(height:8),
                    Row(
                      children: <Widget>[
                        RaisedButton (
                          color: Colors.green,
                          shape: RoundedRectangleBorder (
                              borderRadius: BorderRadius.circular (30.0)
                          ),
                          child: Padding (
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child:
                              Row(
                                children: <Widget>[
                                  Icon(Icons.exit_to_app),
                                  Text (
                                    YesTxtTrans,
                                    textAlign:TextAlign.center,
                                    maxLines: 1,
                                    style:TextStyle(
                                      fontSize:12,
                                    ),
                                  ),
                                ],
                              )
                          ),
                          onPressed: () {
                            PlayTapSound();
                            SystemNavigator.pop();
                          },
                        ),
                        RaisedButton (
                          color: Colors.red,
                          shape: RoundedRectangleBorder (
                              borderRadius: BorderRadius.circular (30.0)
                          ),
                          child: Padding (
                              padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                              child:
                              Row(
                                children: <Widget>[
                                  Icon(Icons.close),
                                  Text (
                                    NoTxtTrans,
                                    textAlign:TextAlign.center,
                                    maxLines: 1,
                                    style:TextStyle(
                                      fontSize:12,
                                    ),
                                  ),
                                ],
                              )
                          ),
                          onPressed: () {
                            PlayTapSound();
                            Navigator.of(context).pop(false);
                          },
                        ),
                      ],
                    )
                  ],
                ),
              )
          ),
        ) ?? false;
        
      }




    return WillPopScope(
        onWillPop:(){
          print(MainPageActive);
          if(MainPageActive){
            CloseDialog();
          }
          else{
             setState(() {
              AuthCheckPage(ActivePage:Main(this));
             });
          }
        },
        child:Scaffold(
      body:AnimatedBackground(
         behaviour: RandomParticleBehaviour(
           options: Particles
         ),
         vsync: this,
         child:KFDrawer(
       borderRadius: 30.0,
       shadowBorderRadius: 30.0,
       menuPadding: EdgeInsets.all(5.0),
       scrollable: true,
        controller: MainDrawerController,
        header:HeaderDrawer(),
        footer: KFDrawerItem.initWithPage(
          text: Text(LogoutTxtTrans, style: TextStyle(fontSize:15,color:Colors.white,fontWeight:FontWeight.bold)),
          icon: Container(
            width:35,
            height:35,
            child:Center(child:Image.asset("Images/logout.png",width:20,height:20),),
          ), 
          onPressed:(){
             Toast.show (
                    LoggingYouOutTxtTrans,
                    context,
                    duration: Toast.LENGTH_SHORT,
                    gravity: Toast.BOTTOM,
                    textColor: Colors.white,
                  );
            logout();
            Navigator.push(context,MaterialPageRoute(builder:(context)=>MainSplashScreen()));
              
          },
        ),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              ThemeBg, 
              ThemeAppBar.withOpacity(0.5),
            ],
            tileMode: TileMode.repeated,
          ),
        ),
        
      ),
        ),
        ),
    );
  }
}









class AuthCheckPage extends KFDrawerContent {
  AuthCheckState parent;
  var ActivePage;

  AuthCheckPage({
    @required this.ActivePage,
  });

  @override
  AuthCheckPageState createState() => AuthCheckPageState();
}

class AuthCheckPageState extends State<AuthCheckPage> {


  Widget build(BuildContext context) {

    return Container(
      color:ThemeAppBar,
      child:SafeArea(
      child: Column(
          children: <Widget>[
            Container(
              color:ThemeAppBar,
              height:70,
              child:Row(
              children: <Widget>[
                ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(32.0)),
                  child:(LoginResult=="NoLoginFound")?
                   Padding(
                     padding: const EdgeInsets.all(8.0),
                     child: Image.asset("Images/160x160_Flutter.png",width:30,height:30),
                   )
                  :IconButton(
                      icon: Icon(
                        Icons.menu,
                        color: Colors.white,
                      ),
                      onPressed: widget.onMenuPressed,
                      
                 ),
                ),
                (LoginResult!="NoLoginFound")?UserDataInfo(widget.parent):Text(
                  "Flutter:Tutorials And Quizzes",
                  style:TextStyle(
                    color:Colors.white,
                    fontWeight:FontWeight.bold,
                    fontFamily:"PT-Mono",
                    fontSize:20,
                  ),
                ),
              ],
             ),
            ),
            
            Expanded(
              child:this.widget.ActivePage
            ),
          ],
      ),
      ),
    );
  
    
  }
}








