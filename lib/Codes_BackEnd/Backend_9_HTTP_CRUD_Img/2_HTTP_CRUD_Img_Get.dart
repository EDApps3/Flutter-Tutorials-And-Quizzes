import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main() => runApp(PHP_HTTP_CRUD_Img_GetData());

class WallPaper {
  String WallPaperID,WallPaperImage,WallPaperDescription;

  WallPaper(
    this.WallPaperID,
    this.WallPaperImage,
    this.WallPaperDescription,
  );

  Map<String, dynamic> toMap() {
    var map = <String, dynamic>{
      'WallPaperID'         : WallPaperID,
      'WallPaperImage'      : WallPaperImage,
      'WallPaperDescription': WallPaperDescription,
    };
    return map;
  }

  WallPaper.fromMap(Map<String, dynamic> map) {
    WallPaperID          = map['WallPaperID'];
    WallPaperImage       = map['WallPaperImage'];
    WallPaperDescription =  map['WallPaperDescription'];
  }
}


class PHP_HTTP_CRUD_Img_GetData extends StatefulWidget {
  @override
  PHP_HTTP_CRUD_Img_GetData_State createState() => PHP_HTTP_CRUD_Img_GetData_State();
}

class PHP_HTTP_CRUD_Img_GetData_State extends State<PHP_HTTP_CRUD_Img_GetData> {
  Future<List<WallPaper>> WallPapersLst;

  Future<List<WallPaper>> getWallPapers() async {
    var url = 'https://httpfluttertest.000webhostapp.com/WallPaper/GetWallPapers.php';
    http.Response response = await http.get(url);
    var maps = jsonDecode(response.body);
    List<WallPaper> WallPaperArr = [];
    if (maps.length > 0) {
      for (int i = 0; i < maps.length; i++) {
        WallPaperArr.add(WallPaper.fromMap(maps[i]));
      }
    }
    return WallPaperArr;
  }

  @override
  void initState() {
    super.initState();
    refreshList();
  }

  refreshList() {
    setState(() {
      WallPapersLst = getWallPapers();
    });
  }

  SingleChildScrollView dataTable(List<WallPaper> WLst) {
    return SingleChildScrollView(
      scrollDirection: Axis.vertical,
      child:Column(
        children: <Widget>[
          for(var i=0;i<WLst.length;i++)
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width:double.infinity,
                child:Card(
                  color:Colors.grey[200],
                child:Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.network(
                          "https://httpfluttertest.000webhostapp.com/WallPaper/WallPaperImages/"+WLst[i].WallPaperImage,
                          loadingBuilder:(BuildContext context, Widget child,ImageChunkEvent loadingProgress) {
                            if (loadingProgress == null) return child;
                            return CircularProgressIndicator(
                              valueColor: AlwaysStoppedAnimation<Color>(Colors.indigo),
                              value: loadingProgress.expectedTotalBytes != null ?
                              loadingProgress.cumulativeBytesLoaded / loadingProgress.expectedTotalBytes
                                  : null,
                            );
                          },
                        ),
                    ),
                    Divider(color:Colors.black,),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(WLst[i].WallPaperDescription,maxLines:3,),
                    ),
                    
                  ],
                ),
              ),
              ),
            ),
        ],
      )
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
              future: WallPapersLst,
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