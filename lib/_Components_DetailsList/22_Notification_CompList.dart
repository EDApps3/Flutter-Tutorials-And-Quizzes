import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String Notification_WithoutSound_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(NotifNoSound) To Be Runned\n\n"
    "-This Class Is Statefull As Notification is Sent On Button Click(Notification State Change)\n\n"
    "-We Need To Define A Variable (flutterLocalNotificationsPlugin) That Initialize The Notification Plugin\n\n"
    "-Class NotifNoSound Used To initialize The State Of The Notification\n\n"
    "-Now We Need To Create Notification Setting To Be Shown Android | IOS\n\n"
    "-As An Android Defined In AndSpec Variable and It Take ChannelID,ChannelName,ChannelDescription,Sound To Be Played,importance and priority\n\n"
    "-As An IOS It Take Sound If it gonna play (true->yes , false->no )\n\n"
    "-Now Using Android And IOS Variable To Initialize Notification Setting\n\n"
    "-Finally Set The Information That Gonna Show In The Notification,Time 0 Sent Directly,Notification Title, Notification Description,And Finally The Sound Set To Not Play Any Sound\n\n"
    "-Now AppState Class Extend its State From NotifNoSound\n\n"
    "-In AppState Class We Set a Method That Show Info When The Notification Is Clicked\n\n"
    "-In This Example It Show A Dialog Once The Notification Is Clicked\n\n"
    "-Also As This Class Is Statefull We Have To Set His State Once The App Is Loaded\n\n"
    "-And Also We Have To Initialize Its Notification Setting As An Android And IOS\n\n"
    "-Initialized In Android By The Variable AndSetting That Take The default Icon(App Icon)\n\n"
    "-As An Ios It Doesn't Take Anything\n\n"
    "-Finally Using Those To variable To Set The InitializationSetting And Declaring A new Object Of Notification To Be Shown\n\n"
    "-flutterLocalNotificationsPlugin.initialize Used To initialize And It Take Setting We Have Set And The Action That Gonna Happen Once The Notification Is Clicked(Here It Call Method That We Have Declared And Show A Dialog Up)\n\n "
    "-As Flutter Is Based On Widgets We Have To Build One\n\n "
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Now Body Contain A Centered Layout Covered By A Raised Button That Has An Value Text Shown In Child,Once The Button Is Clicked The Notification Will Be showm By Calling The Method We Declared Up\n\n";


List Notification_WithoutSound_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Have To Add To Yaml:\n",),
              Image.asset("Images/FLN.PNG"),
              CmpSubTitle(
                SubTitle:
                "\nDon't Forget To Get Packages!\n\n"
                    "When We Use The Code We Have To Import:\n"
                    "import 'package:flutter_local_notifications/flutter_local_notifications.dart';",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Initializing:",),
              Divider(),
              CmpSubTitle(SubTitle:"First We Need To Initialize Specification For Android|IOS :AppInfo, Sound, Priority, Importance\n",),
              CmpCode(
                CodeTxt:
                "\n\nvar AndSpec =\n"
                    " new AndroidNotificationDetails(\n"
                    "  'ChannelID',\n"
                    "  'ChannelName',\n"
                    "  'ChannelDescription',\n"
                    "  playSound: true | false,\n"
                    "  importance: Importance.\n"
                    "   Max | Min | low | High | Default\n"
                    "  priority: Priority.\n"
                    "   Max | Min | low | High | Default\n"
                    ");\n",
              ),
              CmpCode(
                CodeTxt:
                    "\n\nvar IOSSpec =\n"
                    "  new IOSNotificationDetails(\n"
                    "   presentSound: false | true \n"
                    ");"
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Notification Information:",),
              Divider(),
              CmpCode(
                  CodeTxt:
                      "\n\nawait flutterLocalNotificationsPlugin.show(\n"
                      "  0,\n"
                      "  'Notification Title',\n"
                      "  'Notification Description',\n"
                      "  platformChannelSpecifics,\n"
                      "  payload: 'No_Sound',\n"
                      ");\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"When Notification Pressed:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "\n\nFuture onSelectNotification(String payload) async {\n"
                    "  //Do Action \n"
                    "}\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Settings:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nIcon (@mipmap/ic_launcher is the Default App Icon) To Be Shown:\n\n",),
              CmpCode(
                CodeTxt:
                    "var initializationSettingsAndroid = \n"
                    "new AndroidInitializationSettings(\n"
                    " '@mipmap/ic_launcher',\n"
                    ");\n\n"
                    "var initializationSettingsIOS = \n"
                    "new IOSInitializationSettings();\n\n"
                    "var initializationSettings = new InitializationSettings(\n"
                    " initializationSettingsAndroid,\n"
                    " initializationSettingsIOS,\n"
                    ");\n\n",
              ),
            ]
        ),
      ),
    ),
  ),

];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------


String Notification_DefaultSound_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(NotifDefSound) To Be Runned\n\n"
    "-This Class Is Statefull As Notification is Sent On Button Click(Notification State Change)\n\n"
    "-We Need To Define A Variable (flutterLocalNotificationsPlugin) That Initialize The Notification Plugin\n\n"
    "-Class NotifDefSound Used To initialize The State Of The Notification\n\n"
    "-Now We Need To Create Notification Setting To Be Shown Android | IOS\n\n"
    "-As An Android Defined In AndSpec Variable and It Take ChannelID,ChannelName,ChannelDescription,Sound To Be Played,importance and priority\n\n"
    "-As An IOS It Take Sound If it gonna play (true->yes , false->no )\n\n"
    "-Now Using Android And IOS Variable To Initialize Notification Setting\n\n"
    "-Finally Set The Information That Gonna Show In The Notification,0 Sent Directly,Notification Title, Notification Description,importance and priority\n\n"
    "-payload:Default_Sound Set The Default Sound"
    "-Now AppState Class Extend its State From NotifDefSound\n\n"
    "-In AppState Class We Set a Method That Show Info When The Notification Is Clicked\n\n"
    "-In This Example It Show A Dialog Once The Notification Is Clicked\n\n"
    "-Also As This Class Is Statefull We Have To Set His State Once The App Is Loaded\n\n"
    "-And Also We Have To Initialize Its Notification Setting As An Android And IOS\n\n"
    "-Initialized In Android By The Variable AndSetting That Take The default Icon(App Icon)\n\n"
    "-As An Ios It Doesn't Take Anything\n\n"
    "-Finally Using Those To variable To Set The InitializationSetting And Declaring A new Object Of Notification To Be Shown\n\n"
    "-flutterLocalNotificationsPlugin.initialize Used To initialize And It Take Setting We Have Set And The Action That Gonna Happen Once The Notification Is Clicked(Here It Call Method That We Have Declared And Show A Dialog Up)\n\n "
    "-As Flutter Is Based On Widgets We Have To Build One\n\n "
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Now Body Contain A Centered Layout Covered By A Raised Button That Has An Value Text Shown In Child,Once The Button Is Clicked The Notification Will Be showm By Calling The Method We Declared Up\n\n";

List Notification_DefaultSound_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Have To Add To Yaml:\n",),
              Image.asset("Images/FLN.PNG"),
              CmpSubTitle(
                SubTitle:
                "\nDon't Forget To Get Packages!\n\n"
                    "When We Use The Code We Have To Import:\n"
                    "import 'package:flutter_local_notifications/flutter_local_notifications.dart';",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Initializing:",),
              Divider(),
              CmpSubTitle(SubTitle:"First We Need To Initialize Specification For Android|IOS :AppInfo, Sound, Priority, Importance\n",),
              CmpCode(
                CodeTxt:
                "\n\nvar AndSpec =\n"
                    " new AndroidNotificationDetails(\n"
                    "  'ChannelID',\n"
                    "  'ChannelName',\n"
                    "  'ChannelDescription',\n"
                    "  playSound: true | false,\n"
                    "  importance: Importance.\n"
                    "   Max | Min | low | High | Default\n"
                    "  priority: Priority.\n"
                    "   Max | Min | low | High | Default\n"
                    ");\n",
              ),
              CmpCode(
                  CodeTxt:
                  "\n\nvar IOSSpec =\n"
                      "  new IOSNotificationDetails(\n"
                      "   presentSound: false | true \n"
                      ");"
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Notification Information:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "\n\nawait flutterLocalNotificationsPlugin.show(\n"
                    "  0,\n"
                    "  'Notification Title',\n"
                    "  'Notification Description',\n"
                    "  platformChannelSpecifics,\n"
                    "  payload: 'Default_Sound',\n"
                    ");\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"When Notification Pressed:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "\n\nFuture onSelectNotification(String payload) async {\n"
                    "  //Do Action \n"
                    "}\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Settings:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nIcon (@mipmap/ic_launcher is the Default App Icon) To Be Shown:\n\n",),
              CmpCode(
                CodeTxt:
                "var initializationSettingsAndroid = \n"
                    "new AndroidInitializationSettings(\n"
                    " '@mipmap/ic_launcher',\n"
                    ");\n\n"
                    "var initializationSettingsIOS = \n"
                    "new IOSInitializationSettings();\n\n"
                    "var initializationSettings = new InitializationSettings(\n"
                    " initializationSettingsAndroid,\n"
                    " initializationSettingsIOS,\n"
                    ");\n\n",
              ),
            ]
        ),
      ),
    ),
  ),

];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------



String Notification_CustomSound_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(NotifCustSound) To Be Runned\n\n"
    "-This Class Is Statefull As Notification is Sent On Button Click(Notification State Change)\n\n"
    "-We Need To Define A Variable (flutterLocalNotificationsPlugin) That Initialize The Notification Plugin\n\n"
    "-Class NotifCustSound Used To initialize The State Of The Notification\n\n"
    "-Now We Need To Create Notification Setting To Be Shown Android | IOS\n\n"
    "-As An Android Defined In AndSpec Variable and It Take ChannelID,ChannelName,ChannelDescription,Sound To Be Played(tone,Custom Sound Added),importance and priority\n\n"
    "-As An IOS It Take Sound If it gonna play (true->yes , false->no )\n\n"
    "-Now Using Android And IOS Variable To Initialize Notification Setting\n\n"
    "-Finally Set The Information That Gonna Show In The Notification,0 Sent Directly,Notification Title, Notification Description,And Finally The Sound Set To Not Play Any Sound\n\n"
    "-Now AppState Class Extend its State From NotifCustSound\n\n"
    "-In AppState Class We Set a Method That Show Info When The Notification Is Clicked\n\n"
    "-In This Example It Show A Dialog Once The Notification Is Clicked\n\n"
    "-Also As This Class Is Statefull We Have To Set His State Once The App Is Loaded\n\n"
    "-And Also We Have To Initialize Its Notification Setting As An Android And IOS\n\n"
    "-Initialized In Android By The Variable AndSetting That Take The default Icon(App Icon)\n\n"
    "-As An Ios It Doesn't Take Anything\n\n"
    "-Finally Using Those To variable To Set The InitializationSetting And Declaring A new Object Of Notification To Be Shown\n\n"
    "-flutterLocalNotificationsPlugin.initialize Used To initialize And It Take Setting We Have Set And The Action That Gonna Happen Once The Notification Is Clicked(Here It Call Method That We Have Declared And Show A Dialog Up)\n\n "
    "-As Flutter Is Based On Widgets We Have To Build One\n\n "
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Now Body Contain A Centered Layout Covered By Raised Button That Has An Value Text Shown In Child,Once The Button Is Clicked The Notification Will Be showm By Calling The Method We Declared Up\n\n";


List Notification_CustomSound_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Have To Add To Yaml:\n",),
              Image.asset("Images/FLN.PNG"),
              CmpSubTitle(
                SubTitle:
                "\nDon't Forget To Get Packages!\n\n"
                    "When We Use The Code We Have To Import:\n"
                    "import 'package:flutter_local_notifications/flutter_local_notifications.dart';",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Load Tone:",),
              Divider(),
              CmpSubTitle(SubTitle:"First We Need To Create A Package(Folder) raw Into Android > app > main > res then Put The Tone Into It \n",),
              Image.asset("Images/Tone.PNG"),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Initializing:",),
              Divider(),
              CmpSubTitle(SubTitle:"First We Need To Initialize Specification For Android|IOS :AppInfo, Sound, Priority, Importance\n",),
              CmpCode(
                CodeTxt:
                "\n\nvar AndSpec =\n"
                    " new AndroidNotificationDetails(\n"
                    "  'ChannelID',\n"
                    "  'ChannelName',\n"
                    "  'ChannelDescription',\n"
                    "  playSound: true | false,\n"
                    "  importance: Importance.\n"
                    "   Max | Min | low | High | Default\n"
                    "  priority: Priority.\n"
                    "   Max | Min | low | High | Default\n"
                    ");\n",
              ),
              CmpCode(
                  CodeTxt:
                  "\n\nvar IOSSpec =\n"
                      "  new IOSNotificationDetails(\n"
                      "   presentSound: false | true \n"
                      ");"
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Notification Information:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "\n\nawait flutterLocalNotificationsPlugin.show(\n"
                    "  0,\n"
                    "  'Notification Title',\n"
                    "  'Notification Description',\n"
                    "  platformChannelSpecifics,\n"
                    "  payload: 'Custom_Sound',\n"
                    ");\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"When Notification Pressed:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "\n\nFuture onSelectNotification(String payload) async {\n"
                    "  //Do Action \n"
                    "}\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Settings:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nIcon (@mipmap/ic_launcher is the Default App Icon) To Be Shown:\n\n",),
              CmpCode(
                CodeTxt:
                "var initializationSettingsAndroid = \n"
                    "new AndroidInitializationSettings(\n"
                    " '@mipmap/ic_launcher',\n"
                    ");\n\n"
                    "var initializationSettingsIOS = \n"
                    "new IOSInitializationSettings();\n\n"
                    "var initializationSettings = new InitializationSettings(\n"
                    " initializationSettingsAndroid,\n"
                    " initializationSettingsIOS,\n"
                    ");\n\n",
              ),
            ]
        ),
      ),
    ),
  ),
];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------



String Notification_CustomIcon_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(NotifCustIcon) To Be Runned\n\n"
    "-This Class Is Statefull As Notification is Sent On Button Click(Notification State Change)\n\n"
    "-We Need To Define A Variable (flutterLocalNotificationsPlugin) That Initialize The Notification Plugin\n\n"
    "-Class NotifCustIcon Used To initialize The State Of The Notification\n\n"
    "-Now We Need To Create Notification Setting To Be Shown Android | IOS\n\n"
    "-As An Android Defined In AndSpec Variable and It Take ChannelID,ChannelName,ChannelDescription,Sound To Be Played,importance and priority\n\n"
    "-As An IOS It Take Sound If it gonna play (true->yes , false->no )\n\n"
    "-Now Using Android And IOS Variable To Initialize Notification Setting\n\n"
    "-Finally Set The Information That Gonna Show In The Notification,Time 0 Sent Directly,Notification Title, Notification Description,Sound,importance And priority\n\n"
    "-Now AppState Class Extend its State From NotifCustIcon\n\n"
    "-In AppState Class We Set a Method That Show Info When The Notification Is Clicked\n\n"
    "-In This Example It Show A Dialog Once The Notification Is Clicked\n\n"
    "-Also As This Class Is Statefull We Have To Set His State Once The App Is Loaded\n\n"
    "-And Also We Have To Initialize Its Notification Setting As An Android And IOS\n\n"
    "-Initialized In Android By The Variable AndSetting That Take The Custom Icon(App Icon,Added)\n\n"
    "-As An Ios It Doesn't Take Anything\n\n"
    "-Finally Using Those To variable To Set The InitializationSetting And Declaring A new Object Of Notification To Be Shown\n\n"
    "-flutterLocalNotificationsPlugin.initialize Used To initialize And It Take Setting We Have Set And The Action That Gonna Happen Once The Notification Is Clicked(Here It Call Method That We Have Declared And Show A Dialog Up)\n\n "
    "-As Flutter Is Based On Widgets We Have To Build One\n\n "
    "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
    "-As An Home It Contain A Scaffold That Allow Us To Create The Body Of The Page (All Widgets That Appear)\n\n"
    "-Now Body Contain A Centered Layout Covered By Raised Button That Has An Value Text Shown In Child,Once The Button Is Clicked The Notification Will Be showm By Calling The Method We Declared Up\n\n";


List Notification_CustomIcon_list =[
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Have To Add To Yaml:\n",),
              Image.asset("Images/FLN.PNG"),
              CmpSubTitle(
                SubTitle:
                "\nDon't Forget To Get Packages!\n\n"
                    "When We Use The Code We Have To Import:\n"
                    "import 'package:flutter_local_notifications/flutter_local_notifications.dart';",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Load Icon:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Have To Add Into drawable ( android > app > src > main > res > drawable) The Icon needed\n",),
              Image.asset("Images/CustIcon.PNG"),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Initializing:",),
              Divider(),
              CmpSubTitle(SubTitle:"First We Need To Initialize Specification For Android|IOS :AppInfo, Sound, Priority, Importance\n",),
              CmpCode(
                CodeTxt:
                "\n\nvar AndSpec =\n"
                    " new AndroidNotificationDetails(\n"
                    "  'ChannelID',\n"
                    "  'ChannelName',\n"
                    "  'ChannelDescription',\n"
                    "  playSound: true | false,\n"
                    "  importance: Importance.\n"
                    "   Max | Min | low | High | Default\n"
                    "  priority: Priority.\n"
                    "   Max | Min | low | High | Default\n"
                    ");\n",
              ),
              CmpCode(
                  CodeTxt:
                  "\n\nvar IOSSpec =\n"
                      "  new IOSNotificationDetails(\n"
                      "   presentSound: false | true \n"
                      ");"
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Notification Information:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "\n\nawait flutterLocalNotificationsPlugin.show(\n"
                    "  0,\n"
                    "  'Notification Title',\n"
                    "  'Notification Description',\n"
                    "  platformChannelSpecifics,\n"
                    "  payload: 'Custom_Sound',\n"
                    ");\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"When Notification Pressed:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "\n\nFuture onSelectNotification(String payload) async {\n"
                    "  //Do Action \n"
                    "}\n",
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Settings:",),
              Divider(),
              CmpSubTitle(SubTitle:"\nIcon (app_icon is the Custom Icon) To Be Shown:\n\n",),
              CmpCode(
                CodeTxt:
                    "var initializationSettingsAndroid = \n"
                    "new AndroidInitializationSettings(\n"
                    " 'app_icon',\n"
                    ");\n\n"
                    "var initializationSettingsIOS = \n"
                    "new IOSInitializationSettings();\n\n"
                    "var initializationSettings = new InitializationSettings(\n"
                    " initializationSettingsAndroid,\n"
                    " initializationSettingsIOS,\n"
                    ");\n\n"
              ),
            ]
        ),
      ),
    ),
  ),

];


//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------
//---------------------------------------------------------