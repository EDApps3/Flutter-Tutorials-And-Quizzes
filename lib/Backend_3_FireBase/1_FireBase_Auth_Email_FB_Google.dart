import 'dart:convert';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_auth_buttons/flutter_auth_buttons.dart';
import 'package:flutter_facebook_login/flutter_facebook_login.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:path_provider/path_provider.dart';
import 'package:provider/provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';
import 'dart:async';
import 'dart:io' as io;
import 'package:path/path.dart';
import 'package:http/http.dart' as http;


String SignedInEmail="";
String SignedInMethod="";
FirebaseUser _user;


void main() => runApp(FireBaseEmail_Google_FB_Authentication());

class LoggingMethod {
  int LoggingByID;
  String LoggingByMethod;

  LoggingMethod(this.LoggingByID, this.LoggingByMethod);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'LoggingByID'    : LoggingByID,
      'LoggingByMethod': LoggingByMethod,
    };
    return map;
  }

  LoggingMethod.fromMap(Map<String, dynamic> map) {
    LoggingByID     = map['LoggingByID'];
    LoggingByMethod = map['LoggingByMethod'];
  }
}

class DBHelper {
  static Database _db;
  static const String DB_NAME          = "LoggingMethod.db";
  static const String LoggingByID      = 'LoggingByID';
  static const String LoggingByMethod  = 'LoggingByMethod';
  static const String TABLE            = 'LoggingMethod';

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    }
    _db = await initDb();
    return _db;
  }

  initDb() async {
    io.Directory documentsDirectory = await getApplicationDocumentsDirectory();
    String path = join(documentsDirectory.path, DB_NAME);
    var db = await openDatabase(path, version: 1, onCreate: _onCreate);
    return db;
  }

  _onCreate(Database db, int version) async {
    await db.execute("CREATE TABLE $TABLE ($LoggingByID INTEGER PRIMARY KEY, $LoggingByMethod TEXT)");
  }

  Future<LoggingMethod> save(LoggingMethod Lg) async {
    var dbLogging = await db;
    Lg.LoggingByID = await dbLogging.insert(TABLE, Lg.toMap());
    return Lg;
  }

  Future<String> getLogging() async {
    var dbLogging = await db;
    List<Map> maps = await dbLogging.rawQuery("SELECT * FROM $TABLE");
    List<LoggingMethod> LoggingArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        SignedInMethod=LoggingMethod.fromMap(maps[i]).LoggingByMethod;
      }
    }
  }

  Future<List<LoggingMethod>> DelAllLogging() async {
    var dbLogging = await db;
    List<Map> maps = await dbLogging.rawQuery("DELETE FROM $TABLE");
    List<LoggingMethod> LoggingArr = [];
    return LoggingArr;
  }


}








class FireBaseEmail_Google_FB_Authentication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamProvider<User>.value(
      value: AuthService().user,
      child: MaterialApp(
          debugShowCheckedModeBanner:false,
          home:CheckIfLoggedIn(),
          routes: <String, WidgetBuilder>{
            "/Authenticate"          : (BuildContext context) => Authenticate(),
            "/EmailPage"             : (BuildContext context) => EmailPage(),
            "/GooglePage"            : (BuildContext context) => GooglePage(),
            "/FacebookPage"            : (BuildContext context) => FacebookPage(),

          }
      ),
    );
  }
}

class CheckIfLoggedIn extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final user = Provider.of<User>(context);

    var dbHelper=DBHelper().getLogging();
    print(SignedInMethod);


    if (SignedInMethod == ""){
      return Authenticate();
    } else if (SignedInMethod == "Google"){
      return GooglePage();
    } else if (SignedInMethod == "Email"){
      return EmailPage();
    } else if (SignedInMethod == "Facebook"){
      return FacebookPage();
    }

  }
}

PageController pageController;

class Authenticate extends StatefulWidget {
  @override
  _AuthenticateState createState() => new _AuthenticateState();
}

class _AuthenticateState extends State<Authenticate> {
  int _page = 0;
  Color Clr = Colors.blueAccent;
  Icon Ic   = new Icon(Icons.person);
  String BarTitle="SignIn";

  @override
  void initState() {
    super.initState();
    pageController = new PageController();
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }


  void navigationTapped(int page) {
    pageController.animateToPage(
        page,
        duration: const Duration(milliseconds: 600),
        curve: Curves.ease
    );
  }

  void onPageChanged(int page) {
    setState(() {

      if(page==0){
        Clr=Colors.blueAccent;
        Ic=new Icon(Icons.person);
        BarTitle="SignIn";
      }
      else if(page==0){
        Clr=Colors.teal;
        Ic=new Icon(Icons.person_add);
        BarTitle="SignUp";
      }
      else{
        Clr=Colors.blue;
        Ic=new Icon(Icons.security);
        BarTitle="Forget Password";
      }

      this._page = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        backgroundColor: Clr,
        leading: Ic,
        title: new Text(
          BarTitle,
          style: new TextStyle(
            color: Colors.white,
          ),
        ),
      ),
      body: new PageView(
        children: [
          SignIn(),
          Register(),
          ForgetPass(),
        ],
        onPageChanged: onPageChanged,
        controller: pageController,
      ),
      bottomNavigationBar: new BottomNavigationBar(
        backgroundColor: Clr,
        items: [
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.person,
                color:Colors.white,
              ),
              title: new Text(
                "SignIn",
                style: new TextStyle(
                  color:Colors.white,
                ),
              )),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.person_add,
                color: Colors.white,
              ),
              title: new Text(
                "SignUp",
                style: new TextStyle(
                  color: Colors.white,
                ),
              )),
          new BottomNavigationBarItem(
              icon: new Icon(
                Icons.security,
                color:Colors.white,
              ),
              title: new Text(
                "ForgetPass",
                style: new TextStyle(
                  color:Colors.white,
                ),
              )),
        ],
        onTap: navigationTapped,
        currentIndex: _page,
      ),
    );
  }
}


class Register extends StatefulWidget {

  final Function toggleView;
  Register({ this.toggleView });

  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {

  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool SignUpLoading = false;

  String SignUpEmail        = '';
  String SignUpPass         = '';
  String SignUpConfirmPass  = '';

  void ErrorSignUp(BuildContext context){
    var AD=new Dialog(
      child:Padding(
          padding: const EdgeInsets.all(8.0),
          child:Container(
            height:150,
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title:Text("Wrong Email!"),
                  trailing:IconButton(
                    icon:Icon(Icons.close),
                    onPressed:(){
                      Navigator.of (context, rootNavigator: true).pop ('dialog');
                    },
                  ),
                ),
                Divider(color:Colors.black,),
                Text("Look Like Email Is Not Real Or Already Used."),
              ],
            ),
          )
      ),

    );
    showDialog(context:context, child: AD);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Text("Email:",),
                TextFormField(
                  decoration:InputDecoration(
                      icon:Icon(Icons.person_add),
                      hintText:"Enter Your Email"
                  ),
                  validator: (val) => val.isEmpty ? 'Please Enter A Real Email!' : null,
                  onChanged: (val) {
                    setState(() => SignUpEmail = val);
                  },
                ),
                SizedBox(height:4,),
                Text("Password:",),
                TextFormField(
                  decoration:InputDecoration(
                      icon:Icon(Icons.security),
                      hintText:"Enter A Password"
                  ),
                  obscureText: true,
                  validator: (val) => val.isEmpty ? 'Please Enter A Password!' : null,
                  onChanged: (val) {
                    setState(() => SignUpPass = val);
                  },
                ),
                SizedBox(height:4,),
                Text("Confirm Password:",),
                TextFormField(
                  decoration:InputDecoration(
                      icon:Icon(Icons.security),
                      hintText:"Confirm Your Password"
                  ),
                  obscureText: true,
                  validator: (val) => val!=SignUpPass ? 'Must Match Password!' : null,
                  onChanged: (val) {
                    setState(() => SignUpConfirmPass = val);
                  },
                ),
                SizedBox(height: 7.0),
                SignUpLoading==false?SizedBox(
                  width:double.infinity,
                  child:RaisedButton(
                    color: Colors.teal[200],
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child:
                    Text(
                      'SignUp',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed:() async {
                      if(_formKey.currentState.validate()){
                        setState(() => SignUpLoading = true);
                        dynamic result = await _auth.registerWithEmailAndPassword(SignUpEmail, SignUpPass);
                        if(result == null) {
                          setState(() {
                            SignUpLoading = false;
                            ErrorSignUp(context);
                          });
                        }
                      }
                    },
                  ),
                ):Loading(),
                SizedBox(height: 7.0),
                Row(
                  children: <Widget>[
                    Text("Already Have An Account?"),
                    FlatButton(
                      child:Text("SignIn Now!"),
                      onPressed:(){
                        pageController.animateToPage(
                            0,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.ease
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

var FbImg,FbName;

class SignIn extends StatefulWidget {
  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  String error = '';
  bool SignInLoading = false;
  String SignInPassword = '';
  final FirebaseAuth _authInst = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  String name,email,imageUrl;

  FirebaseUser _user;
  bool isLoggedIn = false;
  var profileData;
  var facebookLogin = FacebookLogin();
  final FirebaseAuth _authFb = FirebaseAuth.instance;

  @override
  void initState() {
    super.initState ();
    FirebaseAuth.instance.currentUser ().then (
            (user) =>
            setState (
                  () {
                _user = user;
              },
            )
    );
  }




  void ErrorLogin(BuildContext context){
    var AD=new Dialog(
      child:Padding(
          padding: const EdgeInsets.all(8.0),
          child:Container(
            height:150,
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title:Text("Wrong Data!"),
                  trailing:IconButton(
                    icon:Icon(Icons.close),
                    onPressed:(){
                      Navigator.of (context, rootNavigator: true).pop ('dialog');
                    },
                  ),
                ),
                Divider(color:Colors.black,),
                Text("Look Like You Provided An Wong Email Or Password."),
              ],
            ),
          )
      ),

    );
    showDialog(context:context, child: AD);
  }

  Future<FirebaseUser> signInWithGoogle() async {
    final curUser = _user?? await FirebaseAuth.instance.currentUser();
    if(curUser != null ){
      return curUser;
    }

    final  googleuser = await googleSignIn.signIn();
    final  googleAuth = await googleuser.authentication;

    final AuthCredential credential = GoogleAuthProvider.getCredential(
      accessToken: googleAuth.accessToken,
      idToken: googleAuth.idToken,
    );

    final user = (await _authInst.signInWithCredential(credential)).user;

    assert(!user.isAnonymous);
    assert(await user.getIdToken() != null);

    setState(() {
      FirebaseAuth.instance.currentUser().then (
              (user) =>
              setState (
                    () {
                  _user = user;
                },
              )
      );
    });

    return user;

  }

  void onLoginStatusChanged(bool isLoggedIn, {profileData}) {
    setState(() {
      this.isLoggedIn = isLoggedIn;
      this.profileData = profileData;
    });
  }


  @override
  Widget build(BuildContext context) {

    void signInWithFb() async {
      var facebookLoginResult = await facebookLogin.logIn(['email']);

      switch (facebookLoginResult.status) {
        case FacebookLoginStatus.error:
          onLoginStatusChanged(false);
          break;
        case FacebookLoginStatus.cancelledByUser:
          onLoginStatusChanged(false);
          break;
        case FacebookLoginStatus.loggedIn:
          var graphResponse = await http.get(
              'https://graph.facebook.com/v2.12/me?fields=name,first_name,last_name,email,picture.height(200)&access_token=${facebookLoginResult
                  .accessToken.token}');

          var profile = json.decode(graphResponse.body);
          print(profile.toString());

          onLoginStatusChanged(true, profileData: profile);
          break;
      }

      final accessToken = facebookLoginResult.accessToken.token;
      final facebookAuthCred = FacebookAuthProvider.getCredential(accessToken: accessToken);

      final user = (await _authFb.signInWithCredential(facebookAuthCred)).user;

      FbImg=profileData['picture']['data']['url'];
      FbName=profileData['name'];

      setState(() {
        _user=user;
        isLoggedIn=true;
      });

      Navigator.of(context).pushReplacementNamed("/FacebookPage");
    }


    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(14.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Text("Email:",),
                TextFormField(
                  decoration:InputDecoration(
                      icon:Icon(Icons.person),
                      hintText:"Enter Your Email"
                  ),
                  validator: (val) => val.isEmpty ? 'Enter Your Registered Email!' : null,
                  onChanged: (val) {
                    setState(() => SignedInEmail = val);
                  },
                ),
                SizedBox(height:4,),
                Text("Password:",),
                TextFormField(
                  decoration:InputDecoration(
                      icon:Icon(Icons.security),
                      hintText:"Enter Your Password"
                  ),
                  obscureText: true,
                  validator: (val) => val.isEmpty ? 'Enter Your Password Registered With This Email!' : null,
                  onChanged: (val) {
                    setState(() => SignInPassword = val);
                  },
                ),
                SizedBox(height: 7.0),
                SignInLoading==false?SizedBox(
                  width:double.infinity,
                  child:RaisedButton(
                    color: Colors.blueAccent[200],
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child:
                    Text(
                      'SignIn',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed:() async {
                      if(_formKey.currentState.validate()){
                        setState(() => SignInLoading = true);
                        dynamic result = await _auth.signInWithEmailAndPassword(SignedInEmail,SignInPassword);
                        if(result == null) {
                          setState(() {
                            SignInLoading = false;
                            error = 'Wrong Email Or Password!';
                            ErrorLogin(context);
                          });
                        }
                        else{
                          var dbHelper = DBHelper();
                          dbHelper.DelAllLogging();
                          LoggingMethod Lg=new LoggingMethod(null,"Email");
                          dbHelper.save(Lg);
                          Navigator.of(context).pushReplacementNamed("/EmailPage");
                        }
                      }
                    },
                  ),
                ):Loading(),
                SizedBox(height: 7.0),
                Row(
                  children: <Widget>[
                    Text("Dont Have An Account Yet?"),
                    FlatButton(
                      child:Text("SignUp Now!"),
                      onPressed:(){
                        pageController.animateToPage(
                            1,
                            duration: const Duration(milliseconds: 600),
                            curve: Curves.ease
                        );
                      },
                    )
                  ],
                ),
                Row(
                  children: <Widget>[
                    Text("You Can Still"),
                    FlatButton(
                      child:Text("Continue As A Guest!"),
                      onPressed:() async {
                        SignedInEmail="Guest";
                        Navigator.of(context).pushReplacementNamed("/EmailPage");
                      },
                    )
                  ],
                ),
             SizedBox(
              width:double.infinity,
              child:GoogleSignInButton(
                onPressed:(){
                  var dbHelper = DBHelper();
                  dbHelper.DelAllLogging();
                  LoggingMethod Lg=new LoggingMethod(null,"Google");
                  dbHelper.save(Lg);
                  signInWithGoogle().whenComplete(() {
                    Navigator.of(context).pushReplacementNamed("/GooglePage");
                  });
                },
              ),
            ),

                SizedBox(
                  width:double.infinity,
                  child:FacebookSignInButton(
                    onPressed:(){
                      var dbHelper = DBHelper();
                      dbHelper.DelAllLogging();
                      LoggingMethod Lg=new LoggingMethod(null,"Facebook");
                      dbHelper.save(Lg);
                      signInWithFb();
                    },
                  ),
                ),


    ],
            ),
          ),
        ),
      ],
    );
  }

  _displayUserData(profileData) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(
              fit: BoxFit.fill,
              image: NetworkImage(
                profileData['picture']['data']['url'],
              ),
            ),
          ),
        ),
        SizedBox(height: 28.0),
        Text(
          "Logged in as: ${profileData['name']}",
          style: TextStyle(
            fontSize: 20.0,
          ),
        ),
      ],
    );
  }


}





class ForgetPass extends StatefulWidget {
  @override
  _ForgetPassState createState() => _ForgetPassState();
}

class _ForgetPassState extends State<ForgetPass> {
  final AuthService _auth = AuthService();
  final _formKey = GlobalKey<FormState>();
  bool ForgetPassLoading = false;
  String ForgetPassEmail= '';

  void ForgetPassAlertSent(BuildContext context){
    var AD=new Dialog(
      child:Padding(
          padding: const EdgeInsets.all(8.0),
          child:Container(
            height:150,
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title:Text("Success"),
                  trailing:IconButton(
                    icon:Icon(Icons.close),
                    onPressed:(){
                      Navigator.of (context, rootNavigator: true).pop ('dialog');
                    },
                  ),
                ),
                Divider(color:Colors.black,),
                Text("Code Verification Sent To The Email."),
              ],
            ),
          )
      ),

    );
    showDialog(context:context, child: AD);
  }

  void ErrorForgetPass(BuildContext context){
    var AD=new Dialog(
      child:Padding(
          padding: const EdgeInsets.all(8.0),
          child:Container(
            height:150,
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                ListTile(
                  title:Text("Error"),
                  trailing:IconButton(
                    icon:Icon(Icons.close),
                    onPressed:(){
                      Navigator.of (context, rootNavigator: true).pop ('dialog');
                    },
                  ),
                ),
                Divider(color:Colors.black,),
                Text("Make Sure You Have An Active Interner Connection."),
              ],
            ),
          )
      ),

    );
    showDialog(context:context, child: AD);
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(12.0),
          child: Form(
            key: _formKey,
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Text("Email:",),
                TextFormField(
                  decoration:InputDecoration(
                      icon:Icon(Icons.person),
                      hintText:"Enter Your Email"
                  ),
                  validator: (val) => val.isEmpty ? 'Please Enter A Real Email!' : null,
                  onChanged: (val) {
                    setState(() => ForgetPassEmail = val);
                  },
                ),
                SizedBox(height:10),
                ForgetPassLoading==false?SizedBox(
                  width:double.infinity,
                  child:RaisedButton(
                    color: Colors.blue[200],
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child:
                    Text(
                      'Send Me Reset Code',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed:() async {
                      if(_formKey.currentState.validate()){
                        setState(() => ForgetPassLoading = true);
                        dynamic result = await _auth.ForgetPass(ForgetPassEmail);
                        if(result == null) {
                          setState(() {
                            ForgetPassLoading = false;
                            ForgetPassAlertSent(context);
                          });
                        }
                        else{
                          ErrorForgetPass(context);
                        }
                      }
                    },
                  ),
                ):Loading(),
              ],
            ),
          ),
        ),
      ],
    );
  }
}


class AuthService {
  final FirebaseAuth _authFb = FirebaseAuth.instance;
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _userFromFirebaseUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid,LoginMethod:"Email") : null;
  }

  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_userFromFirebaseUser);
  }


  Future signInWithEmailAndPassword(String email, String password) async {

    try {
      AuthResult result = await _auth.signInWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return user;
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  // register with email and password
  Future registerWithEmailAndPassword(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password);
      FirebaseUser user = result.user;
      return _userFromFirebaseUser(user);
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future signOut() async {
    try {
      var dbHelper=new DBHelper();
      dbHelper.DelAllLogging();
      return await _auth.signOut();
    } catch (error) {
      print(error.toString());
      return null;
    }
  }

  Future ForgetPass(String Email) async {
    return _auth.sendPasswordResetEmail(email:Email);
  }

}





class EmailPage extends StatelessWidget {

  final AuthService _auth = AuthService();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home:Scaffold(
          appBar: AppBar(
            title: Text('Email Page'),
          ),
          body:ListView(
              children:<Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: <Widget>[
                      SizedBox(height:20),
                      Center(
                        child:Text(
                          "Thank You For Signing In!",
                          style:TextStyle(
                            color:Colors.teal,
                            fontSize:22,
                          ),
                        ),
                      ),
                      SizedBox(height:10),
                      SizedBox(
                        width:100,
                        height:100,
                        child:CircleAvatar(
                          child:Icon(Icons.person),
                        ),
                      ),
                      SizedBox(height:10),
                      Text("Here Is Your Information:"),
                      Text("Email:$SignedInEmail"),
                      FlatButton.icon(
                        icon: Icon(Icons.power_settings_new),
                        label: Text('Logout'),
                        onPressed: () async {
                          if(SignedInEmail!="Guest") {
                            await _auth.signOut ();
                          }
                          Navigator.of(context).pushReplacementNamed("/Authenticate");
                          SignedInEmail="";
                        },
                      ),


                    ],
                  ),
                )
              ]
          ),
        )
    );
  }
}



class GooglePage extends StatefulWidget {
  @override
  _GooglePageState createState() => _GooglePageState();
}

class _GooglePageState extends State<GooglePage> {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final GoogleSignIn googleSignIn = GoogleSignIn();

  @override
  void initState() {
    super.initState ();
    FirebaseAuth.instance.currentUser().then (
            (user) =>
            setState (
                  () {
                _user = user;
              },
            )
    );
  }

  void signOutGoogle() async {
    _user=null;
    await _auth.signOut();
    await googleSignIn.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      home:Scaffold(
          appBar:AppBar(
            title:Text("Signed In Succesuffly"),
          ),
          body:ListView(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Profile Picture:"),
                        _user==null?Loading():Container(
                          width:190,
                          height:150,
                          child:Center(
                              child:SizedBox(
                                width:90,
                                height:90,
                                child:CircleAvatar(
                                  backgroundImage: NetworkImage(
                                    _user.photoUrl,
                                  ),
                                ),
                              )
                          ),
                        )
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Full Name:"),
                        _user==null?Loading():Text(_user.displayName),
                      ],
                    ),
                    Divider(),
                    Row(
                      mainAxisAlignment:MainAxisAlignment.start,
                      children: <Widget>[
                        Text("Email:"),
                        _user==null?Loading():Text(_user.email),
                      ],
                    ),
                    Divider(),
                    FlatButton(
                      color:Colors.red,
                      child:Text("Sign Out"),
                      onPressed: () {
                        signOutGoogle();
                        Navigator.of(context).pushReplacementNamed("/Authenticate");
                      },
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}


class FacebookPage extends StatelessWidget {
  var facebookLogin = FacebookLogin();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  _logout() async {
    await _auth.signOut();
    await facebookLogin.logOut();
    print("Logged out");
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home:Scaffold(
          appBar: AppBar(
            title: Text('Facebook Page'),
          ),
          body:ListView(
              children:<Widget>[
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Column(
                    children: <Widget>[
                      Container(
                        height: 200.0,
                        width: 200.0,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                              FbImg,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        FbName,
                        style: TextStyle(
                          fontSize: 20.0,
                        ),
                      ),
                      FlatButton.icon(
                        icon: Icon(Icons.power_settings_new),
                        label: Text('Logout'),
                        onPressed: () async {
                          var DbHelper= new DBHelper();
                          DbHelper.DelAllLogging();
                          _logout();
                          Navigator.of(context).pushReplacementNamed("/Authenticate");
                        },
                      ),


                    ],
                  ),
                )
              ]
          ),
        )
    );
  }
}




class User {

  final String uid,LoginMethod;

  User({
    this.uid,
    this.LoginMethod
  });

}



class Loading extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child:CircularProgressIndicator(),
      ),
    );
  }
}








