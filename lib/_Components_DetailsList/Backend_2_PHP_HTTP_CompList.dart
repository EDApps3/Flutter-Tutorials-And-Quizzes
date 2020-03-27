import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var PHP_HTTP_Intro_CompList =[
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
              CmpSubTitle(SubTitle:"1-Heading To:\nwww.000webhost.com\n\n",),

              CmpSubTitle(SubTitle:"2-If You Have An Account Login,If Not Sign Up\n\n",),

              CmpSubTitle(SubTitle:"3-Now Time To Create A Web To Start\n\n",),
              Image.asset("Images/H1.PNG"),

              CmpSubTitle(SubTitle:"4-Set Web Name\n\n",),
              Image.asset("Images/H2.PNG"),

              CmpSubTitle(SubTitle:"5-Now We Need To Create Database Storing Data,We Press the Web We Created A Page Will Open To Select Tools\n\n",),
              Image.asset("Images/H3.PNG"),
              CmpSubTitle(SubTitle:"Once Opened Select Database Manager\n\n",),
              Image.asset("Images/H4.PNG"),

              CmpSubTitle(SubTitle:"6-Now Creating DataBase\n\n",),
              Image.asset("Images/H5.PNG"),

              CmpSubTitle(SubTitle:"7-Set Up DataBase Information\n\n",),
              Image.asset("Images/H6.PNG"),

              CmpSubTitle(SubTitle:"8-Now Opening PhpmyAdmin To Set Tables\n\n",),
              Image.asset("Images/H7.PNG"),

              CmpSubTitle(SubTitle:"9-Select DB And Create Table Name\n\n",),
              Image.asset("Images/H8.PNG"),

              CmpSubTitle(SubTitle:"10-Set Columns Name And DataTypes\n\n",),
              Image.asset("Images/H9.PNG"),

              CmpSubTitle(SubTitle:"11-Now DataBase All Set,We Need To Start Creating PHP Files,Head Back And Select File Manager\n\n",),
              Image.asset("Images/H4.PNG"),

              CmpSubTitle(SubTitle:"12-Start Creating Files\n\n",),
              Image.asset("Images/H10.PNG"),

              CmpSubTitle(SubTitle:"13-Create All the Following Files\n\n",),
              Image.asset("Images/H11.PNG"),



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


var PHP_HTTP_DbConnection_CompList =[
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
              CmpSubTitle(SubTitle:"Open DBConnect.php And Paste The Following Code:\n\n",),

              CmpSubTitle(SubTitle:"Set Your username,password And DbName To Your Data:\n\n",),
              Image.asset("Images/H7.PNG"),

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

              CmpSubTitle(
                SubTitle:
                 "\n\n-First Initializing Server data\n\n"
                 "-Using Try And Catch To Show Errors\n\n"
                 "-conn Is the Connection Variable That Try To Connect To The Server Using Data That We Created,If provided Data Wrong That Catch Will Show The Error\n\n",
              ),


              CmpSubTitle(SubTitle: "\nTest It By Run The Url Web /File , If No Errors Shown That Good:\n",),
              Image.asset("Images/H13.PNG"),



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

var PHP_HTTP_CreateClass_CompList =[
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
              CmpSubTitle(SubTitle:"Used To Create Objects From Class To Avoid Duplication,Map And unMap Returned Data,Example:\nProduct P1=new Product(1,'PName');\n",),
              CmpSubTitle(SubTitle:"Returned Data As Following:\n",),
              Image.asset("Images/H16.PNG"),
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
                    "class Products {\n"
                    " final int ProductID;\n"
                    " final String ProductName;\n\n"

                    " Products(\n"
                    "  this.ProductID,\n"
                    "  this.CourseName,\n"
                    " );\n\n"


                    "Map<String, dynamic> toMap() {\n"
                    " var map = <String, dynamic>{\n"
                    "  'ProductID'  : ProductID,\n"
                    "  'ProductName': ProductName,\n"
                    " };\n"
                    " return map;\n"
                    "}\n\n"

                    "Courses.fromMap(Map<String, dynamic> map){\n"
                    "  ProductID   = map['ProductID'];\n"
                    "  ProductName = map['ProductName'];\n"
                    "}\n\n"

                    "}\n\n",
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

var PHP_HTTP_GetData_Explanation=
    "-Main Is The Principal Method,Running PHP_GetData Class On Start\n\n"
    "-Before Creating PHP_GetData Class We Need To Create Product Class\n\n"
    "-Creating Product Class Used To Hold Objects,Reducing Duplication Data Taken Into Constructor\n\n"
    "-Constructor Have The Same Name Class Taking Variables And Set Them To The Object\n\n"
    "-Map And UnMap Used To Convert And GetData From JSON From The Dynamic List Returned,Kindly Check Get Data Section To Show Returned Data\n\n"
    "-Now To The UI,Creating PHP_GetData Class,Statefull Widget Due To Load Data Once Loaded Displayed,State Need To Be Created\n\n"
    "-Creating State Class _PHP_GetData_State That Extend Its Main State From Class PHP_GetData\n\n"
    "-Creating List ProductsLst Used To Hold The Returned Data From Database\n\n"
    "-Creating Method getProducts That Get Data From Server,Due To Getting Data From Web We Need Url That Do Response And Get Returned Data\n\n"
    "-Returned Data Stored in maps Variable\n\n"
    "-Creating List ProductArr That Store Object After Maping\n\n"
    "-If There Is Rows(>0) Then We Traverse Each Object And Map Them (ProductID,ProductName) And Added To ProductArr\n\n"
    "-Now ProductArr Hold At Each Index Object Of Product\n\n"
    "-Finally Return ProductArr That Will Be Filled Into List Once Page Initialized\n\n"
    "-initState Run Once Page Initialized,That Refresh List\n\n"
    "-refershList Is A Method That Call GetData Method And Fill Them Into ProductsLst,Each Call We're Getting New Data\n\n"
    "-Now Start With Displaying Data,Creating Method SingleChildScrollView dataTable That Return SingleChildScrollView Widget Taking As A Parameter List Holding Objects To Be Displayed\n\n"
    "-SingleChildScrollView Scrolled Vertically Taking A DataTable\n\n"
    "-DataTable Having 2 Columns Set By DataColumn\n\n"
    "-As Rows We Are Traversing List To Get Each Object Data Represented By Pr\n\n"
    "-Now Creating Material App That Grant Light Theme And Title\n\n"
    "-Taking As An Home Scaffold That Allow Using AppBar And Body\n\n"
    "-AppBar Taking Simple Title\n\n"
    "-Body Taking ListView That Avoid OverFlow And Allow Scrolling\n\n"
    "-ListView Taking FutureBuilder That Build A List If There Is Data Calling Method dataTable\n\n"
    "-Untill Getting Data We're Displaying A Loading Text And Widget\n\n";

var PHP_HTTP_GetData_CompList =[
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
              CmpTitle(Title:"GetPrd.php:",),
              Divider(),
              CmpSubTitle(SubTitle:"Return All Data From DataBase Into JSON:\n\n",),
              CmpCode(
                CodeTxt:
                 "<?php\n"
                 "require_once('DbConnect.php');\n\n"
                 "\$statement=\$conn->prepare('SELECT * FROM Products');\n"
                 "\$statement->execute();\n"
                 "\$results=\$statement->fetchAll(PDO::FETCH_ASSOC);\n"
                 "\$json = json_encode(\$results);\n"
                 "echo \$json;\n"
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
              CmpTitle(Title:"Get All The Data:",),
              Divider(),
              CmpSubTitle(SubTitle:"We Need To Get All The Data From Table Needed AnD Store It Into Array And Returning Those Data\n\n",),
              CmpCode(
                CodeTxt:
                    "Future<List<ClassName>> getAllData() async {\n"
                    " var url = 'https://httpfluttertest.000webhostapp.com/GetPrd.php';\n"
                    " http.Response response = await http.get(url);\n"
                    " var maps = jsonDecode(response.body);"
                    " List<ClassName> Arr = [];\n"
                    " if (maps.length > 0) {\n"
                    "  for (int i = 0; i < maps.length; i++) {\n"
                    "    Arr.add(ClassName.fromMap(maps[i]));\n"
                    "  }\n"
                    " }\n"
                    " return Arr;\n"
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
              CmpTitle(Title:"Refresh Data:",),
              Divider(),
              CmpSubTitle(SubTitle:"Once Change Occured(Insert,Delete,Update...) We Need To Refresh Data\n\n",),

              CmpSubTitle(SubTitle:"\nCreate List To Set Data In:\n\n",),
              CmpCode(CodeTxt: "Future<List<ClassName>> Lst;",),

              CmpSubTitle(SubTitle:"\n\nRefresh Data:\n\n",),
              CmpCode(
                CodeTxt:
                "refreshList() {\n"
                    "  setState(() {\n"
                    "   Lst = getAllData();\n"
                    "  });\n"
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
              CmpTitle(Title:"Load Into Data Table:",),
              Divider(),
              CmpSubTitle(SubTitle:"Get The Data Stored Into Lst Into DataTable\n\n",),
              CmpCode(
                CodeTxt:
                    "SingleChildScrollView dataTable(List<ClassName> ClLst) {\n"
                    "  return SingleChildScrollView(\n"
                    "   child: DataTable(\n"
                    "    columns: [\n"
                    "     DataColumn(label:Text('Col1'),),\n"
                    "     DataColumn(label:Text('Col2'),),\n"
                    "    ],\n"
                    "    rows: ClLst.map((Obj) =>\n"
                    "     DataRow(cells: [\n"
                    "      DataCell(Text(Obj.Var1),),\n"
                    "      DataCell(Text(Obj.Var2),),\n"
                    "    ]),\n"
                    "   ).toList(),\n"
                    "  ),\n"
                    " );\n"
                    "}",
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
              CmpTitle(Title:"Build In UI Class:",),
              Divider(),
              CmpSubTitle(SubTitle:"Finally Call DataTable And Build List\n\n",),
              CmpCode(
                CodeTxt:
                    "FutureBuilder(\n"
                    " future:Lst,\n"
                    "  builder: (context, snapshot) {\n"
                    "   if (snapshot.hasData) {\n"
                    "    return dataTable(snapshot.data);\n"
                    "   }\n"
                    "   else{\n"
                    "    return //Widget Case Error;\n"
                    "   }\n"
                    "  },\n"
                    ")\n\n",
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



var PHP_HTTP_Insert_Explanation=
    "-Main Is The Principal Method,Running PHP_InsData Class On Start\n\n"
    "-Before Creating PHP_InsData Class We Need To Create Product Class\n\n"
    "-Creating Product Class Used To Hold Objects,Reducing Duplication Data Taken Into Constructor\n\n"
    "-Constructor Have The Same Name Class Taking Variables And Set Them To The Object\n\n"
    "-Map And UnMap Used To Convert And GetData From JSON From The Dynamic List Returned,Kindly Check Get Data Section To Show Returned Data\n\n"
    "-Now To The UI,Creating PHP_InsData Class,Statefull Widget Due To Load Data Each Insert And Once Page Loaded,State Need To Be Created\n\n"
    "-Creating State Class _PHP_InsData_State That Extend Its Main State From Class PHP_InsData\n\n"
    "-Creating List ProductsLst Used To Hold The Returned Data From Database\n\n"
    "-Creating 2 Controller Due To A Form Containing Textfields Dta Inserted By Used Validated,Then Inserted\n\n"
    "-Creating ProductName Variable Set Value Once Validated,And Form formKey To Check Whenever Form Is Validated\n\n"
    "-Creating Method getProducts That Get Data From Server,Due To Getting Data From Web We Need Url That Do Response And Get Returned Data\n\n"
    "-Returned Data Stored in maps Variable\n\n"
    "-Creating List ProductArr That Store Object After Maping\n\n"
    "-If There Is Rows(>0) Then We Traverse Each Object And Map Them (ProductID,ProductName) And Added To ProductArr\n\n"
    "-Now ProductArr Hold At Each Index Object Of Product\n\n"
    "-Finally Return ProductArr That Will Be Filled Into List Once Page Initialized\n\n"
    "-Now Creating Insert Method That Post Url To The Server Taking Variable As Parameters Getted From \$_GET in PHP\n\n"
    "-Creating GetMaxID Method That Get The Hightest ID+1 To Show The New ID To Be Inserted,If Not(Null) The ID Set To 1\n\n"
    "-initState Run Once Page Initialized,That Refresh List\n\n"
    "-refershList Is A Method That Call GetData Method And Fill Them Into ProductsLst,Each Call We're Getting New Data\n\n"
    "-Now Start With Displaying Data,Creating Method SingleChildScrollView dataTable That Return SingleChildScrollView Widget Taking As A Parameter List Holding Objects To Be Displayed\n\n"
    "-SingleChildScrollView Scrolled Vertically Taking A DataTable\n\n"
    "-DataTable Having 2 Columns Set By DataColumn\n\n"
    "-As Rows We Are Traversing List To Get Each Object Data Represented By Pr\n\n"
    "-Each Row DataCell When Tapped Its Data Loaded Into TextFields\n\n"
    "-Now Creating Material App That Grant Light Theme And Title\n\n"
    "-Taking As An Home Scaffold That Allow Using AppBar And Body\n\n"
    "-AppBar Taking Simple Title\n\n"
    "-Body Taking ListView That Avoid OverFlow And Allow Scrolling\n\n"
    "-List View Take The Form Known By Its Key(Used To Validate Form(All TextFields)) Taking Column Putting Texts,TextFields And Button\n\n"
    "-Each TextFormField Have Its Controller(Used To Take Data Insered Into) And A Validator That Check Data( length 0 If No Character Where Insered  ) With The Error Message To Be Shown In Error Case\n\n"
    "-ListView Taking FutureBuilder That Build A List If There Is Data Calling Method dataTable\n\n"
    "-Untill Getting Data We're Displaying A Loading Text And Widget\n\n";


var PHP_HTTP_Insert_CompList =[
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
              CmpTitle(Title:"InsertPrd.php",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Insert Values Parsed Into Parameters\n\n",),
              CmpCode(
                CodeTxt:
                 "<?php\n"
                 " require_once('DbConnect.php');\n"
                 " \$InsName=\$_GET['InsName'];\n"
                 """\$statement=\$conn->prepare('INSERT INTO Products VALUES(null,"'.\$InsName.'")');\n"""
                 "  \$statement->execute();\n"
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
              CmpTitle(Title:"prdmaxid.php",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Insert Values Parsed Into Parameters\n\n",),
              CmpCode(
                CodeTxt:
                    "<?php\n"
                    "require_once('DbConnect.php');\n\n"
                    "\$statement=\$conn->prepare('SELECT MAX(ProductID)+1 AS LID FROM Products');\n"
                    "\$statement->execute();\n"
                    "\$results=\$statement->fetchAll(PDO::FETCH_ASSOC);\n"
                    "\$json = json_encode(\$results);\n"
                    "echo \$json;\n"
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
              CmpTitle(Title:"Insert Data:",),
              Divider(),
              CmpSubTitle(SubTitle:"Using HTTP Post Data\n\n",),
              CmpCode(
                CodeTxt:
                "Future<int> Insert(String InsName) async {\n"
                " var url = 'http://httpfluttertest.000webhostapp.com/InsertPrd.php?InsName=\$InsName';\n"
                " await http.post(url);\n"
                "}",
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
              CmpTitle(Title:"Call Method:",),
              Divider(),
              CmpSubTitle(SubTitle:"Data Taken From Controller And Passed\n\n",),
              CmpCode(
                CodeTxt:
                "String ProductName=ProductNameController.text;\n"
                "Insert(ProductName);\n"
                "ProductNameController.text='';\n"
                "refreshList();",
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



var PHP_HTTP_Update_Explanation=
    "-Main Is The Principal Method,Running PHP_UpdateData Class On Start\n\n"
    "-Before Creating PHP_UpdateData Class We Need To Create Product Class\n\n"
    "-Creating Product Class Used To Hold Objects,Reducing Duplication Data Taken Into Constructor\n\n"
    "-Constructor Have The Same Name Class Taking Variables And Set Them To The Object\n\n"
    "-Map And UnMap Used To Convert And GetData From JSON From The Dynamic List Returned,Kindly Check Get Data Section To Show Returned Data\n\n"
    "-Now To The UI,Creating PHP_UpdateData Class,Statefull Widget Due To Load Data Each Insert And Once Page Loaded,State Need To Be Created\n\n"
    "-Creating State Class _PHP_UpdateData_State That Extend Its Main State From Class PHP_UpdateData\n\n"
    "-Creating List ProductsLst Used To Hold The Returned Data From Database\n\n"
    "-Creating 2 Controller Due To A Form Containing Textfields Dta Inserted By Used Validated,Then Inserted\n\n"
    "-Creating ProductName Variable Set Value Once Validated,And Form formKey To Check Whenever Form Is Validated,And curUserId That Know Selected Item To Update It By Its ID\n\n"
    "-Creating Method getProducts That Get Data From Server,Due To Getting Data From Web We Need Url That Do Response And Get Returned Data\n\n"
    "-Returned Data Stored in maps Variable\n\n"
    "-Creating List ProductArr That Store Object After Maping\n\n"
    "-If There Is Rows(>0) Then We Traverse Each Object And Map Them (ProductID,ProductName) And Added To ProductArr\n\n"
    "-Now ProductArr Hold At Each Index Object Of Product\n\n"
    "-Finally Return ProductArr That Will Be Filled Into List Once Page Initialized\n\n"
    "-Now Creating Update Method That Post Url To The Server Taking Variable As Parameters Getted From \$_GET in PHP\n\n"
    "-initState Run Once Page Initialized,That Refresh List And Set ID Text To SelectID\n\n"
    "-refershList Is A Method That Call GetData Method And Fill Them Into ProductsLst,Each Call We're Getting New Data,ID Controller Se To New ID To Be Inserted\n\n"
    "-Now Start With Displaying Data,Creating Method SingleChildScrollView dataTable That Return SingleChildScrollView Widget Taking As A Parameter List Holding Objects To Be Displayed\n\n"
    "-SingleChildScrollView Scrolled Vertically Taking A DataTable\n\n"
    "-DataTable Having 2 Columns Set By DataColumn\n\n"
    "-As Rows We Are Traversing List To Get Each Object Data Represented By Pr\n\n"
    "-Now Creating Material App That Grant Light Theme And Title\n\n"
    "-Taking As An Home Scaffold That Allow Using AppBar And Body\n\n"
    "-AppBar Taking Simple Title\n\n"
    "-Body Taking ListView That Avoid OverFlow And Allow Scrolling\n\n"
    "-List View Take The Form Known By Its Key(Used To Validate Form(All TextFields)) Taking Column Putting Texts,TextFields And Button\n\n"
    "-Each TextFormField Have Its Controller(Used To Take Data Insered Into) And A Validator That Check Data( length 0 If No Character Where Insered  ) With The Error Message To Be Shown In Error Case\n\n"
    "-ListView Taking FutureBuilder That Build A List If There Is Data Calling Method dataTable\n\n"
    "-Untill Getting Data We're Displaying A Loading Text And Widget\n\n";


var PHP_HTTP_Update_CompList =[
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
              CmpTitle(Title:"UpdatePrd.php",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Update Values Parsed Into Parameters\n\n",),
              CmpCode(
                CodeTxt:
                "<?php\n"
                    " require_once('DbConnect.php');\n"
                    " \$UpdateID=\$_GET['UpdateID'];\n"
                    " \$SetName =\$_GET['SetName'];\n\n"
                    """\$statement = \$conn->prepare('UPDATE Products SET ProductName="'.\$SetName.'" WHERE ProductID='.\$UpdateID);"""
                    "  \$statement->execute();\n"
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
              CmpTitle(Title:"Update Data:",),
              Divider(),
              CmpSubTitle(SubTitle:"Using HTTP Post Data\n\n",),
              CmpCode(
                CodeTxt:
                "Future<int> Update(int UpdateID,String SetName) async {\n"
                " var url = 'http://httpfluttertest.000webhostapp.com/UpdatePrd.php?SetName=\$SetName&UpdateID=\$UpdateID';\n"
                " await http.post(url);\n"
                "}",
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
              CmpTitle(Title:"Call Method:",),
              Divider(),
              CmpSubTitle(SubTitle:"Data Taken From Controller And Passed\n\n",),
              CmpCode(
                CodeTxt:
                "int ProductID  =int.parse(ProductIDController.text);\n"
                "String ProductName=ProductNameController.text;\n"
                "Update(ProductID,ProductName);\n"
                "refreshList();\n"
                "ProductNameController.text='';\n"
                "ProductIDController.text='Select Product From Bottom';\n"
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





var PHP_HTTP_Delete_Explanation=
    "Soon";


var PHP_HTTP_Delete_CompList =[
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
              CmpTitle(Title:"DeletePrd.php",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Delete Values Parsed Into Parameters\n\n",),
              CmpCode(
                CodeTxt:
                    "<?php\n"
                    " require_once('DbConnect.php');\n"
                    " \$DelID=\$_GET['DelID'];\n"
                    """\$statement = \$conn->prepare("DELETE FROM Products WHERE ProductID=\$DelID");"""
                    "  \$statement->execute();\n"
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
              CmpTitle(Title:"Soon",),
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





var PHP_HTTP_DeleteAll_Explanation=
    "Soon";


var PHP_HTTP_DeleteAll_CompList =[
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
              CmpTitle(Title:"DeleteAllPrd.php",),
              Divider(),
              CmpSubTitle(SubTitle:"Used To Delete All Rows From Table\n\n",),
              CmpCode(
                CodeTxt:
                    "<?php\n"
                    " require_once('DbConnect.php');\n"
                    """\$statement = \$conn->prepare("DELETE FROM Products");"""
                    "  \$statement->execute();\n"
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
              CmpTitle(Title:"Soon",),
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