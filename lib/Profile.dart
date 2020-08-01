import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';
import 'Gifts.dart';
import 'LoadFireBaseAdmob.dart';
import 'Samples.dart';
import 'main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'UserDataInfo.dart';
import 'SettingPage.dart';
import 'Landing_Login_Page.dart';
import 'Levels.dart';
import 'CheckConnection.dart';
import 'MainSplashScreen.dart';
import 'AppLang.dart';


class ProfilePage extends StatefulWidget {
  @override
  ProfilePageState createState() => new ProfilePageState();
}

class ProfilePageState extends State<ProfilePage>  {


  Future<void> logout() async {
    GiftDataLst=new List();
    GiftClaimLst=new List();
    SampleDataLst=new List();
    SampleUI1_Claimed=false;
    SampleUI2_Claimed=false;
    SampleUI3_Claimed=false;
    SampleUI4_Claimed=false;
    SampleUI5_Claimed=false;
    SampleUI6_Claimed=false;

              var dbApp = DBApp();
            App AS=new App(3,"Login","NoLoginFound");
            dbApp.update(AS);
            dbApp.getLogin();
            await googleSignIn.signOut();
            await facebookLogin.logOut();

            UserData US=new UserData("1",0,0,"John Doe","Images/LandingPage/Avatar.gif","-1","-1",1);
      
            await dbApp.updateUserData(US);
            await dbApp.getAvatarInfo();
}

  AudioPlayer advancedPlayer;
  AudioCache audioCache;
  bool _SWvalue;

  void initPlayer(){
    advancedPlayer = new AudioPlayer();
    audioCache = new AudioCache(fixedPlayer: advancedPlayer);
  }

  void PlayTapSound() async{
    audioCache.play('Music/Tap.mp3');
  }

  void initState(){
    createMyBannerAd();
    ShowMyAds();
    super.initState();
    initPlayer();
    GetLevelsXp();

    setState(()  {
      CheckUserConnected();
    });

    if(IsUserConnected==true){
      UpdateDataFireStore();
    }
  }








  Widget build(BuildContext context) {
    return Scaffold(
            backgroundColor:ThemeBg,
      appBar:AppBar(
                backgroundColor:ThemeAppBar,
        leading:Icon(Icons.person,color:Colors.white,),
        title:Text(ProfileTxtTrans),
        actions: <Widget>[
          IconButton(
          icon:Image.asset("Images/logout.png",width:35,height:35),
          onPressed:() {
            logout();
            Navigator.pop(context);
            Navigator.push(context,MaterialPageRoute(builder:(context)=>MainSplashScreen()));
          },
        ),
        ],
      ),
      
        bottomNavigationBar:(AddBanID!="NoAds")?BottomAppBar(
            color:Colors.transparent,
            child:Container(
              child:(MyBanner!=null)?MyBanner:Divider(),
            ),
          ):Divider(),
          
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
                    child:(LoginResult=="Guest")?
                    Image.asset(AvatarImg,width:300,height:300,fit:BoxFit.fill,):
                    Image.network(
                      AvatarImg,width:300,height:300,fit:BoxFit.fill,
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
                    Text("$AvatarName",style: TextStyle(color: Colors.lightBlue,fontFamily:"Lora",fontSize:25),), 
                  ],
                ),

                Divider(),


                 Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: <Widget>[
                    Text("     $LoggedInByTxtTrans",style: TextStyle(color: Colors.teal,fontFamily:"Lora",),), 
                    Text(" $LoginResult",style:TextStyle(color:(ThemeResult=="Light")?Colors.black:Colors.white)),
                  ],
                ),

                Divider(),

                Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: <Widget>[
                    Text("     UID:",style: TextStyle(color: Colors.teal,fontFamily:"Lora",),),
                    Text(" $UID",style:TextStyle(color:(ThemeResult=="Light")?Colors.black:Colors.white)),
                  ],
                ),


                Divider(),

                Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("Images/coin.gif",width:15,height:15),
                    Text(" Tokens",style: TextStyle(color: Colors.teal,fontFamily:"Lora",),), 
                    Text("$AvatarTokens",style:TextStyle(color:(ThemeResult=="Light")?Colors.black:Colors.white)),
                  ],
                ),

                Divider(),

                Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: <Widget>[
                    Image.asset("Images/Star.gif",width:15,height:15),   
                    Text(" Level ",style: TextStyle(color: Colors.teal,fontFamily:"Lora",),),
                    Text("$Lvl",style:TextStyle(color:(ThemeResult=="Light")?Colors.black:Colors.white))
                  ],
                ),


                Row(
                  mainAxisAlignment:MainAxisAlignment.start,
                  children: <Widget>[
                     new LinearPercentIndicator(
                  animation:true,
                  width:MediaQuery.of(context).size.width-30,
                  lineHeight: 15.0,
                  percent: XpPercVal,
                  center: Text(
                    "$AvatarXp/$XpMax",
                    style: new TextStyle(fontSize: 12.0),
                  ),
                  linearStrokeCap: LinearStrokeCap.roundAll,
                  backgroundColor: Colors.grey,
                  progressColor: Colors.red.withOpacity(0.5),
                ),
                  ],
                ),

                Divider(),


               



                



              ],
            ),
          ),
        ],
      ),
    );
  }


}









