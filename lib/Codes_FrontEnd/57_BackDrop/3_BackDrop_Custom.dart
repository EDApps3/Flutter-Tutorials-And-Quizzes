import 'package:flutter/material.dart';
import 'package:backdrop/backdrop.dart';

void main() {
  runApp(new CustomBackDrop());
}

class CustomBackDrop extends StatefulWidget {
  @override
  _CustomBackDropState createState() => _CustomBackDropState();
}


class _CustomBackDropState extends State<CustomBackDrop> {

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }

  int SelectedPageIndex=0;


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Custom BackDrop",
      debugShowCheckedModeBanner:false,
      theme:ThemeData(
        primaryColor:Colors.teal,
        accentColor:Colors.teal,
      ),
      home:BackdropScaffold(

        iconPosition:BackdropIconPosition.none,
        title:Row(
          children: <Widget>[
            BackdropToggleButton(
              icon:AnimatedIcons.home_menu,
            ),
            Text("Custom Backdrop"),
          ],
        ),
        backLayer:Container(
          width:double.infinity,
          height:double.infinity,
          color:Colors.black26,
          child:BackdropNavigationBackLayer(
            items: <Widget>[
              ListTile(
                trailing:Icon(Icons.arrow_forward_ios,color:Colors.white,),
                title:Container(
                  width:double.infinity,
                  height:40,
                  child:Center(
                    child:Text(
                      "Home",
                      style:TextStyle(
                        color:Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              ListTile(
                trailing:Icon(Icons.arrow_forward_ios,color:Colors.white,),
                title:Container(
                  width:double.infinity,
                  height:40,
                  child:Center(
                    child:Text(
                      "About",
                      style:TextStyle(
                        color:Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
            onTap:(int pos)=>{
              setState( ()=>
              SelectedPageIndex=pos
              ),
            },
          ),
        ),
        frontLayer:SelectedPageIndex==0?Home():About(),
      ),
    );
  }

}

class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Home Page",
      home:Scaffold(
        body:Center(
            child:Text("Home Page",)
        ),
      ),
    );
  }

}

class About extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"About Page",
      home:Scaffold(
        body:Center(
            child:Text("About Page",)
        ),
      ),
    );
  }

}




