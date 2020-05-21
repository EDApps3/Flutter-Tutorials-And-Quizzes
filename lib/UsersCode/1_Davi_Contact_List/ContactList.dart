import 'dart:io';
import 'package:image_picker/image_picker.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(MaterialApp(
    home: Davi_ContactList(),
  ));
}

enum OrderOptions { OrderAZ, OrderZA }

class Davi_ContactList extends StatefulWidget {
  @override
  _Davi_ContactList_State createState() => _Davi_ContactList_State();
}

class _Davi_ContactList_State extends State<Davi_ContactList> {
  ContactHelper helper = ContactHelper();
  List<Contact> contacts = List();

  @override
  void initState() {
    super.initState();
    _getAllContacts();
  }

  @override
  Widget build(BuildContext context) {

    void _showContactPage({Contact contact}) async {
      final getContact = await Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) => ContactPage(
                contact: contact,
              )));
      if (getContact != null) {
        if (contact != null) {
          await helper.updateContact(getContact);
        } else {
          await helper.saveContact(getContact);
        }
        _getAllContacts();
      }
    }

    void _showOptions(BuildContext context, int index) {
      showModalBottomSheet(
          context: context,
          builder: (context) {
            return BottomSheet(
                onClosing: () {},
                builder: (context) {
                  return Container(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: FlatButton.icon(
                            icon:Icon(Icons.phone),
                            label:Text("Call", style: TextStyle(color: Colors.red, fontSize: 20.0),),
                            onPressed: () {
                              launch("tel:${contacts[index].phone}");
                              Navigator.pop(context);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: FlatButton.icon(
                            icon:Icon(Icons.edit),
                            label:Text("Edit", style: TextStyle(color: Colors.red, fontSize: 20.0),),
                            onPressed: () {
                              Navigator.pop(context);
                              _showContactPage(contact: contacts[index]);
                            },
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.all(10.0),
                          child: FlatButton.icon(
                            icon:Icon(Icons.delete),
                            label:Text("Delete", style: TextStyle(color: Colors.red, fontSize: 20.0),),
                            onPressed: () {
                              helper.deleteContact(contacts[index].id);
                              setState(() {
                                contacts.removeAt(index);
                                Navigator.pop(context);
                              });
                            },
                          ),
                        ),
                      ],
                    ),
                  );
                });
          });
    }


    Widget _contactCard(BuildContext context, int index) {
      return GestureDetector(
        child: Card(
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child:SingleChildScrollView(
            scrollDirection:Axis.horizontal,
             child :Row(
              children: <Widget>[
                Container(
                  width: 80.0,
                  height: 80.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: contacts[index].img != null
                            ? FileImage(File(contacts[index].img))
                            : AssetImage("Images/ContactImg.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        contacts[index].name ?? "",
                        style: TextStyle(
                            fontSize: 22.0, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        contacts[index].email ?? "",
                        style: TextStyle(fontSize: 18.0),
                      ),
                      Text(
                        contacts[index].phone ?? "",
                        style: TextStyle(fontSize: 18.0),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        ),
        onTap: () {
          _showOptions(context, index);
        },
      );
    }



    return Scaffold(
      appBar: AppBar(
        leading:Icon(Icons.contacts),
        title: Text("Contact List"),
        backgroundColor: Colors.red,
        centerTitle: true,
        actions: <Widget>[
          PopupMenuButton<OrderOptions>(
            itemBuilder: (context) => <PopupMenuEntry<OrderOptions>>[
              const PopupMenuItem<OrderOptions>(
                child: Text("Order By  A-Z"),
                value: OrderOptions.OrderAZ,
              ),
              const PopupMenuItem<OrderOptions>(
                child: Text("Order By Z-A"),
                value: OrderOptions.OrderZA,
              ),
            ],
            onSelected: _orderList,
          )
        ],
      ),
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _showContactPage();
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.red,
      ),
      body:(contacts.length==0)?
          Center(child:Text("No Contact Found,Tap + Down To Add!"),):
       ListView.builder(
          padding: EdgeInsets.all(10.0),
          itemCount: contacts.length,
          itemBuilder: (context, index) {
            return _contactCard(context, index);
          }),

    );
  }


  void _getAllContacts() {
    helper.getAllContacts().then((list) {
      setState(() {
        contacts = list;
      });
    });
  }

  void _orderList(OrderOptions result) {
    switch (result) {
      case OrderOptions.OrderAZ:
        contacts.sort((a, b) {
          return a.name.toLowerCase().compareTo(b.name.toLowerCase());
        });
        break;
      case OrderOptions.OrderZA:
        contacts.sort((a, b) {
          return b.name.toLowerCase().compareTo(a.name.toLowerCase());
        });
        break;
    }
    setState(() {});
  }
}


class ContactPage extends StatefulWidget {
  final Contact contact;

  ContactPage({this.contact});

  @override
  _ContactPageState createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _phoneController = TextEditingController();

  final _nameFocus = FocusNode();

  Contact _editedContact;
  bool _userContact = false;

  @override
  void initState() {
    super.initState();
    if (widget.contact == null) {
      _editedContact = Contact();
    } else {
      _editedContact = Contact.fromMap(widget.contact.toMap());
    }
    _nameController.text = _editedContact.name;
    _emailController.text = _editedContact.email;
    _phoneController.text = _editedContact.phone;
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _requestPop,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
          title: Text(_editedContact.name ?? "New Contact"),
          centerTitle: true,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            if (_editedContact.name != null && _editedContact.name.isNotEmpty) {
              Navigator.pop(context, _editedContact);
            } else {
              FocusScope.of(context).requestFocus(_nameFocus);
            }
          },
          child: Icon(Icons.save),
          backgroundColor: Colors.red,
        ),
        body: SingleChildScrollView(
            padding: EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 140.0,
                  height: 140.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        image: _editedContact.img != null
                            ? FileImage(File(_editedContact.img))
                            : AssetImage("Images/ContactImg.png"),
                        fit: BoxFit.cover),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    IconButton(
                        icon: Icon(Icons.add_photo_alternate),
                        onPressed: () {
                          ImagePicker.pickImage(source: ImageSource.gallery)
                              .then((file) {
                            if (file == null) return;
                            setState(() {
                              _editedContact.img = file.path;
                            });
                          });
                        }),
                    IconButton(
                        icon: Icon(Icons.add_a_photo),
                        onPressed: () {
                          ImagePicker.pickImage(source: ImageSource.camera)
                              .then((file) {
                            if (file == null) return;
                            setState(() {
                              _editedContact.img = file.path;
                            });
                          });
                        }),
                  ],
                ),
                TextField(
                  controller: _nameController,
                  focusNode: _nameFocus,
                  decoration: InputDecoration(labelText: "New Contact"),
                  onChanged: (text) {
                    setState(() {
                      _userContact = true;
                      _editedContact.name = text;
                    });
                  },
                ),
                TextField(
                  controller: _emailController,
                  decoration: InputDecoration(labelText: "Email"),
                  onChanged: (text) {
                    _userContact = true;
                    _editedContact.email = text;
                  },
                  keyboardType: TextInputType.emailAddress,
                ),
                TextField(
                  controller: _phoneController,
                  decoration: InputDecoration(labelText: "Phone"),
                  onChanged: (text) {
                    _userContact = true;
                    _editedContact.phone = text;
                  },
                  keyboardType: TextInputType.phone,
                ),
              ],
            )),
      ),
    );
  }

  Future<bool> _requestPop() {
    BuildContext context;
    if (_userContact) {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: Text("Descaratr Alterações?"),
              content: Text("Se sair as alterações serão perdidas."),
              actions: <Widget>[
                FlatButton(
                  child: Text("Cancelar"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                FlatButton(
                  child: Text("Sim"),
                  onPressed: () {
                    Navigator.pop(context);
                    Navigator.pop(context);
                  },
                ),
              ],
            );
          });
      return Future.value(false);
    } else {
      return Future.value(true);
    }
  }
}

final String contactTable = "contactTable";
final String idColumn = "idColumn";
final String nameColumn = "nameColumn";
final String emailColumn = "emailColumn";
final String phoneColumn = "phoneColumn";
final String imgColumn = "imgColumn";

class ContactHelper {
  static final ContactHelper _instance = ContactHelper.internal();

  factory ContactHelper() => _instance;

  ContactHelper.internal();

  Database _db;

  Future<Database> get db async {
    if (_db != null) {
      return _db;
    } else {
      _db = await initDb();
      return _db;
    }
  }

  Future<Database> initDb() async {
    final databasePath = await getDatabasesPath();
    final path = join(databasePath, "contactsnew.db");

    return await openDatabase(path, version: 1,
        onCreate: (Database db, int newerVersion) async {
          await db.execute(
              "CREATE TABLE $contactTable($idColumn INTEGER PRIMARY KEY, $nameColumn TEXT, $emailColumn TEXT,"
                  "$phoneColumn TEXT, $imgColumn TEXT)");
        });
  }

  Future<Contact> saveContact(Contact contact) async {
    Database dbContact = await db;
    contact.id = await dbContact.insert(contactTable, contact.toMap());
    return contact;
  }

  Future<Contact> getContact(int id) async {
    Database dbContact = await db;
    List<Map> maps = await dbContact.query(contactTable,
        columns: [idColumn, nameColumn, emailColumn, phoneColumn, imgColumn],
        where: "$idColumn = ?",
        whereArgs: [id]);
    if (maps.length > 0) {
      return Contact.fromMap(maps.first);
    } else {
      return null;
    }
  }

  Future<int> deleteContact(int id) async {
    Database dbContact = await db;
    return await dbContact
        .delete(contactTable, where: "$idColumn = ?", whereArgs: [id]);
  }

  Future<int> updateContact(Contact contact) async {
    Database dbContact = await db;
    return await dbContact.update(contactTable, contact.toMap(),
        where: "$idColumn = ?", whereArgs: [contact.id]);
  }

  Future<List> getAllContacts() async {
    Database dbContact = await db;
    List listMap = await dbContact.rawQuery("SELECT * FROM $contactTable");
    List<Contact> listContact = List();
    for (Map m in listMap) {
      listContact.add(Contact.fromMap(m));
    }
    return listContact;
  }

  Future<int> getNumber() async {
    Database dbContact = await db;
    return Sqflite.firstIntValue(
        await dbContact.rawQuery("SELECT COUNT(*) FROM $contactTable"));
  }

  Future close() async {
    Database dbContact = await db;
    dbContact.close();
  }
}

class Contact {
  int id;
  String name;
  String email;
  String phone;
  String img;

  Contact();

  Contact.fromMap(Map map) {
    id = map[idColumn];
    name = map[nameColumn];
    email = map[emailColumn];
    phone = map[phoneColumn];
    img = map[imgColumn];
  }

  Map toMap() {
    Map<String, dynamic> map = {
      nameColumn: name,
      emailColumn: email,
      phoneColumn: phone,
      imgColumn: img
    };

    if (id != null) {
      map[idColumn] = id;
    }
    return map;
  }

  @override
  String toString() {
    return "Contact(id: $id, name: $name, email: $email, phone: $phone, img: $img )";
  }
}



