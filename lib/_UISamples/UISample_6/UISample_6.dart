import 'package:flutter/material.dart';
import 'dart:math';
import 'package:audioplayers/audio_cache.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(UISample6());
}

var Fish1_Title="Barbus";
var Fish1_Description="Barbus is a genus of ray-finned fish in the family Cyprinidae. The type species of Barbus is the common barbel, first described as Cyprinus barbus and now named Barbus barbus. Barbus is the namesake genus of the subfamily Barbinae, but given their relationships, that taxon is better included in the Cyprininae at least for the largest part (including the type species of Barbus).";
var Fish1_ImgSrc="Images/Fish1.jpg";
var Fish1_CoverSrc="Images/Fish1_Cover.jpg";
var Fish1_Hero="To_Fish1";


var Fish2_Title="Hemiscylliidae";
var Fish2_Description="The Hemiscylliidae are a family of sharks in the order Orectolobiformes, commonly known as longtail carpet sharks and sometimes as bamboo sharks. They are found in shallow waters of the tropical Indo-Pacific.They are relatively small sharks, with the largest species reaching no more than 121 cm (48 in) in adult body length. They have elongated, cylindrical bodies, with short barbels and large spiracles. As their common name suggests, they have unusually long tails, which exceed the length of the rest of their bodies. They are sluggish fish, feeding on bottom-dwelling invertebrates and smaller fish";
var Fish2_ImgSrc="Images/Fish2.jpg";
var Fish2_CoverSrc="Images/Fish2_Cover.jpg";
var Fish2_Hero="To_Fish2";

var Fish3_Title="giant danio";
var Fish3_Description="The giant danio (Devario aequipinnatus) is a tropical fish belonging to the minnow family Cyprinidae. Originating in Sri Lanka, Nepal, and the west coast of India, this species grows to a maximum length of 4 inches (10 cm), making it one of the largest of the danionins. It is characterized by a blue and yellow, torpedo-shaped body with gray and clear fins.";
var Fish3_ImgSrc="Images/Fish3.jpg";
var Fish3_CoverSrc="Images/Fish3_Cover.jpg";
var Fish3_Hero="To_Fish3";

AudioPlayer advancedPlayer;
AudioCache audioCache;
AnimationController AC1,AC2,AC3,AC4;
Animation<double> TB1,TB2,TB3,TB4;

void PlayBubbleAnim(){
    audioCache.play('Music/Bubble.mp3');
    AC1.reset();
    AC1.forward();
    AC4.reset();
    AC4.forward();
    Future.delayed(Duration(seconds:1));
    AC2.reset();
    AC2.forward();
    AC3.reset();
    AC3.forward();
}

void initPlayer(){
  advancedPlayer = new AudioPlayer();
  audioCache = new AudioCache(fixedPlayer: advancedPlayer);
}

  Transform Ball(String TextNumber,var TB,AnimationController AC){
    return Transform(
      transform: Matrix4.translationValues(
        0.0,
          TB,
        0.0
      ),
      child:ClipOval(
              child:Container(
                width:80, 
                height:100, 
                child:Image.asset("Images/Bubbles.gif")
              ),
            ),
    );
  }

  
  Animation<double> TB(double end,AnimationController AC){
    return Tween<double>(begin:0, end:end,).animate(
        CurvedAnimation(parent: AC,
          curve: Interval(
            0.0,
            0.75,
            curve:Curves.easeOut,
          ),
        ));
  }



class UISample6 extends StatefulWidget {
  @override
  _UISample6State createState() => _UISample6State();
}

class _UISample6State extends State<UISample6> with TickerProviderStateMixin {



  AnimationController AC(){
    return AnimationController(
        vsync: this,
        duration: Duration(seconds:5)
    )..addListener(() {
      setState(() {
      });
    });
  }


  @override
  initState() {
    super.initState();
    initPlayer();

    AC1 = AC();
    AC2 = AC();
    AC3 = AC();
    AC4 = AC();

    TB1 = TB(-1000, AC1);
    TB2 = TB(-800, AC2);
    TB3 = TB(-1000, AC3);
    TB4 = TB(-700, AC4); 

    PlayBubbleAnim();
  }

  @override
  dispose() {
    super.dispose();
  }






  
Padding FishCard(String FishTitle,String FishDesc,String FishImgSrc,String ToHero,FishPage Redirect){
  return Padding(
   padding: const EdgeInsets.all(8.0),
    child: Container(
      width:MediaQuery.of(context).size.width,
      height:120,
      child:Stack(
        children: <Widget>[
          Row(children: <Widget>[
            SizedBox(width:75,),       
            Container(
              height:100, 
                width:MediaQuery.of(context).size.width-95, 
                child:Card(child:ListTile(
                   title:Padding(
                     padding: const EdgeInsets.only(left:12,right:0,top:0,bottom:0),
                     child: Text(FishTitle),
                   ),
                   subtitle:Padding(
                     padding: const EdgeInsets.only(left:12,right:0,top:0,bottom:0),
                     child: Text(
                       FishDesc,
                       overflow:TextOverflow.ellipsis,
                       maxLines:3, 
                     ),
                   ),
                   onTap:(){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>Redirect));
                   },
                  ),
                 ),
                ),
               ],
              ),   
              ClipOval(
                child:Container(
                  width:100, 
                  height:100,   
                  child:Hero(
                    tag:ToHero,
                    child:Image.asset(FishImgSrc,fit:BoxFit.cover,),
                  ),
                ),
              ),
            ],
          ),
        ),
     );
}


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
        appBar:AppBar(
            title:Text("Fish Info"),
        ),
        body:GestureDetector(
          onTap:(){
            PlayBubbleAnim();
          },
          child:Stack(
           children: <Widget>[
            ListView(
             children:<Widget>[
              SizedBox(height:10),
              FishCard(Fish1_Title,Fish1_Description,Fish1_ImgSrc,Fish1_Hero,FishPage(
                FishTitle   : Fish1_Title,
                FishDescr   : Fish1_Description,
                FishImgSrc  : Fish1_ImgSrc,
                ToHero      : Fish1_Hero, 
                FishCoverImg: Fish1_CoverSrc)
              ),
              SizedBox(height:7),
              FishCard(Fish2_Title,Fish2_Description,Fish2_ImgSrc,Fish2_Hero,FishPage(
                FishTitle   : Fish2_Title,
                FishDescr   : Fish2_Description,
                FishImgSrc  : Fish2_ImgSrc,
                ToHero      : Fish2_Hero, 
                FishCoverImg: Fish2_CoverSrc)
              ),
              SizedBox(height:7),
              FishCard(Fish3_Title,Fish3_Description,Fish3_ImgSrc,Fish3_Hero,FishPage(
                FishTitle   : Fish3_Title,
                FishDescr   : Fish3_Description,
                FishImgSrc  : Fish3_ImgSrc,
                ToHero      : Fish3_Hero, 
                FishCoverImg: Fish3_CoverSrc)
              ),
             ]
            ),
            Container(
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height,
              child:Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
               crossAxisAlignment:CrossAxisAlignment.end,
               children: <Widget>[
                Ball("1",TB1.value,AC1),
                Ball("2",TB2.value,AC2),
                Ball("3",TB3.value,AC3),
                Ball("4",TB4.value,AC4),
               ],
             ),
            ),
          ],
        ),
        ),
      ),
    );
  }
}



class FishPage extends StatefulWidget {
  String FishTitle,FishDescr,FishImgSrc,ToHero,FishCoverImg;

  FishPage({
    @required this.FishTitle,
    @required this.FishDescr,
    @required this.FishImgSrc,
    @required this.ToHero,
    @required this.FishCoverImg,
  });

  @override
  FishPageState createState() => FishPageState();
}

class FishPageState extends State<FishPage> with TickerProviderStateMixin {

  AnimationController AC(){
    return AnimationController(
        vsync: this,
        duration: Duration(seconds:5)
    )..addListener(() {
      setState(() {
      });
    });
  }


  @override
  initState() {
    super.initState();
    initPlayer();

    AC1 = AC();
    AC2 = AC();
    AC3 = AC();
    AC4 = AC();

    TB1 = TB(-1000, AC1);
    TB2 = TB(-800, AC2);
    TB3 = TB(-1000, AC3);
    TB4 = TB(-700, AC4); 

    PlayBubbleAnim();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:Text(this.widget.FishTitle),
        ),
        body:GestureDetector(
          onTap:(){
          },
          child:Stack(children: <Widget>[

          
          ListView(
            children: <Widget>[

              Stack(
                children: <Widget>[  
                  Container(
                   width:MediaQuery.of(context).size.width,
                   height:200,
                   decoration:BoxDecoration(
                   image:DecorationImage(
                    fit:BoxFit.cover,
                    image:AssetImage(this.widget.FishCoverImg,),
                   )
                   ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left:0,right:0,top:140,bottom:0),
                    child: Center(
                    child:Container(
                    width:120, 
                    height:120,      
                    decoration:BoxDecoration(border:Border.all(width:2,color:Colors.blue)),
                    child:Hero(
                      tag:this.widget.ToHero,
                      child:Image.asset(this.widget.FishImgSrc,fit:BoxFit.cover,),
                    ),
                ),
              ),
                  ),

                ],
              ),
              

        

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  this.widget.FishTitle,
                  textAlign:TextAlign.center,
                  style:TextStyle(
                    fontSize:20,
                    fontFamily:"RaleWay",
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  this.widget.FishDescr,
                  textAlign:TextAlign.justify,
                  style:TextStyle(
                    fontSize:14,
                    fontFamily:"RaleWay",
                  ),
                ),
              ),


             

            ],
          ),
        
           Container(
              width:MediaQuery.of(context).size.width,
              height:MediaQuery.of(context).size.height,
              child:Row(
               mainAxisAlignment:MainAxisAlignment.spaceBetween,
               crossAxisAlignment:CrossAxisAlignment.end,
               children: <Widget>[
                Ball("1",TB1.value,AC1),
                Ball("2",TB2.value,AC2),
                Ball("3",TB3.value,AC3),
                Ball("4",TB4.value,AC4),
               ],
             ),
            ),
        
          ],
          ),
        
        ),
    );
  }
}



