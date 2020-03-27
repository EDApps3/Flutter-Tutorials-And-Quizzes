import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(SimpleAppBarPopupMenuButton());
}


class SimpleAppBarPopupMenuButton extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      debugShowCheckedModeBanner:false,
      title: 'AppBar Popup Menu Button',
      home: new Scaffold(
        appBar:AppBar(
            title: Text('AppBar Popup Menu Button'),
            actions: <Widget>[
               PopupMenuButton<int>(
                  itemBuilder:(context)=>[
                    PopupMenuItem(
                      value:1,
                      child:Row(
                        children: <Widget>[
                          Icon(Icons.star),
                          SizedBox(width:10,),
                          Text("Get The App")
                        ],
                      ),
                    ),
                    PopupMenuItem(
                      value:2,
                      child:Row(
                        children: <Widget>[
                          Icon(Icons.chrome_reader_mode),
                          SizedBox(width:10,),
                          Text("About")
                        ],
                      ),
                    ),
                  ],
                  offset: Offset(0,100),
                  color:Colors.grey,
                  elevation:2,
                  onSelected:(value){
                    if(value==1){
                      _launchUrl();
                    }
                    else if(value==2){
                      PopAlert(context);
                    }
                  },
                ),
            ],
        ),
        body:
         Center(
           child:
            Text("Press the 3 Point Button Up!"),
         ),
      ),
    );
  }

  _launchUrl() async{
    const url="https://play.google.com/store/apps/details?id=edapps.com.flutter_tutorials_and_quizzes";

    if(await canLaunch(url)){
      await launch(url);
    }
    else{
      throw 'Could Not Launch Url!';
    }

  }

  void PopAlert(BuildContext context){
    var AD=new AlertDialog(
      title:Text("About"),
      content:Text("Display Menu When Pressed"),
    );
    showDialog(
        context:context,
        child: AD
    );
  }


}







