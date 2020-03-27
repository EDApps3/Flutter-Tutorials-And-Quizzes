import 'package:flutter/material.dart';


void main() => runApp(ValidTFRun());

TextEditingController UserNameTF=TextEditingController();
TextEditingController PassTF=TextEditingController();

class ValidTFRun extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title:"Form Validation",
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Form Validation"),
        ),
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }



}


class MyCustomFormState extends State<MyCustomForm> {

  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {

    return Form(
      key: _formKey,
      child:

      Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            TextFormField(
              decoration: InputDecoration(
                icon: new Icon(Icons.person),
                  hintText: "UserName"
              ),
              controller: UserNameTF,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Enter Your UserName!';
                }
              },
            ),
            TextFormField(
              decoration: InputDecoration(
                icon: new Icon(Icons.security),
                hintText: "Password"
              ),
              obscureText: true,
              controller: PassTF,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please Enter Your Password!';
                }
              },
            ),

            Container(
              width: double.infinity,
              child:RaisedButton(
                onPressed: () {
                  if (_formKey.currentState.validate()) {
                    Scaffold.of(context)
                        .showSnackBar(
                            SnackBar(
                                backgroundColor: Colors.green,
                                content:
                                 Text(
                                     'Information Validated'
                                 )
                            ),
                    );
                  }
                  else{
                    Scaffold.of(context)
                        .showSnackBar(
                      SnackBar(
                          backgroundColor: Colors.red,
                          content:
                          Text(
                              'Information Not Validated'
                          )
                      ),
                    );
                  }
                },
                child: Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}