import 'package:flutter/material.dart';
import '1000_Rating.dart';
import 'SettingPage.dart';
import 'main.dart';
import 'Samples.dart';


class UpdatePage extends StatefulWidget {
  @override
  UpdatePageState createState() => new UpdatePageState();
}

class UpdatePageState extends State<UpdatePage> {
  ScrollController SCUpdatePage = new ScrollController();

  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
                  children: <Widget>[

                    SizedBox(height:10),

                    
                    SizedBox(
                      width:double.infinity,
                      height:70,
                      child:Card(
                        color:Colors.blueGrey,
                        child:Center(
                          child:Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "This Version Still Beta And May Have Errors! Contact Us At edapps.contact@gmail.com If Any Problem Occured",
                              textAlign:TextAlign.center,
                              style:TextStyle(
                                fontSize:13,
                                color:Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),

                    
                    /*

                    SizedBox(
                      width:double.infinity,
                      height:40,
                      child:Card(
                        color:Colors.teal,
                        child:Center(
                          child:Text(
                            "Improvement",
                            style:TextStyle(
                              fontSize:20,
                              color:Colors.blueGrey,
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
                        leading:Icon(Icons.wallpaper,color:Colors.blueGrey,),
                        title:Text("GeoLocator",style:TextStyle(fontSize:12),),
                        trailing:Icon(Icons.arrow_forward_ios,color:Colors.blueGrey,),
                        onTap:(){
                          Navigator.pushNamed(context,"/Geolocator_Pos");
                        },
                      ),
                    ),


                    Card(
                      color:Colors.grey[200],
                      child: ListTile(
                        leading:Icon(Icons.data_usage,color:Colors.blueGrey,),
                        title:Text("PHP SignUp",style:TextStyle(fontSize:12),),
                        trailing:Icon(Icons.arrow_forward_ios,color:Colors.blueGrey,),
                        onTap:(){
                          Navigator.pushNamed(context,"/HTTP_PHP_Auth_SignUp");
                        },
                      ),
                    ),


                    Card(
                      color:Colors.grey[200],
                      child: ListTile(
                        leading:Icon(Icons.data_usage,color:Colors.blueGrey,),
                        title:Text("PHP SignIn",style:TextStyle(fontSize:12),),
                        trailing:Icon(Icons.arrow_forward_ios,color:Colors.blueGrey,),
                        onTap:(){
                          Navigator.pushNamed(context,"/HTTP_PHP_Auth_SignIn");
                        },
                      ),
                    ),


                    Card(
                      color:Colors.grey[200],
                      child: ListTile(
                        leading:Icon(Icons.data_usage,color:Colors.blueGrey,),
                        title:Text("PHP CRUD Image Insert",style:TextStyle(fontSize:12),),
                        trailing:Icon(Icons.arrow_forward_ios,color:Colors.blueGrey,),
                        onTap:(){
                          Navigator.pushNamed(context,"/HTTP_PHP_CRUD_Image_Insert");
                        },
                      ),
                    ),


                    Card(
                      color:Colors.grey[200],
                      child: ListTile(
                        leading:Icon(Icons.data_usage,color:Colors.blueGrey,),
                        title:Text("PHP CRUD Image Get",style:TextStyle(fontSize:12),),
                        trailing:Icon(Icons.arrow_forward_ios,color:Colors.blueGrey,),
                        onTap:(){
                          Navigator.pushNamed(context,"/HTTP_PHP_CRUD_Image_Get");
                        },
                      ),
                    ),



                    Card(
                      color:Colors.grey[200],
                      child: ListTile(
                        leading:Icon(Icons.data_usage,color:Colors.blueGrey,),
                        title:Text("PHP CRUD Image Delete",style:TextStyle(fontSize:12),),
                        trailing:Icon(Icons.arrow_forward_ios,color:Colors.blueGrey,),
                        onTap:(){
                          Navigator.pushNamed(context,"/HTTP_PHP_CRUD_Image_Delete");
                        },
                      ),
                    ),

                    Card(
                      color:Colors.grey[200],
                      child: ListTile(
                        leading:Icon(Icons.table_chart,color:Colors.blueGrey,),
                        title:Text("DataTable Pagination",style:TextStyle(fontSize:12),),
                        trailing:Icon(Icons.arrow_forward_ios,color:Colors.blueGrey,),
                        onTap:(){
                          Navigator.pushNamed(context,"/DataTable_Pagination");
                        },
                      ),
                    ),

                    Card(
                      color:Colors.grey[200],
                      child: ListTile(
                        leading:Icon(Icons.navigation,color:Colors.blueGrey,),
                        title:Text("KFDrawer",style:TextStyle(fontSize:12),),
                        trailing:Icon(Icons.arrow_forward_ios,color:Colors.blueGrey,),
                        onTap:(){
                          Navigator.pushNamed(context,"/KFDrawer");
                        },
                      ),
                    ),

                    Card(
                      color:Colors.grey[200],
                      child: ListTile(
                        leading:Icon(Icons.adb,color:Colors.blueGrey,),
                        title:Text("GoogleTranslator",style:TextStyle(fontSize:12),),
                        trailing:Icon(Icons.arrow_forward_ios,color:Colors.blueGrey,),
                        onTap:(){
                          Navigator.pushNamed(context,"/GoogleTranslator");
                        },
                      ),
                    ),

                    Card(
                      color:Colors.grey[200],
                      child: ListTile(
                        leading:Icon(Icons.adb,color:Colors.blueGrey,),
                        title:Text("ApkAdmin",style:TextStyle(fontSize:12),),
                        trailing:Icon(Icons.arrow_forward_ios,color:Colors.blueGrey,),
                        onTap:(){
                          Navigator.pushNamed(context,"/ApkAdmin");
                        },
                      ),
                    ),



                   


                    










                   

                   







                    SizedBox(height:15,),
                    RatingUI(),





                  ],
                
         ),
    );
  }


}