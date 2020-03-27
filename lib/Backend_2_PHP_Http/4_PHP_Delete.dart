import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(PHP_DelData());

class Products {
  String ProductID,ProductName;

  Products(this.ProductID, this.ProductName);

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'ProductID': ProductID,
      'ProductName': ProductName,
    };
    return map;
  }

  Products.fromMap(Map<String, dynamic> map) {
    ProductID = map['ProductID'];
    ProductName = map['ProductName'];
  }
}


class PHP_DelData extends StatefulWidget {
  @override
  _PHP_DelData_State createState() => _PHP_DelData_State();
}

class _PHP_DelData_State extends State<PHP_DelData> {
  Future<List<Products>> ProductsLst;

  Future<List<Products>> getProducts() async {
    var url = 'https://httpfluttertest.000webhostapp.com/GetPrd.php';
    http.Response response = await http.get(url);
    var maps = jsonDecode(response.body);
    List<Products> ProductsArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        ProductsArr.add(Products.fromMap(maps[i]));
      }
    }
    return ProductsArr;
  }

  Future<int> delete(int id) async {
    var url = 'http://httpfluttertest.000webhostapp.com/DeletePrd.php?DelID=$id';
    await http.post(url);
  }



  @override
  void initState() {
    super.initState();
    refreshList();
  }

  refreshList() {
    setState(() {
      ProductsLst = getProducts();
    });
  }

  SingleChildScrollView dataTable(List<Products> PrdLst) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child: DataTable(
        columns: [
          DataColumn(label: Text('ProductID'),),
          DataColumn(label: Text('ProductName'),),
          DataColumn(label: Text('Action'),),
        ],
        rows: PrdLst.map((Cr) => DataRow(cells: [
          DataCell(Text(Cr.ProductID.toString()),),
          DataCell(Text(Cr.ProductName),),
          DataCell(IconButton(
            icon: Icon(Icons.delete),
            onPressed: () {
              delete(int.parse(Cr.ProductID));
              refreshList();
            },
          )),
        ]),).toList(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'PHP GetData',
      debugShowCheckedModeBanner: false,
      home:Scaffold(
        appBar: AppBar(
          title: Text("PHP GetData"),
        ),
        body:
        ListView(
          children: <Widget>[

            FutureBuilder(
              future: ProductsLst,
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return dataTable(snapshot.data);
                }
                else{
                  return Center(
                    child:Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        SizedBox(height:100,),
                        CircularProgressIndicator(),
                        SizedBox(height:5,),
                        Text("Fetching Data,Make Sure You Are Connected To Internet!")
                      ],
                    ),
                  );
                }

              },
            ),


          ],
        ),
      ),
    );
  }


}