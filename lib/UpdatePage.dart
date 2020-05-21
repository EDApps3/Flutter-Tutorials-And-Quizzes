import 'package:flutter/material.dart';
import '1000_Rating.dart';
import 'SettingPage.dart';
import 'main.dart';


class UpdatePage extends StatefulWidget {
  @override
  UpdatePageState createState() => new UpdatePageState();
}

class UpdatePageState extends State<UpdatePage> {
  ScrollController SCUpdatePage = new ScrollController();

  Widget build(BuildContext context) {
    return Scaffold(
        body:
        ListView(
          controller:SCUpdatePage,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                children: <Widget>[

                  SizedBox(height:10),

                  /*
                  SizedBox(
                    width:double.infinity,
                    height:40,
                    child:Card(
                      color:Colors.teal,
                      child:Center(
                        child:Text(
                          "Users Code!",
                          style:TextStyle(
                            fontSize:20,
                            color:Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ),
                   */

                  SizedBox(
                    width:double.infinity,
                    height:40,
                    child:Card(
                      color:Colors.teal,
                      child:Center(
                        child:Text(
                          "Improvement:",
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
                      leading:Icon(Icons.warning),
                      title:Text("Disable Starup Popup",style:TextStyle(fontSize:12),),
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
                      leading:Icon(Icons.touch_app),
                      title:Text("Body DoubleTap",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/GestureDetector_Body_DoubleTap");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.grid_on),
                      title:Text("GridView.count",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/GridView_Count");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.grid_on),
                      title:Text("GridView.builder",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/GridView_Builder");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.grid_on),
                      title:Text("GridView.custom",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/GridView_Custom");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.grid_on),
                      title:Text("GridView.extent",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/GridView_Extent");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.navigation),
                      title:Text("Curved NavBar",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Curved_Navigation_Bar");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.swap_vertical_circle),
                      title:Text("Simple Floating Action Button",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Floating_Button_Simple");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.swap_vertical_circle),
                      title:Text("Animated Floating Action Button",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Floating_Button_Animated");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.swap_vertical_circle),
                      title:Text("Circular Floating Action Button",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Floating_Button_Circular");
                      },
                    ),
                  ),


                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.info),
                      title:Text("Tooltip",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/ToolTip");
                      },
                    ),
                  ),


                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.arrow_back),
                      title:Text("Back Detector",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Back_Detector");
                      },
                    ),
                  ),


                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.content_cut),
                      title:Text("ClipOval",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Clipping_ClipOval");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.content_cut),
                      title:Text("ClipRRect",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Clipping_ClipRRect");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.navigation),
                      title:Text("NavBar Rail",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/NavigationBar_Rail");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.navigation),
                      title:Text("Fancy Bottom NavBar",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Fancy_Bottom_NavBar");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.color_lens),
                      title:Text("Color Picker",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Color_Picker");
                      },
                    ),
                  ),


                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.favorite),
                      title:Text("Like Button",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Like_Button");
                      },
                    ),
                  ),


                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.fiber_dvr),
                      title:Text("Sliver AppBar",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Sliver_AppBar");
                      },
                    ),
                  ),


                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.more_horiz),
                      title:Text("Advanced Animation",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Advanced7");
                      },
                    ),
                  ),

                  Card(
                    color:Colors.grey[200],
                    child: ListTile(
                      leading:Icon(Icons.more_horiz),
                      title:Text("Bounce Sound Button",style:TextStyle(fontSize:12),),
                      trailing:Icon(Icons.arrow_forward_ios),
                      onTap:(){
                        Navigator.pushNamed(context,"/Advanced8");
                      },
                    ),
                  ),










                  SizedBox(height:15,),
                  RatingUI(),





                ],
              ),
            ),
          ],
        ),
      floatingActionButton:Column(
        mainAxisAlignment:MainAxisAlignment.end,
        children: <Widget>[
          Container(
            width:37,
            height:37,
            child:FloatingActionButton(
              heroTag:"UpdatePageUp",
              backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_up),
              onPressed:(){
                SCUpdatePage.animateTo(
                  0,
                  duration:Duration(milliseconds:500),
                  curve:Curves.fastOutSlowIn,
                );
              },
            ),
          ),
          SizedBox(height:6,),
          Container(
            width:37,
            height:37,
            child:FloatingActionButton(
              heroTag:"UpdatePageDown",
              backgroundColor:Colors.deepOrange,
              child:Icon(Icons.arrow_drop_down),
              onPressed:(){
                SCUpdatePage.animateTo(
                  SCUpdatePage.position.maxScrollExtent,
                  duration:Duration(milliseconds:500),
                  curve:Curves.fastOutSlowIn,
                );
              },
            ),
          ),

        ],
      ),
    );
  }


}