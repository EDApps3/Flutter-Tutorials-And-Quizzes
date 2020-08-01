import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(PHP_HTTP_Auth_SignUp());


class PHP_HTTP_Auth_SignUp extends StatefulWidget {
  @override
  PHP_HTTP_Auth_SignUp_State createState() => PHP_HTTP_Auth_SignUp_State();
}

class PHP_HTTP_Auth_SignUp_State extends State<PHP_HTTP_Auth_SignUp> {
  TextEditingController UserNameCtrl = new TextEditingController();
  TextEditingController UserPassCtrl = new TextEditingController();
  bool Loading=false;
  String UserNameErrorTxt="Field Required!";
  String UserPassErrorTxt="Field Required!";

  void Register() async {
    var UserName=UserNameCtrl.text;
    var UserPass=UserPassCtrl.text;

    if(UserName==""){
      setState(() {
        UserNameErrorTxt="Please Insert Your UserName";
      });
    }
    else if(UserPass==""){
      setState(() {
        UserPassErrorTxt="Please Insert Your UserPass";
      });
    }
    else{
    var url = 'https://httpfluttertest.000webhostapp.com/PHPAuth/InsertUser.php';

    setState(() {
      Loading=true;
    });

    http.Response response = await http.post(url, body: {
        "UserName": UserName,
        "UserPass": UserPass,
    });

    setState(() {
      Loading=false;
    });

    print(response.body);   
 
    if(response.body=="Failed"){
      setState(() {
        UserNameErrorTxt="UserName Used,Please Try Another One!";
      });
    }
    else{
      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>PHPAuthProfilePage()));
    }
    }
  }

  @override
  void initState() {
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PHP Auth SignUp',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("PHP Auth SignUp"),
        ),
        body:(Loading==false)?ListView(
          children: <Widget>[

            SizedBox(height:20),

            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:2,bottom:2),
              child: Text("UserName:",),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:2,bottom:2),
              child:TextField(
              controller:UserNameCtrl,
              decoration:InputDecoration(
                hintText:"Please Enter A Unique UserName"
              ),
             ), 
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:1,bottom:2),
              child: Text("$UserNameErrorTxt",style:TextStyle(color:Colors.red),),
            ),
            

            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:2,bottom:2),
              child: Text("UserPass:",),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:2,bottom:2),
              child: TextField(
              controller:UserPassCtrl,
              obscureText:true,
              decoration:InputDecoration(
                hintText:"Please Enter Password"
              ),
            ),
            ),
            Padding(
              padding: const EdgeInsets.only(left:10,right:10,top:1,bottom:2),
              child: Text("$UserPassErrorTxt",style:TextStyle(color:Colors.red),),
            ), 
            

            Padding(
              padding: const EdgeInsets.all(8.0),
              child:SizedBox(
                width:MediaQuery.of(context).size.width,
                child:RaisedButton(
                  child:Text("SignUp"),
                  onPressed:(){
                    Register();
                  },
                ),
              ),
            ),



            

          ],
        ):Container(
          width :MediaQuery.of(context).size.width,
          height:MediaQuery.of(context).size.height,
          child :Row(
            mainAxisAlignment:MainAxisAlignment.center,
            children: <Widget>[
              CircularProgressIndicator(),
              SizedBox(width:10,),
              Text("Loading..."),
            ],
          )
        ),
      ),
    );
  }


}



class PHPAuthProfilePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title:"Profile",
      home: new Scaffold(
        body:
         Center(
           child:
            Text("Logged In Successufly!",),
         )
      ),
    );
  }

}