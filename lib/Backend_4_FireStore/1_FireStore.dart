import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:math';

void main() {
  runApp(FireStoreProduct());
}


class CommonThings {
  static Size size;
}

class FireStoreProduct extends StatefulWidget {
  @override
  _FireStoreProductState createState() => _FireStoreProductState();
}

class _FireStoreProductState extends State<FireStoreProduct> {
  TextEditingController nameInputController;
  String id;
  final db = Firestore.instance;
  String name;
  var ST;

  @override
  void initState(){
    super.initState();
    setState(() {
      ST=new StreamBuilder(
        stream: Firestore.instance.collection("ProdColl").snapshots(),
        builder: (BuildContext context, AsyncSnapshot<QuerySnapshot> snapshot) {
          if (!snapshot.hasData) {
            return Container(
              width:double.infinity,
              height:double.infinity,
              child:Center(
                child:Column(
                  mainAxisAlignment:MainAxisAlignment.center,
                  crossAxisAlignment:CrossAxisAlignment.center,
                  children:<Widget>[
                    CircularProgressIndicator(),
                    SizedBox(height:10),
                    Text("Fetching Products..."),
                  ],
                ),
              ),
            );
          }
          int length = snapshot.data.documents.length;
          return ListView.builder(
            itemCount: length,
            itemBuilder: (_, int index) {
              final DocumentSnapshot doc = snapshot.data.documents[index];
              return new Container(
                padding: new EdgeInsets.all(3.0),
                child: Card(
                    child:
                    Column(
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            new Container(
                              padding: new EdgeInsets.all(5.0),
                              child: Image.network(
                                '${doc.data["ProdImg"]}',
                                fit: BoxFit.cover,
                                loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                    child: CircularProgressIndicator(
                                      value: loadingProgress.expectedTotalBytes != null ?
                                      loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                                          : null,
                                    ),
                                  );
                                },
                              ),
                              width: 100,
                              height: 100,
                            ),
                            Expanded(
                              child: ListTile(
                                title: Text(doc.data["name"],),
                                subtitle: Text(
                                  doc.data["desc"],
                                  maxLines:2,
                                  overflow:TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Row(
                          children: <Widget>[
                            FlatButton.icon(
                                onPressed: () => navigateToInfo(doc),
                                icon: Icon(Icons.remove_red_eye),
                                label:Text("View")
                            ),
                            FlatButton.icon(
                                onPressed: () => navigateToDetail(doc),
                                icon: Icon(Icons.edit),
                                label:Text("Update")
                            ),
                            FlatButton.icon(
                                onPressed: () => deleteData(doc),
                                icon: Icon(Icons.delete),
                                label:Text("Delete")
                            ),
                          ],
                        ),
                      ],
                    )
                ),
              );
            },
          );
        },
      );
    });
  }



  @override
  void dispose(){
    super.dispose();
  }

  navigateToDetail(DocumentSnapshot ds) {
    Navigator.push(
        context,
        MaterialPageRoute(
            builder: (context) => MyUpdatePage(
              ds: ds,
            )));
  }

  navigateToInfo(DocumentSnapshot ds) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => MyInfoPage(
          ds: ds,
        ),
      ),
    );
  }


  void deleteData(DocumentSnapshot doc) async {
    await db.collection('ProdColl').document(doc.documentID).delete();
    setState(() => id = null);
  }



  @override
  Widget build(BuildContext context) {
    CommonThings.size = MediaQuery.of(context).size;
    setState(() {
    });
    return MaterialApp(
      debugShowCheckedModeBanner:false,
      title:"Products",
      home:Scaffold(
        appBar: AppBar(
          title: Text('Products'),
          actions: <Widget>[
            FlatButton.icon(
              icon:Icon(Icons.add),
              label:Text("Add Product"),
              onPressed: () {
                Route route = MaterialPageRoute(builder: (context) => ProductAdd());
                Navigator.push(context, route);
              },
            ),
          ],
        ),
        body: ST,
      ),
    );
  }
}





class MyInfoPage extends StatefulWidget {
  final DocumentSnapshot ds;
  MyInfoPage({this.ds});
  @override
  _MyInfoPageState createState() => _MyInfoPageState();
}

class _MyInfoPageState extends State<MyInfoPage> {
  String productImage;
  String id;
  String name;
  String desc;

  TextEditingController nameInputController;
  TextEditingController descInputController;

  Future getPost() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("ProdColl").getDocuments();
    return qn.documents;
  }

  @override
  void initState() {
    super.initState();
    descInputController = new TextEditingController(text: widget.ds.data["desc"]);
    nameInputController = new TextEditingController(text: widget.ds.data["name"]);
    productImage = widget.ds.data["ProdImg"];
    name=widget.ds.data["name"];
    desc=widget.ds.data["desc"];
  }



  @override
  Widget build(BuildContext context) {
    getPost();
    return Scaffold(
      appBar: AppBar(
        title: Text('View Product'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment:CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 300.0,
              width:double.infinity,
              decoration: new BoxDecoration(
                  border: new Border.all(color: Colors.blueAccent)),
              padding: new EdgeInsets.all(5.0),
              child:Image.network(productImage),
            ),
            Divider(),
            Text("Product Name:"),
            Text(name),
            Divider(),
            Text("Product Desc:"),
            Text(desc),
          ],
        ),
      ),
    );
  }
}




File image;
String filename;

class MyUpdatePage extends StatefulWidget {
  final DocumentSnapshot ds;
  MyUpdatePage({this.ds});
  @override
  _MyUpdatePageState createState() => _MyUpdatePageState();
}

class _MyUpdatePageState extends State<MyUpdatePage> {
  String productImage;
  TextEditingController descInputController;
  TextEditingController nameInputController;
  TextEditingController imageInputController;

  String id;
  final db = Firestore.instance;
  final _formKey = GlobalKey<FormState>();
  String name;
  String desc;

  pickerCam() async {
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }

  pickerGallery() async {
    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    descInputController = new TextEditingController(text: widget.ds.data["desc"]);
    nameInputController = new TextEditingController(text: widget.ds.data["name"]);
    productImage = widget.ds.data["ProdImg"];
  }

  Future getPosts() async {
    var firestore = Firestore.instance;
    QuerySnapshot qn = await firestore.collection("ProdColl").getDocuments();
    return qn.documents;
  }

  @override
  Widget build(BuildContext context) {
    getPosts();

    void UpdateAlert(BuildContext context){
      var AD=new AlertDialog(
        title:Text("Success"),
        content:Text("Information Updated,Might Take Few Seconds"),
      );
      showDialog(
          context:context,
          child: AD
      );
    }


    return Scaffold(
      appBar: AppBar(
        title: Text('Update Product'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment:MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 250.0,
                  width: double.infinity,
                  decoration: new BoxDecoration(
                      border: new Border.all(color: Colors.blueAccent)),
                  padding: new EdgeInsets.all(5.0),
                  child:Image.network(productImage),
                ),
                Divider(),
                Text("Product Name:"),
                TextFormField(
                  controller: nameInputController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Product Name!';
                    }
                  },
                  onSaved: (value) => name = value,
                ),
                Divider(),
                Text("Product Desc:"),
                TextFormField(
                  controller: descInputController,
                  maxLines: 10,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Product Desc!';
                    }
                  },
                  onSaved: (value) => desc = value,
                ),
                SizedBox(
                  width:double.infinity,
                  child:RaisedButton(
                    color: Colors.green,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child:
                    Text(
                      'Update Product',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed:(){
                      Firestore.instance
                          .collection('ProdColl')
                          .document(widget.ds.documentID)
                          .updateData({
                        'name': nameInputController.text,
                        'desc': descInputController.text,
                      });
                      UpdateAlert(context);
                    },
                  ),
                ),
              ],
            ),
          ),

        ],
      ),
    );
  }
}







class ProductAdd extends StatefulWidget {
  @override
  _ProductAddState createState() => _ProductAddState();
}

class _ProductAddState extends State<ProductAdd> {
  TextEditingController descInputController=new TextEditingController();
  TextEditingController nameInputController=new TextEditingController();
  TextEditingController imageInputController=new TextEditingController();

  String id;
  final db = Firestore.instance;
  final _formKey = GlobalKey<FormState>();
  String name;
  String desc;

  pickerCam() async {
    File img = await ImagePicker.pickImage(source: ImageSource.camera);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }

  pickerGallery() async {
    File img = await ImagePicker.pickImage(source: ImageSource.gallery);
    if (img != null) {
      image = img;
      setState(() {});
    }
  }

  var fullImageName;

  Future<String> uploadImage(var imageFile ) async {
    var Rand1=new Random().nextInt(999);
    var Rand2=new Random().nextInt(999);
    var Rand3=new Random().nextInt(999);

    fullImageName = 'Img-$Rand1-$Rand2-$Rand3.jpg';

    final StorageReference refImg = FirebaseStorage.instance.ref().child(fullImageName);
    StorageUploadTask uploadTask=refImg.putFile(image);
    var dowurl = await (await uploadTask.onComplete).ref.getDownloadURL();

    DocumentReference ref = await db.collection("ProdColl").add({
      "name"    : "$name",
      "desc"    : "$desc",
      "ProdImg" : "$dowurl",
    });

    setState(() {
      id = ref.documentID;
    });

    return dowurl.toString();
  }



  void createData() async {
    if (_formKey.currentState.validate()) {
      _formKey.currentState.save();

      if(uploadImage(image)!=null){
        image=null;
        nameInputController.text="";
        descInputController.text="";
        var AD=new AlertDialog(
          title:Text("Success!"),
          content:Text("Image Uploaded,Might Take Few Seconds To Appear!"),
        );
        showDialog(context:context, child: AD);

      }
      else{
        print("No");
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    CommonThings.size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: Text('Add Product'),
      ),
      body: ListView(
        padding: EdgeInsets.all(8),
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    new Container(
                      height: 200.0,
                      width: 200.0,
                      decoration: new BoxDecoration(
                        border: new Border.all(color: Colors.blueAccent),
                      ),
                      padding: new EdgeInsets.all(5.0),
                      child: image == null ? Text('Add') : Image.file(image),
                    ),
                    Divider(),
                    new IconButton(
                        icon: new Icon(Icons.camera_alt), onPressed: pickerCam),
                    Divider(),
                    new IconButton(
                        icon: new Icon(Icons.image), onPressed: pickerGallery),
                  ],
                ),
                Divider(),
                Text("Product Name:"),
                TextFormField(
                  controller:nameInputController,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Product Name!';
                    }
                  },
                  onSaved: (value) => name = value,
                ),
                Divider(),
                Text("Product Desc:"),
                TextFormField(
                  controller:descInputController,
                  maxLines: 6,
                  validator: (value) {
                    if (value.isEmpty) {
                      return 'Please Enter Product Desc!';
                    }
                  },
                  onSaved: (value) => desc = value,
                ),
                Divider(),
                SizedBox(
                  width:double.infinity,
                  child:RaisedButton(
                    color: Colors.green,
                    shape:RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                    child:
                    Text(
                      'Add Product',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    onPressed:() {
                      if (image != null) {
                        createData();
                      }
                      else {
                        var AD=new AlertDialog(
                          title:Text("Image Required!"),
                          content:Text("Please Select An Image!"),
                        );
                        showDialog(context:context, child: AD);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}


