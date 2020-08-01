import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/57_BackDrop/3_BackDrop_Custom.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/10_AI_10.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/11_AI_11.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/12_AI_12.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/1_AI_1.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/2_AI_2.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/3_AI_3.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/4_AI_4.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/5_AI_5.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/6_AI_6.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/7_AI_7.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/8_AI_8.dart';
import 'package:flutter_tutorials_and_quizzes/Codes_FrontEnd/58_Animated_Icon/9_AI_9.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Code.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Code_Page.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_ListTile_GoCode2.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_SubTitle.dart';
import 'package:flutter_tutorials_and_quizzes/_Comp_Courses/Cmp_Title.dart';
import 'package:marquee/marquee.dart';

import '../main.dart';
import '27_Advanced_Loader_CompList.dart';
import '57_BackDrop_CompList.dart';


class Animated_Icons extends StatefulWidget {
  _Animated_IconsState createState() => _Animated_IconsState();
}

class _Animated_IconsState extends State<Animated_Icons> with TickerProviderStateMixin {

  AnimationController controller_AI_1;
  AnimationController controller_AI_2;
  AnimationController controller_AI_3;
  AnimationController controller_AI_4;
  AnimationController controller_AI_5;
  AnimationController controller_AI_6;
  AnimationController controller_AI_7;
  AnimationController controller_AI_8;
  AnimationController controller_AI_9;
  AnimationController controller_AI_10;
  AnimationController controller_AI_11;
  AnimationController controller_AI_12;


  @override
  void initState() {
    super.initState();
    controller_AI_1  = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_2  = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_3  = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_4  = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_5  = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_6  = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_7  = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_8  = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_9  = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_10 = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_11 = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
    controller_AI_12 = AnimationController(duration: const Duration(milliseconds: 500), vsync: this);
  }

  @override
  Widget build(BuildContext context) {

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    bool AI_1_isPlaying = false;

    _onpressed_AI_1() {
        if(AI_1_isPlaying==false){
          AI_1_isPlaying=true;
          controller_AI_1.forward();
        }
        else{
          AI_1_isPlaying=false;
          controller_AI_1.reverse();
        }
    }

    Widget AI_1_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.home_menu,
        progress: controller_AI_1,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_1(),
    );

    String AI_1_Code=
        "bool AI_1_isPlaying = false;\n\n"
        "var controller_AI_1 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_1() {\n"
        " if(AI_1_isPlaying==false){\n"
        "   AI_1_isPlaying=true;\n"
        "   controller_AI_1.forward();\n"
        " }else{\n"
        "   AI_1_isPlaying=false;\n"
        "   controller_AI_1.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.home_menu,\n"
        "  progress: controller_AI_1,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_1(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------

    bool AI_2_isPlaying = false;

    _onpressed_AI_2() {
      if(AI_2_isPlaying==false){
        AI_2_isPlaying=true;
        controller_AI_2.forward();
      }
      else{
        AI_2_isPlaying=false;
        controller_AI_2.reverse();
      }
    }

    Widget AI_2_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.close_menu,
        progress: controller_AI_2,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_2(),
    );

    String AI_2_Code=
        "bool AI_2_isPlaying = false;\n\n"
        "var controller_AI_2 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_2() {\n"
        " if(AI_2_isPlaying==false){\n"
        "   AI_2_isPlaying=true;\n"
        "   controller_AI_2.forward();\n"
        " }else{\n"
        "   AI_2_isPlaying=false;\n"
        "   controller_AI_2.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.close_menu,\n"
        "  progress: controller_AI_2,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_2(),\n"
        ");";


    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------


    bool AI_3_isPlaying = false;

    _onpressed_AI_3() {
      if(AI_3_isPlaying==false){
        AI_3_isPlaying=true;
        controller_AI_3.forward();
      }
      else{
        AI_3_isPlaying=false;
        controller_AI_3.reverse();
      }
    }

    Widget AI_3_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_close,
        progress: controller_AI_3,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_3(),
    );

    String AI_3_Code=
        "bool AI_3_isPlaying = false;\n\n"
        "var controller_AI_3 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_3() {\n"
        " if(AI_3_isPlaying==false){\n"
        "   AI_3_isPlaying=true;\n"
        "   controller_AI_3.forward();\n"
        " }else{\n"
        "   AI_3_isPlaying=false;\n"
        "   controller_AI_3.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.menu_close\n"
        "  progress: controller_AI_3,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_3(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------

    bool AI_4_isPlaying = false;

    _onpressed_AI_4() {
      if(AI_4_isPlaying==false){
        AI_4_isPlaying=true;
        controller_AI_4.forward();
      }
      else{
        AI_4_isPlaying=false;
        controller_AI_4.reverse();
      }
    }

    Widget AI_4_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.list_view,
        progress: controller_AI_4,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_4(),
    );

    String AI_4_Code=
        "bool AI_4_isPlaying = false;\n\n"
        "var controller_AI_4 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_4() {\n"
        " if(AI_4_isPlaying==false){\n"
        "   AI_4_isPlaying=true;\n"
        "   controller_AI_4.forward();\n"
        " }else{\n"
        "   AI_4_isPlaying=false;\n"
        "   controller_AI_4.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.list_view\n"
        "  progress: controller_AI_4,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_4(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------


    bool AI_5_isPlaying = false;

    _onpressed_AI_5() {
      if(AI_5_isPlaying==false){
        AI_5_isPlaying=true;
        controller_AI_5.forward();
      }
      else{
        AI_5_isPlaying=false;
        controller_AI_5.reverse();
      }
    }

    Widget AI_5_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.add_event,
        progress: controller_AI_5,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_5(),
    );

    String AI_5_Code=
        "bool AI_5_isPlaying = false;\n\n"
        "var controller_AI_5 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_5() {\n"
        " if(AI_5_isPlaying==false){\n"
        "   AI_5_isPlaying=true;\n"
        "   controller_AI_5.forward();\n"
        " }else{\n"
        "   AI_5_isPlaying=false;\n"
        "   controller_AI_5.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.add_event\n"
        "  progress: controller_AI_5,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_5(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------

    bool AI_6_isPlaying = false;

    _onpressed_AI_6() {
      if(AI_6_isPlaying==false){
        AI_6_isPlaying=true;
        controller_AI_6.forward();
      }
      else{
        AI_6_isPlaying=false;
        controller_AI_6.reverse();
      }
    }

    Widget AI_6_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.event_add,
        progress: controller_AI_6,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_6(),
    );

    String AI_6_Code=
        "bool AI_6_isPlaying = false;\n\n"
        "var controller_AI_6 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_6() {\n"
        " if(AI_6_isPlaying==false){\n"
        "   AI_6_isPlaying=true;\n"
        "   controller_AI_6.forward();\n"
        " }else{\n"
        "   AI_6_isPlaying=false;\n"
        "   controller_AI_6.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.event_add\n"
        "  progress: controller_AI_6,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_6(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------


    bool AI_7_isPlaying = false;

    _onpressed_AI_7() {
      if(AI_7_isPlaying==false){
        AI_7_isPlaying=true;
        controller_AI_7.forward();
      }
      else{
        AI_7_isPlaying=false;
        controller_AI_7.reverse();
      }
    }

    Widget AI_7_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.arrow_menu,
        progress: controller_AI_7,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_7(),
    );

    String AI_7_Code=
        "bool AI_7_isPlaying = false;\n\n"
        "var controller_AI_7 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_7() {\n"
        " if(AI_7_isPlaying==false){\n"
        "   AI_7_isPlaying=true;\n"
        "   controller_AI_7.forward();\n"
        " }else{\n"
        "   AI_7_isPlaying=false;\n"
        "   controller_AI_7.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.arrow_menu\n"
        "  progress: controller_AI_7,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_7(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------


    bool AI_8_isPlaying = false;

    _onpressed_AI_8() {
      if(AI_8_isPlaying==false){
        AI_8_isPlaying=true;
        controller_AI_8.forward();
      }
      else{
        AI_8_isPlaying=false;
        controller_AI_8.reverse();
      }
    }

    Widget AI_8_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: controller_AI_8,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_8(),
    );

    String AI_8_Code=
        "bool AI_8_isPlaying = false;\n\n"
        "var controller_AI_8 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_8() {\n"
        " if(AI_8_isPlaying==false){\n"
        "   AI_8_isPlaying=true;\n"
        "   controller_AI_8.forward();\n"
        " }else{\n"
        "   AI_8_isPlaying=false;\n"
        "   controller_AI_8.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.menu_arrow\n"
        "  progress: controller_AI_8,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_8(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------

    bool AI_9_isPlaying = false;

    _onpressed_AI_9() {
      if(AI_9_isPlaying==false){
        AI_9_isPlaying=true;
        controller_AI_9.forward();
      }
      else{
        AI_9_isPlaying=false;
        controller_AI_9.reverse();
      }
    }

    Widget AI_9_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.ellipsis_search,
        progress: controller_AI_9,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_9(),
    );

    String AI_9_Code=
        "bool AI_9_isPlaying = false;\n\n"
        "var controller_AI_9 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_9() {\n"
        " if(AI_9_isPlaying==false){\n"
        "   AI_9_isPlaying=true;\n"
        "   controller_AI_9.forward();\n"
        " }else{\n"
        "   AI_9_isPlaying=false;\n"
        "   controller_AI_9.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.ellipsis_search\n"
        "  progress: controller_AI_9,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_9(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------

    bool AI_10_isPlaying = false;

    _onpressed_AI_10() {
      if(AI_10_isPlaying==false){
        AI_10_isPlaying=true;
        controller_AI_10.forward();
      }
      else{
        AI_10_isPlaying=false;
        controller_AI_10.reverse();
      }
    }

    Widget AI_10_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.search_ellipsis,
        progress: controller_AI_10,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_10(),
    );

    String AI_10_Code=
        "bool AI_10_isPlaying = false;\n\n"
        "var controller_AI_10 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_10() {\n"
        " if(AI_10_isPlaying==false){\n"
        "   AI_10_isPlaying=true;\n"
        "   controller_AI_10.forward();\n"
        " }else{\n"
        "   AI_10_isPlaying=false;\n"
        "   controller_AI_10.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.search_ellipsis\n"
        "  progress: controller_AI_10,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_10(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------

    bool AI_11_isPlaying = false;

    _onpressed_AI_11() {
      if(AI_11_isPlaying==false){
        AI_11_isPlaying=true;
        controller_AI_11.forward();
      }
      else{
        AI_11_isPlaying=false;
        controller_AI_11.reverse();
      }
    }

    Widget AI_11_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.play_pause,
        progress: controller_AI_11,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_11(),
    );

    String AI_11_Code=
        "bool AI_11_isPlaying = false;\n\n"
        "var controller_AI_11 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_11() {\n"
        " if(AI_11_isPlaying==false){\n"
        "   AI_11_isPlaying=true;\n"
        "   controller_AI_11.forward();\n"
        " }else{\n"
        "   AI_11_isPlaying=false;\n"
        "   controller_AI_11.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.play_pause\n"
        "  progress: controller_AI_11,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_11(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------


    bool AI_12_isPlaying = false;

    _onpressed_AI_12() {
      if(AI_12_isPlaying==false){
        AI_12_isPlaying=true;
        controller_AI_12.forward();
      }
      else{
        AI_12_isPlaying=false;
        controller_AI_12.reverse();
      }
    }

    Widget AI_12_Widget=IconButton(
      iconSize:35,
      icon: AnimatedIcon(
        icon: AnimatedIcons.pause_play,
        progress: controller_AI_12,
        color:Colors.red,
      ),
      onPressed: () => _onpressed_AI_12(),
    );

    String AI_12_Code=
        "bool AI_12_isPlaying = false;\n\n"
        "var controller_AI_12 = AnimationController(\n"
        " duration: const Duration(milliseconds: 500),\n"
        " vsync: this\n"
        ");\n\n"
        "_onpressed_AI_12() {\n"
        " if(AI_12_isPlaying==false){\n"
        "   AI_12_isPlaying=true;\n"
        "   controller_AI_12.forward();\n"
        " }else{\n"
        "   AI_12_isPlaying=false;\n"
        "   controller_AI_12.reverse();\n"
        " }\n"
        "}\n\n"
        "IconButton(\n"
        " iconSize:35,\n"
        " icon: AnimatedIcon(\n"
        "  icon: AnimatedIcons.pause_play\n"
        "  progress: controller_AI_12,\n"
        "  color:Colors.red,\n"
        " ),\n"
        " onPressed:()=> _onpressed_AI_12(),\n"
        ");";

    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------
    //--------------------------------


    return MaterialApp(
        debugShowCheckedModeBanner:false,
        title:"Animated Icons",
        home:Scaffold(
          appBar: new AppBar(
            leading: IconButton(
              icon: new Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
              onPressed: (){
                Navigator.of(context).pushReplacementNamed("/BackDrop_Custom");
              },
            ),
            title: Row(
              mainAxisAlignment:
              MainAxisAlignment.center,
              children: <Widget>[
                Expanded(
                    child:
                    SizedBox(
                        width: MediaQuery.of(context).size.width-50,
                        height: MediaQuery.of(context).size.height,
                        child:
                        Marquee(
                          text:"Animated Icons",
                          style:TextStyle(
                              fontSize:20,
                              fontWeight:FontWeight.bold,
                              color:Colors.white
                          ),
                          scrollAxis:Axis.horizontal,
                          blankSpace:300,
                          crossAxisAlignment:CrossAxisAlignment.center,
                        )
                    )
                ),
              ],
            ),
            actions: <Widget>[
              IconButton(
                icon: Icon(Icons.format_list_numbered),
                onPressed: (){
                  Navigator.of(context).pushReplacementNamed("/Main");
                },
              ),
              IconButton(
                icon: Icon(Icons.arrow_forward),
                onPressed: (){
                  Navigator.push(context,MaterialPageRoute(builder:(context)=>CmpCodePage(
                    Title:"AnimatedIcons.home_menu",
                    BackRoute:"/Animated_Icons",
                    NextRoute:"/AI2",
                    ItemList:SetList("AnimatedIcons.home_menu"),
                    CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/1_AI_1.dart",
                    TabIcon:Icon(Icons.video_library),
                    ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.home_menu\n",
                    TxtExplanation:Exp("AI_1_Run","_AI_1_tate"),
                    RunCodeRoute:new AI_1_Run(),
                  ),));
                },
              ),
            ],
          ),
          body:
          ListView(
            children: <Widget>[

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
                          CmpTitle(Title:"Animated Icons",),
                          Divider(),
                          CmpSubTitle(SubTitle:"Animated Icon That Take A Controller An Keeo Changing Forward And Reverse\n\n",),
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
                          CmpTitle(Title:"Animated Icons:",),
                          CmpSubTitle(SubTitle:"Click On Icon To Activate",),

                          Divider(),


                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.home_menu,",
                            Code:AI_1_Code,
                            PutWidget:AI_1_Widget,
                            GoRoute:"/AI1",
                          ),

                          Divider(),

                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.close_menu",
                            Code:AI_2_Code,
                            PutWidget:AI_2_Widget,
                            GoRoute:"/AI2",
                          ),

                          Divider(),

                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.menu_close",
                            Code:AI_3_Code,
                            PutWidget:AI_3_Widget,
                            GoRoute:"/AI3",
                          ),

                          Divider(),

                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.list_view",
                            Code:AI_4_Code,
                            PutWidget:AI_4_Widget,
                            GoRoute:"/AI4",
                          ),

                          Divider(),


                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.add_event",
                            Code:AI_5_Code,
                            PutWidget:AI_5_Widget,
                            GoRoute:"/AI5",
                          ),

                          Divider(),

                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.event_add",
                            Code:AI_6_Code,
                            PutWidget:AI_6_Widget,
                            GoRoute:"/AI6",
                          ),

                          Divider(),

                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.arrow_menu",
                            Code:AI_7_Code,
                            PutWidget:AI_7_Widget,
                            GoRoute:"/AI7",
                          ),

                          Divider(),

                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.menu_arrow",
                            Code:AI_8_Code,
                            PutWidget:AI_8_Widget,
                            GoRoute:"/AI8",
                          ),

                          Divider(),

                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.ellipsis_search",
                            Code:AI_9_Code,
                            PutWidget:AI_9_Widget,
                            GoRoute:"/AI9",
                          ),

                          Divider(),

                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.search_ellipsis",
                            Code:AI_10_Code,
                            PutWidget:AI_10_Widget,
                            GoRoute:"/AI10",
                          ),

                          Divider(),

                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.play_pause",
                            Code:AI_11_Code,
                            PutWidget:AI_11_Widget,
                            GoRoute:"/AI11",
                          ),

                          Divider(),

                          Cmp_ListTile_GoCode2(
                            Title:"AnimatedIcons.pause_play",
                            Code:AI_12_Code,
                            PutWidget:AI_12_Widget,
                            GoRoute:"/AI12",
                          ),

                          Divider(),














                        ]
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),



        routes: <String, WidgetBuilder>{

          "/Animated_Icons": (BuildContext context)                               =>Animated_Icons(),

          "/AI1": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.home_menu",
            BackRoute:"/Animated_Icons",
            NextRoute:"/AI2",
            ItemList:SetList("AnimatedIcons.home_menu"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/1_AI_1.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.home_menu\n",
            TxtExplanation:Exp("AI_1_Run","_AI_1_tate"),
            RunCodeRoute:new AI_1_Run(),
          ),

          "/AI2": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.close_menu",
            BackRoute:"/AI1",
            NextRoute:"/AI3",
            ItemList:SetList("AnimatedIcons.close_menu"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/2_AI_2.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.close_menu\n",
            TxtExplanation:Exp("AI_2_Run","_AI_2_tate"),
            RunCodeRoute:new AI_2_Run(),
          ),

          "/AI3": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.menu_close",
            BackRoute:"/AI2",
            NextRoute:"/AI4",
            ItemList:SetList("AnimatedIcons.menu_close"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/3_AI_3.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.menu_close\n",
            TxtExplanation:Exp("AI_3_Run","_AI_3_tate"),
            RunCodeRoute:new AI_3_Run(),
          ),


          "/AI4": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.list_view",
            BackRoute:"/AI3",
            NextRoute:"/AI5",
            ItemList:SetList("AnimatedIcons.list_view"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/4_AI_4.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.list_view\n",
            TxtExplanation:Exp("AI_4_Run","_AI_4_tate"),
            RunCodeRoute:new AI_4_Run(),
          ),


          "/AI5": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.add_event",
            BackRoute:"/AI4",
            NextRoute:"/AI6",
            ItemList:SetList("AnimatedIcons.add_event"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/5_AI_5.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.add_event\n",
            TxtExplanation:Exp("AI_5_Run","_AI_5_tate"),
            RunCodeRoute:new AI_5_Run(),
          ),


          "/AI6": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.event_add",
            BackRoute:"/AI5",
            NextRoute:"/AI7",
            ItemList:SetList("AnimatedIcons.event_add"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/6_AI_6.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.event_add\n",
            TxtExplanation:Exp("AI_6_Run","_AI_6_tate"),
            RunCodeRoute:new AI_6_Run(),
          ),


          "/AI7": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.arrow_menu",
            BackRoute:"/AI6",
            NextRoute:"/AI8",
            ItemList:SetList("AnimatedIcons.arrow_menu"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/7_AI_7.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.arrow_menu\n",
            TxtExplanation:Exp("AI_7_Run","_AI_7_tate"),
            RunCodeRoute:new AI_7_Run(),
          ),


          "/AI8": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.menu_arrow",
            BackRoute:"/AI7",
            NextRoute:"/AI9",
            ItemList:SetList("AnimatedIcons.menu_arrow"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/8_AI_8.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.menu_arrow\n",
            TxtExplanation:Exp("AI_8_Run","_AI_8_tate"),
            RunCodeRoute:new AI_8_Run(),
          ),



          "/AI9": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.ellipsis_search",
            BackRoute:"/AI8",
            NextRoute:"/AI10",
            ItemList:SetList("AnimatedIcons.ellipsis_search"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/9_AI_9.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.ellipsis_search\n",
            TxtExplanation:Exp("AI_9_Run","_AI_9_tate"),
            RunCodeRoute:new AI_9_Run(),
          ),


          "/AI10": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.search_ellipsis",
            BackRoute:"/AI9",
            NextRoute:"/AI11",
            ItemList:SetList("AnimatedIcons.search_ellipsis"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/10_AI_10.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.search_ellipsis\n",
            TxtExplanation:Exp("AI_10_Run","_AI_10_tate"),
            RunCodeRoute:new AI_10_Run(),
          ),


          "/AI11": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.play_pause",
            BackRoute:"/AI10",
            NextRoute:"/AI12",
            ItemList:SetList("AnimatedIcons.play_pause"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/11_AI_11.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.play_pause\n",
            TxtExplanation:Exp("AI_11_Run","_AI_11_tate"),
            RunCodeRoute:new AI_11_Run(),
          ),


          "/AI12": (BuildContext context)                                          =>CmpCodePage(
            Title:"AnimatedIcons.pause_play",
            BackRoute:"/AI11",
            NextRoute:"/Main",
            ItemList:SetList("AnimatedIcons.pause_play"),
            CodeRoute:"lib/Codes_FrontEnd/58_Animated_Icon/12_AI_12.dart",
            TabIcon:Icon(Icons.video_library),
            ToDo:"We Need To Write A Page That Show A Centered AnimatedIcons.pause_play\n",
            TxtExplanation:Exp("AI_12_Run","_AI_12_tate"),
            RunCodeRoute:new AI_12_Run(),
          ),

          "/BackDrop_Custom": (BuildContext context)                        => CmpCodePage(
            Title:"Simple BackDrop",
            BackRoute:"/BackDrop_Right",
            NextRoute:"/Animated_Icons",
            ItemList:BackDrop_Custom_List,
            CodeRoute:"lib/Codes_FrontEnd/57_BackDrop/3_BackDrop_Custom.dart",
            TabIcon:Icon(Icons.menu),
            ToDo:"Create A Page Containing Taking Teal Background Color Backdrop,Customizable Icon.Set 2 ListTile That Each Change FrontLayer Page",
            TxtExplanation:BackDrop_Custom_Explanation,
            RunCodeRoute:new CustomBackDrop(),
          ),







        }
    );




  }




  @override
  void dispose() {
    controller_AI_1.dispose();
    controller_AI_2.dispose();
    controller_AI_3.dispose();
    controller_AI_4.dispose();
    controller_AI_5.dispose();
    controller_AI_6.dispose();
    controller_AI_7.dispose();
    controller_AI_8.dispose();
    controller_AI_9.dispose();
    controller_AI_10.dispose();
    controller_AI_11.dispose();
    controller_AI_12.dispose();
    super.dispose();
  }



  String Exp(String MainClassName,String StateClassName){
    String Explanation=
        "-main is a principal method called once the program is loaded\n\n"
        "-Once Program Is Loaded runApp Will Run And Call Our Class That We Created($MainClassName) To Be Runned\n\n"
        "-This Class Is Statefull Widget Due To Detecting Animated Icon Animation\n\n"
        "-Creating $MainClassName Class And Creating Its State\n\n"
        "-Creating State Class $StateClassName That Extends Its Main State From The Main Class $MainClassName\n\n"
        "-Creating Animation Controller To Control Animation And Bool Var To Detect If Animated Icon Reversed Or No\n\n"
        "-Creating Method That Will Play The Animation _onpressed_AI That Will Check If Not Reversed Then It Will reverse Using Animation Controller And Change The Bool Variable To oppsent To PLay Next Animation\n\n"
        "-When Page Is Loaded Initializing State And Set Contoller Setting Duration That Take 500ms\n\n"
        "-As Flutter is Based On Widget A Widget must be Builded\n\n"
        "-Creating An Material App That Hold the Title Of The App That Show When We Need To Close It\n\n"
        "-As An Home It Take Scaffold That Allow Us To Use AppBar And Set The Body Of The Page\n\n"
        "-As AppBar It Has An Title Text\n\n"
        "-As An Body It Has Centered Layout\n\n"
        "-Centered Layout Take IconButton Sized Set To 100 (Width & Height)\n\n"
        "-IconButton Take Animated Icon That Take The icon,progress,color\n\n"
        "-Once Icon Button Is Pressed Calling ChangeAnimation Method That We Created\n\n";
    return Explanation;
  }

  List SetList(String IconName){
    List AI_list =[
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

                  CmpSubTitle(SubTitle:"1-Creating AnimationController To Control Animation\n"),
                  CmpCode(CodeTxt:"AnimationController controller_AI;\n\n",),

                  CmpSubTitle(SubTitle:"2-Creating bool Variable To Know If Animation Reversed Or No\n"),
                  CmpCode(CodeTxt:"bool AI_isPlaying = false;\n\n",),

                  CmpSubTitle(SubTitle:"3-Set AnimationController Setting\n"),
                  CmpCode(
                    CodeTxt:
                    "void initState() {\n"
                        " controller_AI = AnimationController(\n"
                        "  duration:const Duration(milliseconds:500),\n"
                        "  vsync: this\n"
                        " );\n\n"
                        "}\n\n",
                  ),

                  CmpSubTitle(SubTitle:"4-Play Method\n"),
                  CmpCode(
                    CodeTxt:
                    "_onpressed_AI() {\n"
                        " if(AI_isPlaying==false){\n"
                        "   AI_isPlaying=true;\n"
                        "   controller_AI.forward();\n"
                        " }else{\n"
                        "   AI_isPlaying=false;\n"
                        "   controller_AI.reverse();\n"
                        " }\n"
                        "}\n\n",
                  ),

                  CmpSubTitle(SubTitle:"5-Widget\n"),
                  CmpCode(
                    CodeTxt:
                    "IconButton(\n"
                        " iconSize:35,\n"
                        " icon: AnimatedIcon(\n"
                        "  icon:$IconName,\n"
                        "  progress: controller_AI,\n"
                        "  color:Colors.red,\n"
                        " ),\n"
                        " onPressed:()=> _onpressed_AI(),\n"
                        ");",

                  )
                ]
            ),
          ),
        ),
      ),
      SizedBox(height:5,),
    ];
    return AI_list;
  }












}