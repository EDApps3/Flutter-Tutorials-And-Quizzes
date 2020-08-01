import 'package:flutter/material.dart';


void main() => runApp(UISample2());

class UISample2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:LoginPage(),
    );
  }
}




class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _LoginPageState();
  }
}

class _LoginPageState extends State<LoginPage> {
  var LoginEmailController   = TextEditingController();
  var LoginPasswController   = TextEditingController();
  String LoginEmail,LoginPass;
  final LoginformKey         = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

     validate() async {
       if (LoginformKey.currentState.validate()) {
        LoginformKey.currentState.save();
       }
     }

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
      body:ListView(
          padding:EdgeInsets.zero,
          children: <Widget>[
             Container(
              width: MediaQuery.of(context).size.width,
              height: 150,  
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue,
                    Colors.blueAccent,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90)
                )
              ),
              child:Column(
                    children: <Widget>[
                  Spacer(),
                  Spacer(),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person,
                        size: 70,
                        color: Colors.white,
                      ),
                      Text(
                        "Login Page",
                        style:TextStyle(
                          color:Colors.white,
                          fontFamily: "Raleway",
                          fontSize:20,
                        ),
                      )
                    ],
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 32,
                          right: 32
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                            fontFamily: "Raleway",
                          ),
                        ),
                      ),
                  ),
                 ],
                 )
            ),

   
             Form(
             key: LoginformKey,
             child:Padding(
               padding: const EdgeInsets.all(18.0),
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height*0.58,
                 child:Column(
                   mainAxisAlignment:MainAxisAlignment.start,
                   crossAxisAlignment:CrossAxisAlignment.start,
                   children: <Widget>[
   
                     SizedBox(height:30,),
                     Text(
                        "   Email:",
                        style:TextStyle(
                          color:Colors.blue.withOpacity(0.6),
                          fontFamily: "Raleway",
                          fontSize:20,
                        ),
                     ), 
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 59,
                      padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        ),
                        color: Colors.white, 
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5
                          )
                        ]
                      ),
                      child:TextFormField(
                           controller:LoginEmailController,
                           keyboardType: TextInputType.emailAddress,
                           validator: (val) => val.length == 0 ? 'Please Enter Your Email' : null,
                           onSaved: (val) => LoginEmail = val,
                           decoration: InputDecoration(
                           border: InputBorder.none,
                           icon: Icon(Icons.person,color:Colors.blue.withOpacity(0.3),),
                           hintText:'Please Enter Your Email',
                           hintStyle:TextStyle(color:Colors.blueGrey.withOpacity(0.3),), 
                        ),
                      ),
                    ),

   
                     SizedBox(height:7,),
                     Text(
                        "   Password:",
                        style:TextStyle(
                          color:Colors.blue.withOpacity(0.6),
                          fontFamily: "Raleway",
                          fontSize:20,
                        ),
                     ), 
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 59,
                      padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5
                          )
                        ]
                      ),
                      child:TextFormField(
                           obscureText:true,
                           controller:LoginPasswController,
                           keyboardType: TextInputType.text,
                           validator: (val) => val.length == 0 ? 'Please Enter Your Password' : null,
                           onSaved: (val) => LoginPass = val,
                           decoration: InputDecoration(
                           border: InputBorder.none,
                           icon: Icon(Icons.security,color:Colors.blue.withOpacity(0.3),),
                           hintText:'Please Enter Your Password',
                           hintStyle:TextStyle(color:Colors.blueGrey.withOpacity(0.3),), 
                        ),
                      ),
                    ),

                    Align(
                     alignment: Alignment.centerRight,
                      child:FlatButton(
                        onPressed:(){

                        },
                      child:Text('Forgot Password ?',
                        style: TextStyle(
                          color: Colors.grey
                        ),
                      ),
                    )
                  ),
  
                  InkWell(
                      onTap:validate,
                      child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff6bceff),
                            Color(0xFF00abff),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        )
                      ),
                      child: Center(
                        child: Text('Login'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),

                     
                     

                     
                     
                   

                          

                    ],
                  ),
                ),
             ),
            ),

             


            
        

            

            Container(
              width: MediaQuery.of(context).size.width,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Don't have an account ? "),
                  FlatButton(
                    onPressed:(){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>SignupPage()));
                    },
                    child: Text(" Sign Up",style: TextStyle(color: Color(0xff6bceff)),),
                  ),
                 
                ], 
              ),
   
            ),       


            


          ],
        ),
      ),
    );
  }
}


class SignupPage extends StatefulWidget {
  @override
  _SignupPageState createState() => _SignupPageState();
}

class _SignupPageState extends State<SignupPage> {
  var SignUpEmailController   = TextEditingController();
  var SignUpPasswController   = TextEditingController();
  var SignUpCPassController   = TextEditingController();
  String SignUpEmail,SignUpPass,SignUpCPass;
  final SignUpformKey         = new GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

     validate() async {
       if (SignUpformKey.currentState.validate()) {
        SignUpformKey.currentState.save();
       }
     }

    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
      
      body: Container(
        child: ListView(
          padding:EdgeInsets.zero,
          children: <Widget>[ 

             Container(
              width: MediaQuery.of(context).size.width,
              height: 150,  
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [
                    Colors.blue,
                    Colors.blueAccent,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(90)
                )
              ),
              child:Column(
                    children: <Widget>[
                  Spacer(),
                  Spacer(),
                  Row(
                    mainAxisAlignment:MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.person_add,
                        size: 70,
                        color: Colors.white,
                      ),
                      Text(
                        "SignUp Page",
                        style:TextStyle(
                          color:Colors.white,
                          fontFamily: "Raleway",
                          fontSize:20,
                        ),
                      )
                    ],
                  ),
                  Spacer(),

                  Align(
                    alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: const EdgeInsets.only(
                          bottom: 32,
                          right: 32
                        ),
                        child: Text(
                          'SignUp',
                          style: TextStyle(
                            color: Colors.white.withOpacity(0.5),
                            fontSize: 18,
                            fontFamily: "Raleway",
                          ),
                        ),
                      ),
                  ),
                 ],
                 )
            ),

            Form(
             key: SignUpformKey,
             child:Padding(
               padding: const EdgeInsets.all(18.0),
               child: Container(
                 width: MediaQuery.of(context).size.width,
                 height: MediaQuery.of(context).size.height*0.58,
                 child:Column(
                   mainAxisAlignment:MainAxisAlignment.center,
                   crossAxisAlignment:CrossAxisAlignment.start,
                   children: <Widget>[

                     SizedBox(height:22,),
                     Text(
                        "   Email:",
                        style:TextStyle(
                          color:Colors.blue.withOpacity(0.6),
                          fontFamily: "Raleway",
                          fontSize:20,
                        ),
                     ), 
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 59,
                      padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        ),
                        color: Colors.white, 
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5
                          )
                        ]
                      ),
                      child:TextFormField(
                           controller:SignUpEmailController,
                           keyboardType: TextInputType.emailAddress,
                           validator: (val) => val.length == 0 ? 'Please Enter Your Email' : null,
                           onSaved: (val) => SignUpEmail = val,
                           decoration: InputDecoration(
                           border: InputBorder.none,
                           icon: Icon(Icons.person,color:Colors.blue.withOpacity(0.3),),
                           hintText:'Please Enter Your Email',
                           hintStyle:TextStyle(color:Colors.blueGrey.withOpacity(0.3),), 
                        ),
                      ),
                    ),

   
                     SizedBox(height:7,),
                     Text(
                        "   Password:",
                        style:TextStyle(
                          color:Colors.blue.withOpacity(0.6),
                          fontFamily: "Raleway",
                          fontSize:20,
                        ),
                     ), 
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 59,
                      padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5
                          )
                        ]
                      ),
                      child:TextFormField(
                           obscureText:true,
                           controller:SignUpPasswController,
                           keyboardType: TextInputType.text,
                           validator: (val) => val.length == 0 ? 'Please Enter Your Password' : null,
                           onSaved: (val) => SignUpPass = val,
                           decoration: InputDecoration(
                           border: InputBorder.none,
                           icon: Icon(Icons.security,color:Colors.blue.withOpacity(0.3),),
                           hintText:'Please Enter Your Password',
                           hintStyle:TextStyle(color:Colors.blueGrey.withOpacity(0.3),), 
                        ),
                      ),
                    ),

                     


                     
                     SizedBox(height:7,),
                     Text(
                        "   Confirm Password:",
                        style:TextStyle(
                          color:Colors.blue.withOpacity(0.6),
                          fontFamily: "Raleway",
                          fontSize:20,
                        ),
                     ), 
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 59,
                      padding: EdgeInsets.only(
                        top: 4,left: 16, right: 16, bottom: 4
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        ),
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black12,
                            blurRadius: 5
                          )
                        ]
                      ),
                      child:TextFormField(
                           obscureText:true,
                           controller:SignUpCPassController,
                           keyboardType: TextInputType.text,
                           validator: (val) => SignUpCPass != SignUpPass ? 'Please Confirm Your Password' : null,
                           onSaved: (val) => SignUpCPass = val,
                           decoration: InputDecoration(
                           border: InputBorder.none,
                           icon: Icon(Icons.security,color:Colors.blue.withOpacity(0.3),),
                           hintText:'Please Confirm Your Password',
                           hintStyle:TextStyle(color:Colors.blueGrey.withOpacity(0.3),), 
                        ),
                      ),
                    ),

                    SizedBox(height:15,),


              
                  InkWell(
                      onTap:validate,
                      child: Container(
                      height: 45,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Color(0xff6bceff),
                            Color(0xFF00abff),
                          ],
                        ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(50)
                        )
                      ),
                      child: Center(
                        child: Text('Login'.toUpperCase(),
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),
                        ),
                      ),
                    ),
                  ),

                     
                     

                     
                     
                   

                           
                            



                    ],
                  ),
                ),
             ),
            ),

            Container(
              height:100,
              width: MediaQuery.of(context).size.width,
              child:Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text("Have an account ? "),
                  FlatButton(
                    onPressed:(){
                      Navigator.pushReplacement(context,MaterialPageRoute(builder:(context)=>LoginPage()));
                    },
                    child: Text(" Login",style: TextStyle(color: Color(0xff6bceff)),),
                  ),
                 
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







