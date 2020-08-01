import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var HTTP_PHP_Auth_GettingStarted_list =[
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
              CmpSubTitle(SubTitle:"We Need Online Host And Server Database\n\n",),
              Divider(),
              CmpSubTitle(SubTitle:"1-Heading To:\nwww.000webhost.com\n\n",),
              Divider(),
              CmpSubTitle(SubTitle:"2-If You Have An Account Login,If Not Sign Up\n\n",),
              Divider(),
              CmpSubTitle(SubTitle:"3-Now Time To Create A Web To Start\n\n",),
              Image.asset("Images/H1.PNG"),
              Divider(),
              CmpSubTitle(SubTitle:"4-Set Web Name\n\n",),
              Image.asset("Images/H2.PNG"),
              Divider(),
              CmpSubTitle(SubTitle:"5-Now We Need To Create Database Storing Data,We Press the Web We Created A Page Will Open To Select Tools\n\n",),
              Image.asset("Images/H3.PNG"),
              CmpSubTitle(SubTitle:"Once Opened Select Database Manager\n\n",),
              Image.asset("Images/H4.PNG"),
              Divider(),
              CmpSubTitle(SubTitle:"6-Now Creating DataBase\n\n",),
              Image.asset("Images/H5.PNG"),
              Divider(),
              CmpSubTitle(SubTitle:"7-Set Up DataBase Information\n\n",),
              Image.asset("Images/H6.PNG"),
              Divider(),
              CmpSubTitle(SubTitle:"8-Now Opening PhpmyAdmin To Set Tables\n\n",),
              Image.asset("Images/H7.PNG"),
              Divider(),
              CmpSubTitle(SubTitle:"9-Select DB And Create Table Name With DataTypes (Image Scrollable)\n\n",),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                  Image.asset(
                      "Images/PHP_Auth_1.PNG",
                    width:450,
                    height:250,
                  ),
              ),
              Divider(),
              CmpSubTitle(SubTitle:"10-Now DataBase All Set,We Need To Start Creating PHP Files,Head Back And Select File Manager\n\n",),
              Image.asset("Images/H4.PNG"),
              Divider(),
              CmpSubTitle(SubTitle:"11-Creating Folder PHPAuth To Create PHP Files Inside\n\n",),
              Image.asset("Images/PHP_Auth_3.PNG"),
              Divider(),
              CmpSubTitle(SubTitle:"12-Start Creating Files\n\n",),
              Image.asset("Images/H10.png"),
              Divider(),
              CmpSubTitle(SubTitle:"13-Create All the Following Files\n\n",),
              SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child:
                  Image.asset(
                      "Images/PHP_Auth_2.PNG",
                    width:450,
                    height:100,
                  ),
              ),
              Divider(),

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
              CmpTitle(Title:"Creating DB Connection:",),
              Divider(),
              CmpSubTitle(SubTitle:"Important Part Before Doing Any Querys(Insert,Update...)\n\n",),
              Divider(),
              CmpSubTitle(SubTitle:"Open DBConnect.php And Paste The Following Code:\n\n",),
              Image.asset("Images/H7.PNG"),
              Divider(),
              CmpSubTitle(SubTitle:"Set Your username,password And DbName To Your Data:\n\n",),
              CmpCode(
                CodeTxt:
                 "<?php\n"
                 " \$servername = 'localhost';\n"
                 " \$username   = 'id12598271_root';\n"
                 " \$password   = 'rootroot';\n"
                 " \$DbName     = 'id12598271_dbtest';\n\n"
                 "  try {\n"
                 "   \$conn = new PDO(\n"
                 "     'mysql:host=\$servername;dbname=\$DbName',\n"
                 "     \$username,\n"
                 "     \$password\n"
                 "    );\n"
                 "   \$conn->setAttribute(\n"
                 "      PDO::ATTR_ERRMODE,\n"
                 "      PDO::ERRMODE_EXCEPTION\n"
                 "     );\n"
                 "    }\n"
                 "    catch(PDOException \$e){\n"
                 "     echo 'Connection failed:'.\$e->getMessage();\n"
                 "    }\n"
                 "?>",
              ),
              Divider(),
              CmpSubTitle(
                SubTitle:
                 "\n\n-First Initializing Server data\n\n"
                 "-Using Try And Catch To Show Errors\n\n"
                 "-conn Is the Connection Variable That Try To Connect To The Server Using Data That We Created,If provided Data Wrong That Catch Will Show The Error\n\n",
              ),
              Divider(),
              CmpSubTitle(SubTitle: "\nTest It By Run The Url Web /File , If No Errors Shown That Good:\n",),
              Image.asset("Images/PHP_Auth_4.PNG"),
              Divider(),
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

String HTTP_PHP_Auth_SignUp_Explanation="Soon!";

var HTTP_PHP_Auth_SignUp_list =[
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
              CmpTitle(Title:"Before Starting:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Add Into Yaml:\n\n",),
              Image.asset("Images/H17.PNG"),
              CmpSubTitle(SubTitle:"When We Need To Use It We Have To Import:\nimport 'package:http/http.dart' as http;\n",),
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
              CmpTitle(Title:"InsertUser.php:",),
              Divider(),
              CmpSubTitle(SubTitle:"If UserName Exist Fail,If Not Succeed!\n\n",),
              CmpCode(
                CodeTxt:
                 "<?php\n"
                 " require_once('DbConnect.php');\n"
                 " \$UserName = \$_POST['UserName'];\n"
                 " \$UserPass = \$_POST['UserPass'];\n"
                 """\$St = \$conn->prepare("SELECT * FROM Users WHERE UserName='\$UserName'");\n"""
                 "  \$St->execute();\n"
                 "  \$count = \$St->rowCount();\n"
                 "   if(\$count>0){\n"
                 "    echo 'Failed';\n"
                 "   }\n"
                 "   else{\n"
                 """\$statement = \$conn->prepare('INSERT INTO Users VALUES(null,"'.\$UserName.'","'.\$UserPass.'")');\n"""
                 "   \$statement->execute();\n"
                 "    echo 'Success';\n"
                 "   }\n"
                 "?>",
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
              CmpTitle(Title:"Register:",),
              Divider(),
              CmpSubTitle(SubTitle:"If UserName Exist PHP Request returing Failed,If Not Succeed!\n\n",),
              CmpCode(
                CodeTxt:
                 "var url= 'https://httpfluttertest.000webhostapp.com/PHPAuth/InsertUser.php';\n"
                 "http.Response response = await http.post(\n"
                 " url,\n"
                 " body: {\n"
                 "  'UserName': UserName,\n"
                 "  'UserPass': UserPass,\n"
                 " }\n"
                 ");\n"
                 "if(response.body=='Failed'){\n"
                 "  //Do\n"
                 "}\n"
                 "else{\n"
                 " //Do\n"
                 "}\n"
              )
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




String HTTP_PHP_Auth_SignIn_Explanation="Soon!";

var HTTP_PHP_Auth_SignIn_list =[
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
              CmpTitle(Title:"Why Creating Class Data?",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Create Objects From Class To Avoid Duplication,Map And unMap Returned Data",),
              CmpSubTitle(SubTitle:"Returned Data As Following:\n",),
              Image.asset("Images/PHP_Auth_5.PNG"),
            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
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
              CmpSubTitle(SubTitle:"First Creating Variable Data That We Need By Using var Or Set Type(int,String...)\n",),
              CmpCode(CodeTxt:"var Var1,Var2;",),
              CmpSubTitle(SubTitle:"\n\nCreating Constructor That Set Data,And Must Have Same Name Of The Class\n",),
              CmpCode(
                  CodeTxt:
                  "ClassName(\n"
                      "  this.Var1,\n"
                      "  this.Var1,\n"
                      ");\n"
              ),

              CmpSubTitle(SubTitle:"\n\nMap Data:\n",),
              CmpCode(
                  CodeTxt:
                  "Map<String, dynamic> toMap() {\n"
                      " var map = <String, dynamic>{\n"
                      "  'Var1': Var1,\n"
                      "  'Var2': Var2,\n"
                      " };\n"
                      " return map;\n"
                      "}\n"
              ),

              CmpSubTitle(SubTitle:"\n\nUnMap Data:\n",),
              CmpCode(
                  CodeTxt:
                  "ClassName.fromMap(Map<String, dynamic> map){\n"
                      "  Var1 = map['Var1'];\n"
                      "  Var2 = map['Var2'];\n"
                      "}\n\n"
              ),

            ]
        ),
      ),
    ),
  ),
  SizedBox(height:10,),
  Container (
    padding: new EdgeInsets.only(bottom: 20.0),
    child:
    new Card(
      child: new Container(
        padding: new EdgeInsets.all(15.0),
        child: new Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                    "class Users {\n"
                    " String UserName,UserPass;\n\n"

                    " Users(\n"
                    "  this.UserName,\n"
                    "  this.UserPass,\n"
                    " );\n\n"


                    "Map<String, dynamic> toMap() {\n"
                    " var map = <String, dynamic>{\n"
                    "  'UserName'  : UserName,\n"
                    "  'UserPass'  : UserPass,\n"
                    " };\n"
                    " return map;\n"
                    "}\n\n"

                    "Users.fromMap(Map<String, dynamic> map){\n"
                    "  UserName    = map['UserName'];\n"
                    "  UserPass    = map['UserPass'];\n"
                    "}\n\n"

                    "}\n\n",
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
              CmpTitle(Title:"Before Starting:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Add Into Yaml:\n\n",),
              Image.asset("Images/H17.PNG"),
              CmpSubTitle(SubTitle:"When We Need To Use It We Have To Import:\nimport 'package:http/http.dart' as http;\n",),
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
              CmpTitle(Title:"GetUsers.php:",),
              Divider(),
              CmpSubTitle(SubTitle:"Getting Users List To Check If Data Exist!\n\n",),
              CmpCode(
                CodeTxt:
                 "<?php\n"
                 " require_once('DbConnect.php');\n"
                 " \$statement = \$conn->prepare('SELECT * FROM Users');\n"
                 " \$statement->execute();\n"
                 " \$results = \$statement->fetchAll(PDO::FETCH_ASSOC);\n"
                 " \$json = json_encode(\$results);\n"
                 " echo \$json;\n"
                 "?>\n",
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
              CmpTitle(Title:"Signing In:",),
              Divider(),
              CmpSubTitle(SubTitle:"If UserName And UserPass Found As User Input It Succeed\n\n",),
              CmpCode(
                CodeTxt:
                 "var url = 'https://httpfluttertest.000webhostapp.com/PHPAuth/GetUsers.php';\n"
                 "http.Response response = await http.get(url);\n"
                 "var maps = jsonDecode(response.body);\n"
                 "List<Users> UsersArr = [];\n"
                 "if (maps.length > 0) {\n"
                 " for (int i = 0; i < maps.length; i++) {\n"
                 "  UsersArr.add(Users.fromMap(maps[i]));\n"
                 "  if(\n"
                 "   UsersArr[i].UserName==UserName &&\n"
                 "   UsersArr[i].UserPass==UserPass\n"
                 "  ){\n"
                 "   //DoSuccess\n"
                 "  }\n"
                 " }\n"
                 "}\n"
                 "//DoFailed"
              )
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
