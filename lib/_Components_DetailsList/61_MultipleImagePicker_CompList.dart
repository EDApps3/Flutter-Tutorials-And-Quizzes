import 'package:flutter/material.dart';
import '../_Comp_Courses/Cmp_Code.dart';
import '../_Comp_Courses/Cmp_SubTitle.dart';
import '../_Comp_Courses/Cmp_Title.dart';


String MultipleImagePicker_Explanation=
    "-main is a principal method called once the program is loaded\n\n"
    "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created(MutipleImagePickerRun) To Be Runned\n\n"
    "-This Class Is Statefull Widget To Detect Selectable Image\n\n"
    "-First Creating Main Class MutipleImagePickerRun And Set Its Main State\n\n"
    "-Secondly Creating Class _ImagePickerState That Extend Its State From Its Main MutipleImagePickerRun\n\n"
    "-Creating A List images Taking Images From Device\n\n"
    "-Method initState Initialize State Of The Page When Loaded\n\n"
    "-creating buildGridView Widget That Display A GridView 3 Items Per Row Where Data Loaded From images List\n\n"
    "-creating Method loadAssets That Show Images From Device,Max Selctable Images Number Is 300,Image Can be Taken From Camera And Appbar Text And His Color And Selctable Circle Color\n\n"
    "-Once Images Selected We Will Update Or List With The Selected Images From Device\n\n"
    "-As Flutter is Based On Widget A Widget must be Builded\n\n"
    "-Creating A Material App Taking  Scaffold Allowing Us To Use AppBar And The Body Of The Page\n\n"
    "-As An AppBar It Take A Simple Text As Title And Floating action FlatButton That Call Select Images Method\n\n"
    "-As An Body It Take Widget Used To Display Image As GridView\n\n";

List MultipleImagePicker_List =[
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
              CmpTitle(Title:"What Is Multiple Image Picker?",),
              Divider(),
              CmpSubTitle(SubTitle:"Widget Allowing User To Select Multiple Images From Device.",),
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
              Image.asset("Images/MultipleImagePicker.PNG"),
              CmpSubTitle(SubTitle:"\nTo Use We Need  To Import:\nimport 'package:multi_image_picker/multi_image_picker.dart';\n",),
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
              CmpSubTitle(SubTitle:"1-Declaring List That Will Store Images:",),
              CmpCode(CodeTxt:"List<Asset> images = List<Asset>();",),

              CmpSubTitle(SubTitle:"2-Displaying Images From List:",),
              CmpCode(
                CodeTxt:
                "Widget buildGridView() {\n"
                " return GridView.count(\n"
                "  crossAxisCount: 3,\n"
                "  children: List.generate(images.length, (index) {\n"
                "   Asset asset = images[index];\n"
                "   return AssetThumb(\n"
                "    asset: asset,\n"
                "    width: 300,\n"
                "    height: 300,\n"
                "   );\n"
                "  }),\n"
                " );\n"
                "}\n",
              ),

              CmpSubTitle(SubTitle:"3-Select Images From Device:",),
              CmpCode(
                CodeTxt:
                "Future<void> loadAssets() async {\n"
                " List<Asset> resultList = List<Asset>();\n"
                " try {\n"
                "  resultList = await MultiImagePicker.pickImages(\n"
                "  maxImages: 300,\n"
                "  enableCamera: true,\n"
                "  selectedAssets: images,\n"
                "  materialOptions: MaterialOptions(\n"
                "   actionBarColor:'blue',\n"
                "   actionBarTitle: 'Select Images',\n"
                "   allViewTitle: 'All Photos',\n"
                "   useDetailsView: false,\n"
                "   selectCircleStrokeColor:'black',\n"
                "  ),\n"
                " );\n"
                " } on Exception catch (e) {\n"
                "   print(e);\n"
                " }\n"
                " if (!mounted) return;\n"
                " setState(() {\n"
                "  images = resultList;\n"
                " });\n"
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


