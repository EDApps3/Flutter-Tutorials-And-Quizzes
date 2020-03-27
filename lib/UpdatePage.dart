import 'package:admob_flutter/admob_flutter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/_Components_DetailsList/58_Animated_Icons_CompList.dart';
import '1000_Rating.dart';
import 'SettingPage.dart';
import 'main.dart';


class UpdatePage extends StatefulWidget {
  @override
  UpdatePageState createState() => new UpdatePageState();
}

class UpdatePageState extends State<UpdatePage> with AutomaticKeepAliveClientMixin {

  void initState(){
    if(loadAds>8){
      loadAds=0;
    }
    loadAds++;
  }


  Widget build(BuildContext context) {
    return Scaffold(
      body:
      ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              children: <Widget>[

                SizedBox(height:10),

                SizedBox(
                  width:double.infinity,
                  height:40,
                  child:Card(
                    color:Colors.teal,
                    child:Center(
                      child:Text(
                        "Update New Improvement!",
                        style:TextStyle(
                          fontSize:20,
                          color:Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),


                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.volume_mute),
                    title:Text("App Audio Turn Off",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.push(context,MaterialPageRoute(builder:(context)=>SettingPage()));
                    },
                  ),
                ),


                SizedBox(
                  width:double.infinity,
                  height:40,
                  child:Card(
                    color:Colors.teal,
                    child:Center(
                      child:Text(
                        "Update New Contents!",
                        style:TextStyle(
                          fontSize:20,
                          color:Colors.white,
                        ),
                      ),
                    ),
                  ),
                ),


                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.attachment),
                    title:Text("Advanced PDF Viewer Asset",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.of(context).pushReplacementNamed("/Advance_Pdf_Viwer_Asset");
                    },
                  ),
                ),

                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.attachment),
                    title:Text("Advanced PDF Viewer URL",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.of(context).pushReplacementNamed("/Advance_Pdf_Viwer_Url");
                    },
                  ),
                ),

                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.edit_attributes),
                    title:Text("Google NavBar",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.of(context).pushReplacementNamed("/Google_NavBar");
                    },
                  ),
                ),

                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.format_shapes),
                    title:Text("Clippy Triangle",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.of(context).pushReplacementNamed("/Clippy_Triangle");
                    },
                  ),
                ),


                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.format_shapes),
                    title:Text("Clippy Chevron",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.of(context).pushReplacementNamed("/Clippy_Chevron");
                    },
                  ),
                ),


                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.format_shapes),
                    title:Text("Clippy Arc",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.of(context).pushReplacementNamed("/Clippy_Arc");
                    },
                  ),
                ),


                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.format_shapes),
                    title:Text("Clippy Diagonal",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.of(context).pushReplacementNamed("/Clippy_Diagonal");
                    },
                  ),
                ),


                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.format_shapes),
                    title:Text("Clippy Bevel",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.of(context).pushReplacementNamed("/Clippy_Bevel");
                    },
                  ),
                ),

                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.format_shapes),
                    title:Text("Clippy ButtCheek",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.of(context).pushReplacementNamed("/Clippy_ButtCheek");
                    },
                  ),
                ),

                Card(
                  color:Colors.grey[200],
                  child: ListTile(
                    leading:Icon(Icons.grain),
                    title:Text("Water Drop",style:TextStyle(fontSize:12),),
                    trailing:Icon(Icons.arrow_forward_ios),
                    onTap:(){
                      Navigator.of(context).pushReplacementNamed("/Water_Drop");
                    },
                  ),
                ),




                SizedBox(height:15,),
                RatingUI(),





              ],
            ),
          ),
        ],
      )

    );
  }

  @override
  bool get wantKeepAlive => true;

}



