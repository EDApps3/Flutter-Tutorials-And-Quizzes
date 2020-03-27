import 'package:flutter/material.dart';

void main() {
  runApp(AdvancedHeroRun());
}

class AdvancedHeroRun extends StatefulWidget {
  @override
  _AdvancedHeroState createState() => new _AdvancedHeroState();
}

class _AdvancedHeroState extends State<AdvancedHeroRun> {
  var controller;

  void initState() {
    controller=new PageController(
      initialPage:1,
      viewportFraction:0.85,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner:false,
      title:'Advanced Hero Animation',
      home: new Scaffold(
          appBar:AppBar(
              title:Text('Advanced Hero Animation')
          ),
          body:
          ListView(
            children: <Widget>[

              SizedBox(height:10),

              SizedBox(
                width:double.infinity,
                height:40,
                child:Card(
                  color:Colors.teal,
                  child:Center(
                    child:Text(
                      "Swipe And Select Image!",
                      style:TextStyle(
                        fontSize:20,
                        color:Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              SizedBox(height:10),

              SizedBox(
                height:180,
                child:PageView(
                  controller:controller,
                  children: <Widget>[

                    GestureDetector(
                      child:SizedBox(
                        width:double.infinity,
                        child:Card(
                          child:
                          Hero(
                            tag:'W1',
                            child:Image.asset(
                              "Images/S1.jpg",
                            ),
                          ),
                        ),
                      ),
                      onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>WallPaper1()));
                      },
                    ),


                    GestureDetector(
                      child:SizedBox(
                        width:double.infinity,
                        child:Card(
                          child:
                          Hero(
                            tag:'W2',
                            child:Image.asset(
                              "Images/S2.jpg",
                            ),
                          ),
                        ),
                      ),
                      onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>WallPaper2()));
                      },
                    ),


                    GestureDetector(
                      child:SizedBox(
                        width:double.infinity,
                        child:Card(
                          child:
                          Hero(
                            tag:'W3',
                            child:Image.asset(
                              "Images/S3.jpg",
                            ),
                          ),
                        ),
                      ),
                      onTap:(){
                        Navigator.push(context,MaterialPageRoute(builder:(context)=>WallPaper3()));
                      },
                    ),







                  ],
                ),
              ),


            ],
          )

      ),
    );
  }
}



class WallPaper1 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:Text("WallPaper 1")
        ),
        body:
        ListView(
          children:<Widget>[
            Card(
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag:'W1',
                      child:Image.asset("Images/S1.jpg",),
                    ),
                    SizedBox(height:10,),
                    Text(
                      "About:",
                      style:TextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.bold
                      ),
                    ),
                    Divider(),
                    Text("Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text",),

                  ],
                ),
              ),
            )

          ],
        ),
      );
  }

}



class WallPaper2 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:Text("WallPaper 2")
        ),
        body:
        ListView(
          children:<Widget>[
            Card(
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag:'W2',
                      child:Image.asset("Images/S2.jpg",),
                    ),
                    SizedBox(height:10,),
                    Text(
                      "About:",
                      style:TextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.bold
                      ),
                    ),
                    Divider(),
                    Text("Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text",),

                  ],
                ),
              ),
            )

          ],
        ),
      );
  }


}



class WallPaper3 extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            title:Text("WallPaper 3")
        ),
        body:
        ListView(
          children:<Widget>[
            Card(
              child:Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Hero(
                      tag:'W3',
                      child:Image.asset("Images/S3.jpg",),
                    ),
                    SizedBox(height:10,),
                    Text(
                      "About:",
                      style:TextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.bold
                      ),
                    ),
                    Divider(),
                    Text("Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text Text",),

                  ],
                ),
              ),
            )

          ],
        ),
      );
  }


}

