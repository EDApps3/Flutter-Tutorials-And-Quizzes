
import 'package:translator/translator.dart';
import 'SettingPage.dart';


final AppLangTranslator = GoogleTranslator();

Future<String> TranslateWord(S) async{
  String TS="";
  await AppLangTranslator.translate(S,to:SelectedLangAbv).then((TranslatedResult){
    TS=TranslatedResult;
  });
  return TS;
}


//-------------------Auth-------------------------
//-------------------Auth-------------------------
String AreYouSureTxtTrans           = "Are You Sure?";
String YesTxtTrans                  = "Yes";
String NoTxtTrans                   = "No";
String LoggingYouOutTxtTrans        = "Logging You Out...";
String ClosingTheAppTxtTrans        = "Closing The App!";

//-------------------UserData----------------------
//-------------------UserData----------------------
String LevelTxtTrans               = "Level";
String LoggedInByTxtTrans          = "Logged In By:";

//-------------------Notifications------------------
//-------------------Notifications------------------
String NotificationsTxtTrans         = "Notifications";
String NoNotificationFoundTxtTrans   = "No Notification Found";
String FetchingNotificationsTxtTrans = "Getting Notifications ...";
String ProceedTxtTrans               = "Proceed";

//-------------------Gift------------------
//-------------------Gift------------------
String NoGiftFoundTxtTrans           ="No Gift Found";
String FetchingGiftTxtTrans          ="Getting Gifts...";
String ClaimGiftTxtTrans             ="Claim Gift!";
String UnclaimedGiftThatNeedToBeClaimedBeforeExpiringTxtTrans  ="You Have Gifts That Need To Be Claimed Before Expiring";


//-------------------Drawer-----------------------
//-------------------Drawer-----------------------
String HomeTxtTrans                 = "Home";
String ProfileTxtTrans              = "Profile";
String SettingsTxtTrans             = "Settings";
String LeaderBoardTxtTrans          = "LeaderBoard";
String GiftTxtTrans                 = "Gift";
String UISamplesTxtTrans            = "UISamples";
String UpdateTxtTrans               = "Update";
String LogoutTxtTrans               = "Logout";

//-------------------AppCode-----------------------
//-------------------AppCode-----------------------
String AppCodeTxtTrans              ="App Code";
String WantTheFullCodeTxtTrans      ="Want Full App Code";
String AppCodeRateTxtTrans          ="By Rating Us 5 Stars Code Will Stay Up To Date";


//-------------------Quizz-----------------------
//-------------------Quizz-----------------------
String TestMeTxtTrans           = "Test Me";
String RunRandomQuizzesTxtTrans = "Run Random Quizzes";


//-------------------CodesByUser-----------------------
//-------------------CodesByUser-----------------------
String CodesByUserTxtTrans       = "Codes By Users";
String DiscoverUsersCodeTxtTrans = "Discover Users Code!";

//-------------------Rate5----------------------------
String Rate5TxtTrans = "Rate Us 5 Stars So We Can Keep Going And Upload New Contents,Codes And Quizzes";



//-------------------StartSelectUI-----------------------
//-------------------StartSelectUI-----------------------
String SelectWhereYouWantToStartTxtTrans   = "Select Where You Want To Start!";



//-------------------Setting-----------------------
//-------------------Setting-----------------------

String SoundTxtTrans              = "Sound";
String OnTxtTrans                 = "On";
String OffTxtTrans                = "Off";
String LightTxtTrans              = "Light";
String DarkTxtTrans               = "Dark";
String StartupUpdatePopupTxtTrans = "Startup Update Popup";
String ThemeTxtTrans              = "Theme";
String SelectedLanguageTxtTrans   = "Selected Language";
String AlertLanguageTxtTrans      = "Still Under Maintenance,And Still Not Working On All Contents!";


//---------------PageFrontEnd-----------------
//---------------PageFrontEnd-----------------
String SearchTxtTrans            = "Search";
String SearchContentsTxtTrans    = "Search Contents";
String AllContentsShownTxtTrans  = "All Contents Shown";
String SearchShownTxtTrans       = "Search Contents Shown";
String QuizzTxtTrans             = "Quizz";
String BookmarkTxtTrans          = "Bookmark";




void TranslateSound() async{
  await AppLangTranslator.translate("Sound",to:SelectedLangAbv).then((TranslatedResult){
    if(TranslatedResult!=null){ 
     SoundTxtTrans=TranslatedResult;
    }
  });
}

void TranslateSettings() async{
  await AppLangTranslator.translate("Settings",to:SelectedLangAbv).then((TranslatedResult){
   if(TranslatedResult!=null){ 
    SettingsTxtTrans=TranslatedResult;
   }
  });
}

void TranslateOn() async{
  await AppLangTranslator.translate("On",to:SelectedLangAbv).then((TranslatedResult){
   if(TranslatedResult!=null){ 
    OnTxtTrans=TranslatedResult;
   }
  });
}

void TranslateOff() async{
  await AppLangTranslator.translate("Off",to:SelectedLangAbv).then((TranslatedResult){
   if(TranslatedResult!=null){ 
    OffTxtTrans=TranslatedResult;
   }
  });
}

void TranslateLight() async{
  await AppLangTranslator.translate("Light",to:SelectedLangAbv).then((TranslatedResult){
   if(TranslatedResult!=null){ 
    LightTxtTrans=TranslatedResult;
   }
  });
}

void TranslateDark() async{
  await AppLangTranslator.translate("Dark",to:SelectedLangAbv).then((TranslatedResult){
   if(TranslatedResult!=null){ 
    DarkTxtTrans=TranslatedResult;
   }
  });
}

void TranslateStartupUpdatePopup() async{
  await AppLangTranslator.translate("Startup Update Popup",to:SelectedLangAbv).then((TranslatedResult){
   if(TranslatedResult!=null){ 
    StartupUpdatePopupTxtTrans=TranslatedResult;
   }
  });
}

void TranslateTheme() async{
  await AppLangTranslator.translate("Theme",to:SelectedLangAbv).then((TranslatedResult){
   if(TranslatedResult!=null){ 
    ThemeTxtTrans=TranslatedResult;
   }
  });
}

void TranslateSelectedLanguage() async{
  await AppLangTranslator.translate("Selected Language",to:SelectedLangAbv).then((TranslatedResult){
   if(TranslatedResult!=null){ 
    SelectedLanguageTxtTrans=TranslatedResult;
   }
  });
}

//-----------------------------
//-----------------------------


void TranslateAllAppLang() async{ 

  TranslateWord("Still Under Maintenance,And Still Not Working On All Contents!").then          ((value){     if(value!=null){ AlertLanguageTxtTrans       =value; }    });


  //-------------Auth------------------
  //-------------Auth------------------
  TranslateWord("Are You Sure?").then          ((value){    if(value!=null){  AreYouSureTxtTrans       =value;  }   });
  TranslateWord("Yes").then                    ((value){    if(value!=null){  YesTxtTrans              =value;   }  });
  TranslateWord("No").then                     ((value){    if(value!=null){  NoTxtTrans               =value;  }   });
  TranslateWord("Logging You Out...").then     ((value){    if(value!=null){  LoggingYouOutTxtTrans    =value;   }  });
  TranslateWord("Closing The App!.").then      ((value){    if(value!=null){  ClosingTheAppTxtTrans    =value;    } });


  //-------------UserData------------------
  //-------------UserData------------------
  TranslateWord("Level").then                ((value){    if(value!=null){  LevelTxtTrans       =value;  }   });
  TranslateWord("Logged In By:").then        ((value){    if(value!=null){  LoggedInByTxtTrans  =value;  }   });

  //-------------Notification--------------
  //-------------Notification--------------
  TranslateWord("Notifications").then               ((value){   if(value!=null){   NotificationsTxtTrans         =value; }    });
  TranslateWord("No Notification Found").then       ((value){   if(value!=null){   NoNotificationFoundTxtTrans   =value;  }    });
  TranslateWord("Getting Notifications ...").then   ((value){   if(value!=null){   FetchingNotificationsTxtTrans =value;   }   });
  TranslateWord("Proceed").then                     ((value){   if(value!=null){   ProceedTxtTrans               =value;    }  });

  //-------------Gift----------------------
  //-------------Gift----------------------
  TranslateWord("No Gift Found").then       ((value){     if(value!=null){ NoGiftFoundTxtTrans  =value;   }   });
  TranslateWord("Getting Gifts...").then    ((value){     if(value!=null){ FetchingGiftTxtTrans =value;   }   });
  TranslateWord("Claim Gift!").then         ((value){     if(value!=null){ ClaimGiftTxtTrans    =value;   }   });
  TranslateWord("You Have Gifts That Need To Be Claimed Before Expiring").then         ((value){    if(value!=null){ UnclaimedGiftThatNeedToBeClaimedBeforeExpiringTxtTrans        =value;   }   });


  //-------------AppCode----------------------
  //-------------AppCode----------------------
  TranslateWord("App Code").then               ((value){   if(value!=null){  AppCodeTxtTrans         =value;   }   });
  TranslateWord("Want Full App Code").then    ((value){    if(value!=null){ WantTheFullCodeTxtTrans =value;    }  });
  TranslateWord("By Rating Us 5 Stars Code Will Stay Up To Date").then    ((value){    if(value!=null){ AppCodeRateTxtTrans     =value;   }   });

  //-------------Quizz----------------------
  //-------------Quizz----------------------
  TranslateWord("Test Me").then               ((value){  if(value!=null){   TestMeTxtTrans           =value;   }   });
  TranslateWord("Run Random Quizzes").then    ((value){  if(value!=null){   RunRandomQuizzesTxtTrans =value;   }   });

  //-------------UsersCode----------------------
  //-------------UsersCode----------------------
  TranslateWord("Codes By Users").then               ((value){  if(value!=null){   CodesByUserTxtTrans           =value;   }   });
  TranslateWord("Discover Users Code!").then         ((value){  if(value!=null){   DiscoverUsersCodeTxtTrans     =value;   }   });


  //-------------StartSelect----------------------
  //-------------StartSelect----------------------
  TranslateWord("Select Where You Want To Start!").then         ((value){    if(value!=null){ SelectWhereYouWantToStartTxtTrans     =value;  }    });


  //---------------PageFrontEnd-----------------
  //---------------PageFrontEnd-----------------
  TranslateWord("Search").then                  ((value){    if(value!=null){ SearchTxtTrans             =value;  }    });
  TranslateWord("Search Contents").then         ((value){    if(value!=null){ SearchContentsTxtTrans     =value;  }    });
  TranslateWord("All Contents Shown").then      ((value){    if(value!=null){ AllContentsShownTxtTrans   =value;  }    });
  TranslateWord("Search Contents Shown").then   ((value){    if(value!=null){ SearchShownTxtTrans        =value;  }    });
  TranslateWord("Quizz").then                   ((value){    if(value!=null){ QuizzTxtTrans              =value;  }    });
  TranslateWord("Bookmark").then                ((value){    if(value!=null){ BookmarkTxtTrans           =value;  }    });


  //---------------RateUI-----------------
  //---------------RateUI-----------------
  TranslateWord("Rate Us 5 Stars So We Can Keep Going And Upload New Contents,Codes And Quizzes").then                  ((value){  if(value!=null){   Rate5TxtTrans             =value;  }    });



  //-------------Drawer----------------
  //-------------Drawer----------------
  TranslateWord("Home").then          ((value){   if(value!=null){  HomeTxtTrans       =value; }    });
  TranslateWord("Profile").then       ((value){   if(value!=null){  ProfileTxtTrans    =value;  }   });
  TranslateWord("Settings").then      ((value){   if(value!=null){  SettingsTxtTrans   =value;   }  });
  TranslateWord("Leader Board").then   ((value){  if(value!=null){   LeaderBoardTxtTrans=value; }   });
  TranslateWord("Gift").then          ((value){   if(value!=null){  GiftTxtTrans       =value;   }  });
  TranslateWord("UI Samples").then     ((value){  if(value!=null){   UISamplesTxtTrans  =value;  }  });
  TranslateWord("Logout").then        ((value){   if(value!=null){  LogoutTxtTrans     =value;    } });
  TranslateWord("Update").then        ((value){   if(value!=null){  UpdateTxtTrans     =value;    } });

  await TranslateSound();
  await TranslateSettings();
  await TranslateOn();
  await TranslateOff();
  await TranslateStartupUpdatePopup();
  await TranslateTheme();
  await TranslateSelectedLanguage();
  await TranslateDark();
  await TranslateLight();
 
}







