import 'package:flutter/material.dart';

void main() {
  runApp(SimpleHero());
}


class SimpleHero extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'Hero Animation',
      home: new Scaffold(
        appBar:AppBar(
           title:Text("Hero Animation")
        ),
        body:
         ListView(
           children:<Widget>[
             SizedBox(height:10),
             SizedBox(
               width:double.infinity,
               height:40,
               child:Card(
                 color:Colors.teal,
                 child:Center(
                   child:Text(
                     "Select What You Want!",
                     style:TextStyle(
                       fontSize:20,
                       color:Colors.white,
                     ),
                   ),
                 ),
              ),
             ),
             SizedBox(height:10),
             Card(
               elevation:2,
               child:ListTile(
                 leading:Hero(
                   tag:'To_Flutter',
                   child:Image.asset(
                     "Images/160x160_Flutter.png",
                     width:40,
                     height:40,
                   ),
                 ),
                 title:Text("Flutter"),
                 subtitle:Text(
                   "Flutter Is An Open Source Mobile Application Developement Framwork.Realised By Google On May 2017.CrossPlatform Develop Apps For Android,IOS,Web And Desktop!",
                   overflow:TextOverflow.ellipsis,
                 ),
                 trailing:Icon(Icons.arrow_forward_ios),
                 onTap:(){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>FlutterPage()));
                 },
               ),
             ),
             SizedBox(height:10),
             Card(
               elevation:2,
               child:ListTile(
                 leading:Hero(
                   tag:'To_Dart',
                   child:Image.asset(
                     "Images/Dart_Logo.png",
                     width:40,
                     height:40,
                   ),
                 ),
                 title:Text("Dart"),
                 subtitle:Text(
                   "Dart Is Client Optimized Programing Language For Fast Apps On Multiple Platforms.Realised By Google On May 2013.CrossPlatform Develop Apps For Android,IOS,Web And Desktop!",
                   overflow:TextOverflow.ellipsis,
                 ),
                 trailing:Icon(Icons.arrow_forward_ios),
                 onTap:(){
                   Navigator.push(context,MaterialPageRoute(builder:(context)=>DartPage()));
                 },
               ),
             ),
           ]
         )
      ),
    );
  }


}



class FlutterPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
          appBar:AppBar(
            backgroundColor:Colors.yellow,
            title:Text("Flutter Page")
          ),
          body:
          ListView(
              children:<Widget>[
                Container(
                  width:double.infinity,
                  height:190,
                  child:
                    Center(
                      child:
                      Hero(
                        tag:'To_Flutter',
                        child:Image.asset(
                          "Images/160x160_Flutter.png",
                          width:160,
                          height:160,
                        ),
                      ),
                    ),
                ),
                Card(
                  child:Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: Column(
                      mainAxisAlignment:MainAxisAlignment.start,
                      crossAxisAlignment:CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Flutter",
                          style:TextStyle(
                            fontSize:20,
                            fontWeight:FontWeight.bold
                          ),
                        ),
                        Divider(),
                        Text("Flutter Is An Open Source Mobile Application Developement Framwork.Realised By Google On May 2017.CrossPlatform Develop Apps For Android,IOS,Web And Desktop!",),
                      ],
                    ),
                  ),
                )
              ],
          ),
      );
  }


}


class DartPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:AppBar(
            backgroundColor:Colors.teal,
            title:Text("Dart Page")
        ),
        body:
        ListView(
          children:<Widget>[
            Container(
              width:double.infinity,
              height:190,
              child:
              Center(
                child:
                Hero(
                  tag:'To_Dart',
                  child:Image.asset(
                    "Images/Dart_Logo.png",
                    width:160,
                    height:160,
                  ),
                ),
              ),
            ),
            Card(
              child:Padding(
                padding: const EdgeInsets.all(13.0),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.start,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "Dart",
                      style:TextStyle(
                          fontSize:20,
                          fontWeight:FontWeight.bold
                      ),
                    ),
                    Divider(),
                    Text("Dart Is Client Optimized Programing Language For Fast Apps On Multiple Platforms.Realised By Google On May 2013.CrossPlatform Develop Apps For Android,IOS,Web And Desktop!",),
                  ],
                ),
              ),
            )
          ],
        ),
      );
  }


}