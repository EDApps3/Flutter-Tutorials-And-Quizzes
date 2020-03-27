import 'package:flutter/material.dart';

void main() => runApp(ExpandableListTrail());

class ExpandableListTrail extends StatelessWidget {

  void PopAlert(BuildContext context){
    var AD=new AlertDialog(
      title:Text("Tap Detected!"),
      content:Text("ListTile Tapped!"),
    );
    showDialog(
        context:context,
        child: AD
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Expandable List Trail",
      home:Scaffold(
        appBar: AppBar(
          title: Text('Expandable List Trail'),
        ),
        body:
          ListView(
            children: <Widget>[
              Column(
                children:<Widget>[
                  SizedBox(height: 20,),
                  Text(
                    "Select Wanted Option!",
                    style: TextStyle(
                      color: Colors.red,
                      fontSize: 24,
                    ),
                  ),
                  ExpansionTile (
                    title: Text ("Account"),
                    children: <Widget>[
                      Divider(color: Colors.grey,),
                      ListTile (
                        leading: Icon (Icons.add),
                        title: Text ("SignUp"),
                        subtitle: Text ("Where You Can Register An Account"),
                        trailing: new Icon(Icons.arrow_forward_ios),
                        onTap: (){
                          PopAlert(context);
                        },
                      ),
                      Divider(color: Colors.grey,),
                      ListTile (
                        leading: Icon (Icons.account_circle),
                        title: Text ("SignIn"),
                        subtitle: Text ("Where You Can Login With Your Account"),
                        trailing: new Icon(Icons.arrow_forward_ios),
                        onTap: (){
                          PopAlert(context);
                        },
                      ),
                    ],
                  ),
                  SizedBox(height: 10,),
                  ExpansionTile (
                    title: Text ("MoreInfo"),
                    children: <Widget>[
                      Divider(color: Colors.grey,),
                      ListTile (
                        leading: Icon (Icons.phone),
                        title: Text ("Contact"),
                        subtitle: Text ("Where You Can Call Us"),
                        trailing: new Icon(Icons.arrow_forward_ios),
                        onTap: (){
                          PopAlert(context);
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ],
          )
      ),
    );
  }
}
