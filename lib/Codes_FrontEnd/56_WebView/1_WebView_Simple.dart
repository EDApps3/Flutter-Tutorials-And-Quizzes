import 'package:flutter/material.dart';
import 'package:flutter_webview_plugin/flutter_webview_plugin.dart';

void main() {
  runApp(new SimpleWebView());
}

class SimpleWebView extends StatefulWidget {
  @override
  _SimpleWebViewState createState() => _SimpleWebViewState();
}


class _SimpleWebViewState extends State<SimpleWebView> {

  @override
  void initState(){
    super.initState();
  }

  @override
  void dispose(){
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title:"Simple WebView",
      debugShowCheckedModeBanner:false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Simple WebView"),
        ),
        body:
         Center(
           child:
           Column(
             crossAxisAlignment: CrossAxisAlignment.center,
             mainAxisAlignment: MainAxisAlignment.center,
             children: <Widget>[
               Icon(
                 Icons.web_asset,
                 size:150,
               ),
               RaisedButton(
                   child: Text('Go Now'),
                   onPressed: () {
                     Navigator.push(context, MaterialPageRoute(builder:(context)=>GooglePage()));
                   }
               ),
               SizedBox(height:5),
               Text("Internet Connection Required")
             ],
           ),
         )
      ),

    );
  }

}

class GooglePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title:Text("Google WebView"),
      ),
      body:WebviewScaffold(
          url: "https://google.com",
          withZoom: false,
          withLocalStorage: true,
          hidden:true,
          initialChild:Center(
              child:Column(
                children: <Widget>[
                  SizedBox(height:250,),
                  CircularProgressIndicator(),
                  SizedBox(height:5,),
                  Text("Loading..."),
                ],
              )
            ),
      ),
    );
  }
}






