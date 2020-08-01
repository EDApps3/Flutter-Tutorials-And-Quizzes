import 'package:flutter/material.dart';

import '../AppSoundPlay.dart';
import 'package:flutter_tutorials_and_quizzes/SettingPage.dart';

class HeaderDrawer extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment:CrossAxisAlignment.start,
      children: <Widget>[ 

        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
                            "Menu",
                            style: TextStyle(
                              fontFamily: "Crimson Text",
                              fontSize:19,
                              color:(ThemeResult=="Light")?Colors.blue:Colors.white,
                            ),
                          ),
        ),
       Divider(color:Colors.blueGrey,),
       Container(
         width:200,
         height:100,
         child:Row(
         children: <Widget>[
           Image.asset("Images/160x160_Flutter.png",width:80,height:80),
           Image.asset("Images/PumpingHeart.gif",width:30,height:30,),  
           Image.asset("Images/Dart_Logo.png",width:80,height:80),            
         ],
       ),
        ),
        Text(
                          "  Flutter: Tutorials & Quizzes",
                          style: TextStyle(
                            fontFamily: "Crimson Text",
                            fontSize:16,
                            color:Colors.teal,
                            fontWeight:FontWeight.bold
                          ),
                        ),
        Divider(color:Colors.blueGrey,), 
        
       
        

       
         
                        
                       
                      
                    
                
            
      ]
    );
  }

}






