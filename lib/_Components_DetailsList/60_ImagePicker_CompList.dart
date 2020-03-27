import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String ImagePicker_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(ImagePickerRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Selectable Image\n\n"
    "-First Creating Main Class ImagePickerRun And Set Its Main State\n\n"
    "-Secondly Creating Class _ImagePickerState That Extend Its State From Its Main ImagePickerRun\n\n"
    "-Creating File Variable image That Represent Image Selected From The Device\n\n"
    "-Creating Method pickerCam async That Take Image From Camera Once Taken image file Will Be The Image Taken From Camera\n\n"
    "-Creating Method pickerGallery async That Take Image From Gallery Once Taken image file Will Be The Image Taken From Gallery\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating A Scaffold Allowing Us To Use AppBar And The Body Of The Page\n\n"
    "-As An AppBar It Take A Simple Text As Title\n\n"
    "-As An Body It Take ListView That Avoid OverFlow And Allow Scroll\n\n"
    "-First Row( Element Represented On Col) Taking As Col1 A FlatButton And Col2 A FlatButton\n\n"
    "-The First FlatButton Call Method pickerGallery\n\n"
    "-The Second FlatButton Call Method pickerCam\n\n"
    "-Finally The Container Representing Image Selected From Device With Height And Width 200 And Blue Border If No Image Selected Then Displaying A Text,If Not Displaying The Image\n\n";

List ImagePicker_List =[
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
              CmpTitle(Title:"What Is Image Picker?",),
              Divider(),
              CmpSubTitle(SubTitle:"Widget Allowing User To Select Image From Device.",),
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
              CmpSubTitle(SubTitle:"Adding Plugin Into Yaml Dependency:\n",),
              Image.asset("Images/ImagePicker.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:image_picker/image_picker.dart';\n",),
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
              CmpSubTitle(SubTitle:"1-Declaring File Variable:",),
              CmpCode(CodeTxt:"File image;",),

              CmpSubTitle(SubTitle:"2-Get Image From Cam:",),
              CmpCode(
                CodeTxt:
                "pickerCam() async {\n"
                " File img = await ImagePicker.pickImage(\n"
                "   source: ImageSource.camera\n"
                " );\n"
                " if (img != null) {\n"
                "  image = img;\n"
                "  setState(() {});\n"
                " }\n"
                "}\n",
              ),

              CmpSubTitle(SubTitle:"3-Get Image From Gallery:",),
              CmpCode(
                CodeTxt:
                "pickerGallery() async {\n"
                    " File img = await ImagePicker.pickImage(\n"
                    "   source: ImageSource.gallery\n"
                    " );\n"
                    " if (img != null) {\n"
                    "  image = img;\n"
                    "  setState(() {});\n"
                    " }\n"
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


