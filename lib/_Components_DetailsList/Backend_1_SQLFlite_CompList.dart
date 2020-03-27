import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var SQLFlite_Intro_CompList =[
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
              CmpTitle(Title:"What Is SQLFlite?",),
              Divider(),
              CmpSubTitle(SubTitle:"Offline Database Used To Store Data Using Querrys:\n-Insert\n-Update\n-Select\n-Delete\n",),
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
              CmpSubTitle(SubTitle:"We Need To Import Into The Yaml The Plugins:",),
              SizedBox(height: 16,),
              Image.asset("Images/SQLFlite.PNG",),
              CmpSubTitle(SubTitle:"\n\nDon't Forget To Get Packages!",),
              CmpSubTitle(SubTitle: "\n\nWe Need To Import:\n\n",),
              CmpCode(CodeTxt:
                "import 'dart:async';\n"
                "import 'dart:io' as io;\n"
                "import 'package:path/path.dart';\n"
                "import 'package:sqflite/sqflite.dart';\n"
                "import 'package:path_provider/path_provider.dart';\n",
              )
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

var SQLFlite_CreateClass_CompList =[
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
                 "class Courses {\n"
                 " final int CourseID;\n"
                 " final String CourseName;\n\n"

                 " Courses(\n"
                 "  this.CourseID,\n"
                 "  this.CourseName,\n"
                 " );\n\n"


                 "Map<String, dynamic> toMap() {\n"
                 " var map = <String, dynamic>{\n"
                 "  'CourseID'  : CourseID,\n"
                 "  'CourseName': CourseName,\n"
                 " };\n"
                 " return map;\n"
                 "}\n\n"

                 "Courses.fromMap(Map<String, dynamic> map){\n"
                 "  CourseID   = map['CourseID'];\n"
                 "  CourseName = map['CourseName'];\n"
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

var SQLFlite_CreateTable_CompList =[
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
              CmpTitle(Title:"Creating Table:",),
              Divider(),
              CmpSubTitle(SubTitle:"Important Thing To Start With,We Need To Create Database Taking Tables,Where Table Divided Into Columns And Each Column Have DataType(Integer,Text...)\n\n",),

              CmpSubTitle(SubTitle:"Creating Database And Set Its Name Variables:\n",),
              CmpCode(
                CodeTxt:
                  "static Database _db;\n"
                  "static const String DB_NAME='DbName.db';",
              ),

              CmpSubTitle(SubTitle:"\n\nCreating Table Variable:\n",),
              CmpCode(
                CodeTxt:
                "static const String TABLE='Table1Name';",
              ),

              CmpSubTitle(SubTitle:"\n\nCreating Table Columns Variable:\n",),
              CmpCode(
                CodeTxt:
                "static const String ColID    = 'Var1';\n"
                "static const String ColName1 = 'Var2';",
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
              CmpTitle(Title:"Creating Db Or Getting It:",),
              Divider(),
              CmpSubTitle(SubTitle:"If Database Is Created Then We Return It(Getting It),If Null Then Not Created Then We Initialize A New Database That We Call Method initDB() That We Will Create,When Created We Returning The New Created Database\n\n",),
              CmpCode(
                CodeTxt:
                "Future<Database> get db async {\n"
                " if (_db != null) {\n"
                "   return _db;\n"
                " }\n"
                " _db = await initDb();\n"
                "   return _db;\n"
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
              CmpTitle(Title:"Initializing Database:",),
              Divider(),
              CmpSubTitle(SubTitle:"Called Once When Database Name Is Not Created,Create It By Its Path,Version And Its Data Calling Method _onCreate To Start Creating Tables\n\n",),
              CmpCode(
                CodeTxt:
                "initDb() async {\n"
                " io.Directory documentsDirectory =\n"
                "   await getApplicationDocumentsDirectory();\n\n"
                " String path = join(\n"
                "    documentsDirectory.path,\n"
                "    DB_NAME\n"
                "  );\n\n"
                "  var db = await openDatabase(\n"
                "     path,\n"
                "     version: 1,\n"
                "     onCreate: _onCreate\n"
                "   );\n\n"
                "   return db;\n"
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
              CmpTitle(Title:"Creating Tables:",),
              Divider(),
              CmpSubTitle(SubTitle:"Called Once When Database Created To Created Its Table Data And Columns\n\n",),
              CmpCode(
                CodeTxt:
                "_onCreate(Database db, int version) async {\n"
                " await db.execute('\n"
                "  CREATE TABLE \$TABLE (\n"
                "    \$CourseID INTEGER PRIMARY KEY,\n"
                "    \$CourseName TEXT\n"
                "  ');\n"
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
              CmpTitle(Title:"Closing Database:",),
              Divider(),
              CmpSubTitle(SubTitle:"Used When You Need To Close Database\n\n",),
              CmpCode(
                CodeTxt:
                "Future close() async {\n"
                "  var dbClose = await db;\n"
                "  dbClose.close();\n"
                "}\n",
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

var SQLFlite_Print_CompList =[
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
              CmpSubTitle(SubTitle:"We Need To Get All The Data From Table Needed Ans Store It Into Array And Returning Those Data\n\n",),
              CmpCode(
                CodeTxt:
                "Future<List<ClassName>> getAllData() async {\n"
                " var dbName = await db;\n\n"
                " List<Map> maps = await dbName.rawQuery(\n"
                "  'SELECT * FROM \$TABLE'\n"
                " );\n\n"
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
                "SingleChildScrollView dataTable(List<Courses> CrsLst) {\n"
                "  return SingleChildScrollView(\n"
                "   child: DataTable(\n"
                "    columns: [\n"
                "     DataColumn(label:Text('Col1'),),\n"
                "     DataColumn(label:Text('Col2'),),\n"
                "    ],\n"
                "    rows: CrsLst.map((Cr) =>\n"
                "     DataRow(cells: [\n"
                "      DataCell(Text(Cr.Var1),),\n"
                "      DataCell(Text(Cr.Var2),),\n"
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
                "    return SizedBox();\n"
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

var SQLFlite_Insert_CompList =[
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
              CmpTitle(Title:"Insert Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"Take Maped Data And Insert Into To Table\n\n",),
              CmpCode(
                CodeTxt:
                "Future<Classname> save(Classname Cr) async {\n"
                " var dbName = await db;\n\n"
                " Cr.Var1 = await dbName.insert(\n"
                "   TABLE,\n"
                "   Cr.toMap()\n"
                " );\n\n"
                " return Cr;\n"
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
              CmpTitle(Title:"Call It:",),
              Divider(),
              CmpSubTitle(SubTitle:"Creating Object From Class And Pass Data Into Constructor,Data Taken From TextField Controller,Once Saved We Need To refresh List To Take The Last Added Item\n\n",),
              CmpCode(
                CodeTxt:
                "ClassName e = Courses(\n"
                "  null,\n"
                "  VarTextToInsertToColumns\n"
                ");\n\n"
                " save(e);\n"
                "refreshList();\n",
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

var SQLFlite_Update_CompList =[
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
              CmpTitle(Title:"Update Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"Where We Have To Pass Object And Running Update Query To The ObjectID\n\n",),
              CmpCode(
                CodeTxt:
                  "Future<int> update(Courses Cr) async {\n"
                  " var dbName = await db;\n"
                  " return await dbName.update(\n"
                  "  TABLE,\n"
                  "  Cr.toMap(),\n"
                  "  where: '\$ColID = ?',\n"
                  "  whereArgs: [Cr.Var1]\n"
                  " );\n"
                  "}\n"
              ),
            ],
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
              CmpTitle(Title:"Call It:",),
              Divider(),
              CmpSubTitle(SubTitle:"Obj Represent Instance Of Class Where Values Can Be Extracted\n\n",),
              CmpCode(CodeTxt: "update(Class Obj);\n",),
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

var SQLFlite_Delete_CompList =[
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
              CmpTitle(Title:"Delete Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"Where We Have To Pass Id To Delete It From Database Table\n\n",),
              CmpCode(
                CodeTxt:
                 "Future<int> delete(int DelID) async {\n"
                 "  var dbName = await db;\n\n"
                 "  return await dbName.delete(\n"
                 "    TABLE,\n"
                 "    where:'\$ColID = ?',\n"
                 "    whereArgs: [DelID]\n"
                 "  );\n\n"
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
              CmpTitle(Title:"Call It:",),
              Divider(),
              CmpSubTitle(SubTitle:"DelID Represend Number Taken From Controller If Forms\n\n",),
              CmpCode(CodeTxt: "delete(DelID);\n",),
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

var SQLFlite_DeleteAll_CompList =[
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
              CmpTitle(Title:"DeleteAll Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"Where All Table Rows Will Be Deleted\n\n",),
              CmpCode(
                CodeTxt:
                "Future<List<ClassName>> DelAll() async {\n"
                " var dbName = await db;\n\n"
                " List<Map> maps=await dbName.rawQuery(\n"
                "   'DELETE FROM \$TABLE'\n"
                " );\n\n"
                " List<ClassName> Arr = [];\n"
                " return Arr;\n"
                "}\n\n",
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
              CmpTitle(Title:"Call It:",),
              Divider(),
              CmpCode(CodeTxt: "DelAll();\n",),
            ]
        ),
      ),
    ),
  ),
];







