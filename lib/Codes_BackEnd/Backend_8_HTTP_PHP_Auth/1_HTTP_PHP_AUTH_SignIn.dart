import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(PHP_HTTP_Auth_SignIn());

class Users {
  String UserName,UserPass;

  Users(
    this.UserName,
    this.UserPass,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'UserName'      : UserName,
      'UserPass'      : UserPass,
    };
    return map;
  }

  Users.fromMap(Map<String, dynamic> map) {
    UserName       = map['UserName'];
    UserPass       = map['UserPass'];
  }
}


class PHP_HTTP_Auth_SignIn extends StatefulWidget {
  @override
  PHP_HTTP_Auth_SignIn_State createState() => PHP_HTTP_Auth_SignIn_State();
}

class PHP_HTTP_Auth_SignIn_State extends State<PHP_HTTP_Auth_SignIn> {
  Future<List<Users>> PHPUsersLst;
  TextEditingController UserNameCtrl = new TextEditingController();
  TextEditingController UserPassCtrl = new TextEditingController();
  bool Loading=false;
  String UserNameErrorTxt="Field Required!";
  String UserPassErrorTxt="Field Required!"; 

  Future<List<Users>> getUsers() async {
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
      setState(() {
      Loading=true;
    });
    var url = 'https://httpfluttertest.000webhostapp.com/PHPAuth/GetUsers.php';
    http.Response response = await http.get(url);
    var maps = jsonDecode(response.body);
    List<Users> UsersArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        UsersArr.add(Users.fromMap(maps[i]));
        if(UsersArr[i].UserName==UserName && UsersArr[i].UserPass==UserPass){
          Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>PHPAuthProfilePage()));
        }
      }
    }
    setState(() {
      Loading=false;
      UserNameErrorTxt="Wrong User Or Pass Info";
      UserPassErrorTxt="Wrong User Or Pass Info";
    });
    return UsersArr;
    }
    
  }

 

  @override
  void initState() {
    super.initState();
  }





  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PHP GetData',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("PHP Auth SignIn"),
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
                  child:Text("SignIn"),
                  onPressed:(){
                    getUsers();
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