import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


var FireStore_Intro_CompList =[
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
              CmpTitle(Title:"What Is FireStore:",),
              Divider(),
              CmpSubTitle(SubTitle:"A Real Time Database That Store Collections And Documents Made Of JSON\n\n",),
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
              CmpTitle(Title:"Getting Started:",),
              Divider(),
              CmpSubTitle(SubTitle:"Plugins Needed:\n\n",),
              Image.asset("Images/FireStorePlugin.PNG"),
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
              CmpTitle(Title:"Setup Storage And Database:",),
              Divider(),
              CmpSubTitle(SubTitle:"Press Storage And Database And Make Them Ready For The First Time.\n\n",),
              Image.asset("Images/FS_1.PNG"),
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
              CmpTitle(Title:"Rule:",),
              Divider(),
              CmpSubTitle(SubTitle:"In This Tutorial We Let Any User To Upload Files To Storage By Deleting auth in The Rule,You Can Keep It If You Need The User To Be Authenticated But You Need The Authentication Pages Provided In Previous Codes.\n\n",),
              Image.asset("Images/FS_2.PNG"),
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

var FireStore_View_CompList =[
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                 "StreamBuilder(\n"
                 " stream: Firestore.instance.collection('ColName').snapshots(),\n"
                 " builder:(BuildContext context,AsyncSnapshot<QuerySnapshot> snapshot) {\n"
                 " if (!snapshot.hasData) {\n"
                 "  return  Text('Loading...');\n"
                 " }\n"
                 " int length = snapshot.data.documents.length;\n"
                 " return ListView.builder(\n"
                 "  itemCount: length,\n"
                 "  itemBuilder: (_, int index) {\n"
                 "   final DocumentSnapshot doc = snapshot.data.documents[index];\n"
                 "   return //Widget\n"
                 "  },\n"
                 " );\n"
                 "},\n"
                 ");\n",
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
              CmpTitle(Title:"Displaying Data:",),
              Divider(),
              CmpCode(CodeTxt: "doc.data['ColumnName']",)
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


var FireStore_Insert_CompList =[
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
              CmpTitle(Title:"Code:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Future<String> Add(var imageFile,var name ,var desc) async {\n"
                " var Rand1=new Random().nextInt(999);\n"
                " var Rand2=new Random().nextInt(999);\n"
                " var Rand3=new Random().nextInt(999);\n\n"
                " fullImageName = 'Img-\$Rand1-\$Rand2-\$Rand3.jpg';\n\n"
                " final StorageReference refImg = FirebaseStorage.instance.ref().child(fullImageName);\n"
                " StorageUploadTask uploadTask=refImg.putFile(image);\n"
                " var dowurl = await (await uploadTask.onComplete).ref.getDownloadURL();\n\n"

                " DocumentReference ref = await Firestore.instance.collection('ColName').add({\n"
                " 'Col1Name'    : '\$name',\n"
                " 'Col2Name'    : '\desc',\n"
                " 'Col3Name'    : '\dowurl',\n"
                " });\n\n"

                " return dowurl.toString();\n"
                "}",
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
//-------------------------------------------------------------



var FireStore_Update_CompList =[
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
              CmpTitle(Title:"Send Data Code:",),
              Divider(),
              CmpSubTitle(SubTitle:"Called On Button Click navigateToInfo(doc) Where doc Is Single Data Information To Be Edited.\n"
                  "-Update Page Having Constructor Getting The Data doc To Be Duisplayed In The Page\n\n ",),
              CmpCode(
                CodeTxt:
                "navigateToInfo(DocumentSnapshot ds) {\n"
                " Navigator.push(\n"
                "  context,\n"
                "   MaterialPageRoute(builder: (context) => UpdatePage(ds: ds,),\n"
                "  ),\n"
                " );\n"
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
              CmpTitle(Title:"UpdateCode:",),
              Divider(),
              CmpCode(
                CodeTxt:
                "Firestore.instance.collection('ColName').document(widget.ds.documentID).updateData({\n"
                " 'Col1Name': InputController1.text,\n"
                " 'Col1Name': InputController2.text,\n"
                "});",
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
//-------------------------------------------------------------




var FireStore_Delete_CompList =[
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
              CmpSubTitle(SubTitle:"Sent By deleteData(doc) Where doc Is A Single Data Of The Colelction\n" ,),
              CmpCode(
                CodeTxt:
                "void deleteData(DocumentSnapshot doc) async {\n"
                " await Firestore.instance.collection('ColName').document(doc.documentID).delete();\n"
                "}",
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
//-------------------------------------------------------------
