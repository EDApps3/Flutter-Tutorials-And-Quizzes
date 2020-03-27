import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var FireBase_Setup_CompList =[
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
              CmpSubTitle(SubTitle:"Heading To:\nhttps://firebase.google.com\n\n",),
              CmpSubTitle(SubTitle:"SignIn If You Already Have An Account,SignUp If Not\n\n",),
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
              CmpTitle(Title:"Creating Project:",),
              Divider(),
              CmpSubTitle(SubTitle:"Go To Console Or Head To:\nhttps://console.firebase.google.com\n\n",),
              CmpSubTitle(SubTitle:"After Heading Create A New Project\n\n",),
              Image.asset("Images/F_1.PNG"),
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
              CmpTitle(Title:"Set Project Name:",),
              Divider(),
              CmpSubTitle(SubTitle:"Insert Your Project Name And Press Continue\n\n",),
              Image.asset("Images/F_2.PNG"),
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
              CmpTitle(Title:"Analytics:",),
              Divider(),
              CmpSubTitle(SubTitle:"You Can Enable Or Disable Analytics,Then Press Continue\n\n",),
              Image.asset("Images/F_3.PNG"),
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
              CmpTitle(Title:"Wait Project Creation:",),
              Divider(),
              CmpSubTitle(SubTitle:"Might Take Few Seconds\n\n",),
              Image.asset("Images/F_4.PNG"),
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
              CmpTitle(Title:"Project Created:",),
              Divider(),
              CmpSubTitle(SubTitle:"Press Continue\n\n",),
              Image.asset("Images/F_5.PNG"),
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
              CmpTitle(Title:"Migrating To Android:",),
              Divider(),
              CmpSubTitle(SubTitle:"Choose Android Icon\n\n",),
              Image.asset("Images/F_6.PNG"),
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
              CmpTitle(Title:"Insert Information:",),
              Divider(),
              CmpSubTitle(SubTitle:"Information Including Package Name And NickName\n\n",),
              Image.asset("Images/F_7.PNG"),
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
              CmpTitle(Title:"Getting Package Name:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To Android Manifest\n\n",),
              Image.asset("Images/F_8.PNG"),
              Divider(),
              Image.asset("Images/F_9.PNG"),
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
              CmpTitle(Title:"Configuration:",),
              Divider(),
              CmpSubTitle(SubTitle:"Download Configuration\n\n",),
              Image.asset("Images/F_10.PNG"),
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
              CmpTitle(Title:"Add Configuration:",),
              Divider(),
              CmpSubTitle(SubTitle:"Place Into root>app\n\n",),
              Image.asset("Images/F_11.PNG"),
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
              CmpTitle(Title:"Gradle Inside Android App:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To Android Gradle Inside App\n\n",),
              Image.asset("Images/F_12.PNG"),
              CmpSubTitle(SubTitle:"Add In The End Of File:\napply plugin: 'com.google.gms.google-services'\n\n",),
              Image.asset("Images/F_13.PNG"),
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
              CmpTitle(Title:"Gradle Inside Android:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To Android Gradle Inside Android\n\n",),
              Image.asset("Images/F_14.PNG"),
              CmpSubTitle(SubTitle:"Add In Dependencies:\nclasspath 'com.google.gms:google-services:4.0.1'\n\n",),
              Image.asset("Images/F_15.PNG"),
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
              CmpTitle(Title:"Detection:",),
              Divider(),
              CmpSubTitle(SubTitle:"Press Next And Run Your Project To Detect The App Run\n\n",),
              Image.asset("Images/F_16.PNG"),
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
              CmpTitle(Title:"Detection Completition:",),
              Divider(),
              CmpSubTitle(SubTitle:"After That App Run Detection Should Be Complete\n\n",),
              Image.asset("Images/F_17.PNG"),
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
              CmpTitle(Title:"Configure Analytics:",),
              Divider(),
              Image.asset("Images/F_18.PNG"),
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
              CmpTitle(Title:"Dashboard:",),
              Divider(),
              CmpSubTitle(SubTitle:"You Can Check Online Users Within Time\n\n",),
              Image.asset("Images/F_19.PNG"),
              Divider(),
              Image.asset("Images/F_20.PNG"),

            ]
        ),
      ),
    ),
  ),
];

//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------


var FireBase_SetupSHA1_CompList =[
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
              CmpTitle(Title:"SHA FingerPrint:",),
              Divider(),
              CmpSubTitle(SubTitle:"Certain Google Play services (such as Google Sign-in and App Invites) require you to provide the SHA of your signing certificate so we can create an OAuth2 client and API key for your app\n\n",),
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
              CmpTitle(Title:"Note:",),
              Divider(),
              CmpSubTitle(SubTitle:"You Will Need More Than SHA For:\n-Debug App\n-Release App\n-PlayStore Sign App\n\n",),
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
              CmpTitle(Title:"Getting Debug SHA:(Image Scrollable)",),
              Divider(),
              CmpSubTitle(SubTitle:"A SHA That Will Work Only For Your Debug App,Open Your Terminal And Type:\n\n",),
              CmpCode(CodeTxt:'keytool -list -v -keystore "C:\\Users\\YourUserName\\.android\\debug.keystore" -alias androiddebugkey -storepass android -keypass android\n\n'),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                  Image.asset(
                      "Images/SetupSHA_Debug.PNG",
                    width:450,
                    height:200,
                  ),
              )

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
              CmpTitle(Title:"Getting Release SHA:(Image Scrollable)",),
              Divider(),
              CmpSubTitle(SubTitle:"A SHA That Will Work Only For Your Release App,Open Your Terminal And Type(Noting That C:/KeyStore/key.jks Is My Key Used To Sign the Release App Location,Use Your Own ):\n\n",),
              CmpCode(CodeTxt:'keytool -list -v -keystore C:/KeyStore/key.jks -alias key\n\n'),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                Image.asset(
                  "Images/SetupSHA_Release.PNG",
                  width:450,
                  height:200,
                ),
              )
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
              CmpTitle(Title:"Getting PlayStore SHA:(Image Scrollable)",),
              Divider(),
              CmpSubTitle(SubTitle:"A SHA That Will Work Only For Your Installed PlayStore App,Head To Your PlayConsole And Open Realease Management Then App Signing:\n\n",),
              Image.asset("Images/SetupSHA_PS1.PNG"),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child:
                Image.asset(
                  "Images/SetupSHA_PS2.PNG",
                  width:450,
                  height:200,
                ),
              )
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
              CmpTitle(Title:"Save To FireBase:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To Your FireBase Project Then Project Setting:\n\n",),
              Image.asset("Images/SetupSHA_FireBase1.PNG"),
              CmpSubTitle(SubTitle:"Start Adding FingerPrint:\n\n",),
              Image.asset("Images/SetupSHA_FireBase2.PNG"),
              CmpSubTitle(SubTitle:"Paste The SHA And Save:\n\n",),
              Image.asset("Images/SetupSHA_FireBase3.PNG"),
              CmpSubTitle(SubTitle:"Final Result:\n\n",),
              Image.asset("Images/SetupSHA_FireBase4.PNG"),
            ]
        ),
      ),
    ),
  ),
];

//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------


var FireBase_Setup_Email_CompList =[
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
              CmpTitle(Title:"Used Authentication Packages:",),
              Divider(),
              CmpSubTitle(SubTitle:"Add To Yaml:\n\n",),
              Image.asset("Images/F_21.PNG"),
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
              CmpTitle(Title:"Getting Into Auth:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To Your Project And Select Authentication\n\n",),
              Image.asset("Images/Auth_1.PNG"),
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
              CmpTitle(Title:"Set SignUp method:",),
              Divider(),
              CmpSubTitle(SubTitle:"Where You Have To Choose A Method\n\n",),
              Image.asset("Images/Auth_2.PNG"),
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
              CmpTitle(Title:"Email method:",),
              Divider(),
              CmpSubTitle(SubTitle:"Choose Email\n\n",),
              Image.asset("Images/Auth_3.PNG"),
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
              CmpTitle(Title:"Email Configuration:",),
              Divider(),
              CmpSubTitle(SubTitle:"Configure Email Setting Then Save It\n\n",),
              Image.asset("Images/Auth_4.PNG"),
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
              CmpTitle(Title:"Creating User Class:",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Know User ID\n\n",),
              CmpCode(
                CodeTxt:
                "class User {\n"
                " final String uid;\n\n"
                " User({\n"
                "  this.uid\n"
                " });\n\n"
                "}",
              )
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
              CmpTitle(Title:"Knowing If Logged In:",),
              Divider(),
              CmpSubTitle(SubTitle:"Once App Started We Need To Check If The User Is Logged In Or Logged Out\n\n",),
              CmpCode(
                CodeTxt:
                "class Check extends StatelessWidget {\n"
                " @override\n"
                " Widget build(BuildContext context){\n"
                "  final user = Provider.of<User>(context);\n"
                "   if (user == null){\n"
                "    return AuthenticatePage();\n"
                "   } else {\n"
                "    return HomePage();\n"
                "   }\n"
                " }\n"
                "}\n",
              )
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
              CmpTitle(Title:"Authentication:",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Creating Auth Variable\n\n",),
              CmpCode(CodeTxt:"final FirebaseAuth _auth = FirebaseAuth.instance;\n\n"),

              CmpSubTitle(SubTitle:"2-Saving User ID Into User Class From FireBase\n\n",),
              CmpCode(
                  CodeTxt:
                  "User _userFromFirebaseUser(FirebaseUser user) {\n"
                  " return user != null ?\n"
                  "  User(uid: user.uid) : null;\n"
                  "}\n\n"
              ),

              CmpSubTitle(SubTitle:"2-Storing User On Each Auth(LoginIn,Logout)\n\n",),
              CmpCode(
                  CodeTxt:
                  "Stream<User> get user {\n"
                  " return _auth.onAuthStateChanged.map(_userFromFirebaseUser);\n"
                  "}\n\n"
              ),


              CmpSubTitle(SubTitle:"3-SignIn\n\n",),
              CmpCode(
                  CodeTxt:
                  "Future signIn(String email, String password) async {\n"
                  " try {\n"
                  "  AuthResult result = await _auth.signInWithEmailAndPassword(\n"
                  "    email: email,\n"
                  "    password: password\n"
                  "  );\n"
                  "  FirebaseUser user = result.user;\n"
                  "  return user;\n"
                  " } catch (error) {\n"
                  "   print(error.toString());\n"
                  "   return null;\n"
                  " }\n"
                  "}\n\n"
              ),


              CmpSubTitle(SubTitle:"3-SignUp\n\n",),
              CmpCode(
                  CodeTxt:
                  "Future signUp(String email, String password) async {\n"
                      " try {\n"
                      "  AuthResult result = await _auth.createUserWithEmailAndPassword(\n"
                      "    email: email,\n"
                      "    password: password\n"
                      "  );\n"
                      "  FirebaseUser user = result.user;\n"
                      "  return _userFromFirebaseUser(user);\n"
                      " } catch (error) {\n"
                      "   print(error.toString());\n"
                      "   return null;\n"
                      " }\n"
                      "}\n\n"
              ),


              CmpSubTitle(SubTitle:"4-SignOut\n\n",),
              CmpCode(
                  CodeTxt:
                  "Future signOut() async {\n"
                  " try {\n"
                  "  return await _auth.signOut();\n"
                  " } catch (error) {\n"
                  "   print(error.toString());\n"
                  "   return null;\n"
                  " }\n"
                  "}\n\n"
              ),


              CmpSubTitle(SubTitle:"4-SignOut\n\n",),
              CmpCode(
                  CodeTxt:
                  "Future ForgetPass(String Email) async {\n"
                  " return _auth.sendPasswordResetEmail(\n"
                  "  email:Email\n"
                  " );\n"
                  "}\n\n"
              ),

              CmpSubTitle(SubTitle:"5-ForgetPass\n\n",),
              CmpCode(
                  CodeTxt:
                  "Future ForgetPass(String Email) async {\n"
                  "  return _auth.sendPasswordResetEmail(\n"
                  "    email:Email\n"
                  "   );\n"
                  "}\n\n"
              ),





            ]
        ),
      ),
    ),
  ),
];

//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------


var FireBase_Setup_Google_CompList =[
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
              CmpTitle(Title:"Used Authentication Packages:",),
              Divider(),
              CmpSubTitle(SubTitle:"Add To Yaml:\n\n",),
              Image.asset("Images/F_21.PNG"),
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
              CmpTitle(Title:"Getting Into Auth:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To Your Project And Select Authentication\n\n",),
              Image.asset("Images/Auth_1.PNG"),
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
              CmpTitle(Title:"Set SignUp method:",),
              Divider(),
              CmpSubTitle(SubTitle:"Where You Have To Choose A Method\n\n",),
              Image.asset("Images/Auth_2.PNG"),
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
              CmpTitle(Title:"Google method:",),
              Divider(),
              CmpSubTitle(SubTitle:"Choose Google\n\n",),
              Image.asset("Images/AG1.PNG"),
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
              CmpTitle(Title:"Google Configuration:",),
              Divider(),
              CmpSubTitle(SubTitle:"Configure Google Setting Then Save It(Name And Support Email)\n\n",),
              Image.asset("Images/AG2.PNG"),
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
              CmpTitle(Title:"Google API:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To:\nhttps://console.developers.google.com\n\n\n",),
              CmpSubTitle(SubTitle:"And Select project\n",),
              Image.asset("Images/AG3.PNG"),
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
              CmpTitle(Title:"Select The Project:",),
              Divider(),
              CmpSubTitle(SubTitle:"Select Project That We Have Created\n",),
              Image.asset("Images/AG4.PNG"),
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
              CmpTitle(Title:"Project Setting:",),
              Divider(),
              Image.asset("Images/AG5.PNG"),
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
              CmpTitle(Title:"Project Authentication:",),
              Divider(),
              CmpSubTitle(SubTitle:"Fill The Form And Apply For verification\n",),
              Image.asset("Images/AG6.PNG"),
              Image.asset("Images/AG7.PNG"),
              Image.asset("Images/AG8.PNG"),
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
              CmpTitle(Title:"Creating FireBase user:",),
              Divider(),
              CmpCode(CodeTxt:"FirebaseUser _user;"),
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
              CmpTitle(Title:"Google SignIn:",),
              Divider(),
              CmpCode(CodeTxt:
              "Future<FirebaseUser> signInWithGoogle() async {\n"
              " final curUser=_user?? await FirebaseAuth.instance.currentUser();\n\n"
              " if(curUser != null ){\n"
              "  return curUser;\n"
              " }\n\n"
              " final googleuser = await googleSignIn.signIn();\n"
              " final  googleAuth = await googleuser.authentication;\n\n"
              " final AuthCredential credential = GoogleAuthProvider.getCredential(\n"
              "  accessToken: googleAuth.accessToken,\n"
              "  idToken: googleAuth.idToken,\n"
              " );\n\n"
              " final user = (await _auth.signInWithCredential(credential)).user;\n"
              " setState(() {\n"
              "  _user=user;\n"
              " });\n"
              " return user;\n"
              "}\n"
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
              CmpTitle(Title:"Google SignIn:",),
              Divider(),
              CmpCode(CodeTxt:
                  "void signOutGoogle() async {\n"
                  " _user=null;\n"
                  " await _auth.signOut();\n"
                  " await googleSignIn.signOut();\n"
                  "}\n"
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
              CmpTitle(Title:"Google Display Data:",),
              Divider(),
              CmpTitle(Title:"_user Contain All The Data Returned From Google Account\n\n",),
              CmpTitle(Title:"Displaying Name:\n",),
              CmpCode(CodeTxt:"_user.displayName\n",),
              CmpTitle(Title:"\nDisplaying Email:\n",),
              CmpCode(CodeTxt:"_user.email\n",),
              CmpTitle(Title:"\nDisplaying Profile Picture:\n",),
              CmpCode(CodeTxt:"_user.photoUrl\n",)
            ]
        ),
      ),
    ),
  ),
];

//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------


var FireBase_Setup_Facebook_CompList =[
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
              CmpTitle(Title:"Used Authentication Packages:",),
              Divider(),
              CmpSubTitle(SubTitle:"Add To Yaml:\n\n",),
              Image.asset("Images/F_21.PNG"),
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
              CmpTitle(Title:"Create Facebook App:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To:\nhttps://developers.facebook.com/\n\n",),
              CmpSubTitle(SubTitle:"Select Create App\n",),
              Image.asset("Images/FB_1.PNG"),
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
              CmpTitle(Title:"Facebook App Info:",),
              Divider(),
              CmpSubTitle(SubTitle:"Set App Name And Email Contact Then CreateAppID\n",),
              Image.asset("Images/FB_2.PNG"),
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
              CmpTitle(Title:"Add Facebook Login:",),
              Divider(),
              CmpSubTitle(SubTitle:"Add Facebook Login Product\n",),
              Image.asset("Images/FB_3.PNG"),
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
              CmpTitle(Title:"Select Platform:",),
              Divider(),
              CmpSubTitle(SubTitle:"Android\n",),
              Image.asset("Images/FB_4.PNG"),
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
              CmpTitle(Title:"Set PackageName:",),
              Divider(),
              CmpSubTitle(SubTitle:"To Get Package Name Head To Manifest.xml\n",),
              CmpSubTitle(SubTitle:"Scroll To Package Name And Set It Then Save And Continue\n",),
              Image.asset("Images/FB_5.PNG"),
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
              CmpTitle(Title:"Generating HashKeys:",),
              Divider(),
              CmpSubTitle(SubTitle:"head to:\nhttps://tomeko.net/online_tools/hex_to_base64.php\n\n",),
              CmpSubTitle(SubTitle:"Convert SHA1 Obtained From Previous Tutorial And PLace Them(BASE64) Save And Continue\n",),
              Image.asset("Images/FB_6.PNG"),
              Image.asset("Images/FB_7.PNG"),
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
              CmpTitle(Title:"Enable SignOn:",),
              Divider(),
              Image.asset("Images/FB_8.PNG"),
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
              CmpTitle(Title:"Add strings.xml:",),
              Divider(),
              Image.asset("Images/FB_9.PNG"),
              CmpSubTitle(SubTitle:"Use The Following Informations",),
              Image.asset("Images/FB_10.PNG"),
              CmpSubTitle(SubTitle:"To Obtain:",),
              Image.asset("Images/FB_11.PNG"),
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
              CmpTitle(Title:"Head To Manifest:",),
              Divider(),
              Image.asset("Images/FB_12.PNG"),
              CmpSubTitle(SubTitle:"Add Internet Permission",),
              Image.asset("Images/FB_13.PNG"),
              CmpSubTitle(SubTitle:"Add This Code:",),
              Image.asset("Images/FB_14.PNG"),
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
              CmpTitle(Title:"Head To Setting >Basic:",),
              Divider(),
              Image.asset("Images/FB_15.PNG"),
              CmpSubTitle(SubTitle:"Here Is The App Info:",),
              Image.asset("Images/FB_16.PNG"),
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
              CmpTitle(Title:"Getting Into Auth:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To Your Project And Select Authentication\n\n",),
              Image.asset("Images/Auth_1.PNG"),
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
              CmpTitle(Title:"Set SignUp method:",),
              Divider(),
              CmpSubTitle(SubTitle:"Where You Have To Choose A Method\n\n",),
              Image.asset("Images/Auth_2.PNG"),
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
              CmpTitle(Title:"Facebook method:",),
              Divider(),
              CmpSubTitle(SubTitle:"Choose Facebook\n\n",),
              Image.asset("Images/FB17.PNG"),
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
              CmpTitle(Title:"Facebook Configuration:",),
              Divider(),
              CmpSubTitle(SubTitle:"Configure Facebook Setting Then Save It(Getted From Facebook Settings>Basic Up)\n\n",),
              Image.asset("Images/FB18.PNG"),
              CmpSubTitle(SubTitle:"Copy The OAuth Link\n\n",),

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
              CmpTitle(Title:"Paste FB Oauth:",),
              Divider(),
              CmpSubTitle(SubTitle:"Head To FacebookLogin > settings\n\n",),
              Image.asset("Images/FB_19.PNG"),
              CmpSubTitle(SubTitle:"Paste The Link Provided From Firebase\n\n",),
              Image.asset("Images/FB_20.PNG"),
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
              CmpTitle(Title:"Creating Variables:",),
              Divider(),
              CmpSubTitle(SubTitle:"Variable To Contain Data Returned From Facebook\n",),
              CmpCode(CodeTxt:"var profileData;\n\n"),
              CmpSubTitle(SubTitle:"Variable To Login Using Facebook\n",),
              CmpCode(CodeTxt:"var facebookLogin = FacebookLogin();"),
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
              CmpTitle(Title:"On Login Change:",),
              Divider(),
              CmpSubTitle(SubTitle:"Used When There Is A Login Or Logout,Used To Change User Login Data And Know If Logged In\n",),
              CmpCode(
                  CodeTxt:
                  "void onLoginStatusChanged(bool isLoggedIn, {profileData}) {\n"
                  " setState(() {\n"
                  "  this.isLoggedIn = isLoggedIn;\n"
                  "  this.profileData = profileData;\n"
                  " });\n"
                  "}\n"
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
              CmpTitle(Title:"Login:",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Login User\n",),
              CmpCode(
                  CodeTxt:
                  "void initiateFacebookLogin() async {\n"
                  " var facebookLoginResult = await facebookLogin.logIn(['email']);\n\n"

                  " switch (facebookLoginResult.status) {\n"
                  "  case FacebookLoginStatus.error:\n"
                  "   onLoginStatusChanged(false);\n"
                  "   break;\n"
                  "  case FacebookLoginStatus.cancelledByUser:\n"
                  "   onLoginStatusChanged(false);\n"
                  "   break;\n"
                  "  case FacebookLoginStatus.loggedIn:\n"
                  "   var graphResponse = await http.get('https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture.height(200)&access_token=\${facebookLoginResult.accessToken.token}');\n"
                  "   var profile = json.decode(graphResponse.body);\n"
                  "   onLoginStatusChanged(true, profileData: profile);\n"
                  "   break;\n"
                  " }\n\n"

                  "}\n\n"
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
              CmpTitle(Title:"Logout:",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Login User\n",),
              CmpCode(
                  CodeTxt:
                  "_logout() async {\n"
                  " await facebookLogin.logOut();\n"
                  " onLoginStatusChanged(false);\n"
                  "}\n"
              ),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:5,),



];

//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------
//-------------------------------------------------------------

var Firebase_Auth_Email_FB_Google_CompList =[
  SizedBox(width:10),
  ];





