import 'package:flutter/material.dart';


void main() {
  runApp(Scaffold_resizeToAvoidBottomPadding_false());
}


class Scaffold_resizeToAvoidBottomPadding_false extends StatelessWidget{

 @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Scaffold resizeToAvoidBottomPadding false",
      home:Scaffold(
        resizeToAvoidBottomPadding:false,
      body:Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView(
         children: <Widget>[

            Text(
            "Please Enter Your Name:",
            style:TextStyle(
              color:Colors.teal,
              fontSize:17,
            ),
           ),

           Text(
            "Example: John Doe",
            style:TextStyle(
              color:Colors.blue,
              fontSize:13,
            ),
           ),

           TextField(
                decoration: InputDecoration(
                 icon:Icon(Icons.person),
                 hintText: 'Enter Your Phone Number Here',
            ),
           ),



            SizedBox(height:15,),

            SizedBox(
              width:double.infinity,
                child:RaisedButton(
                  color: Colors.teal,
                  shape:RoundedRectangleBorder(
                   borderRadius: BorderRadius.circular(30.0),
                  ),
                  child:Text('Proceed',style: TextStyle(color: Colors.white,),),
                  onPressed:(){
                    
                  },
                ),
            ),

            Text("Touch The TextField So The KeyBoard Appear ,resizeToAvoidBottomPadding:false Will Not Resize The Body Content Will Stay At Screen!")

          
           
            ],
          ),
        ),
      ),
     
    );
  }

}








