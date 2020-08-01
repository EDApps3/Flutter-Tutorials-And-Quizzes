import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(TinderSwipe());
}

class TinderSwipe extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: <String, WidgetBuilder>{
          '/cardDetails': (BuildContext context) {
          }
        },
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  List<Widget> cardList = new List();

  void removeCards(index) {
    setState(() {
      cardList.removeAt(index);
    });
  }

  @override
  void initState() {
    super.initState();
    cardList = _generateCards();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tinder Swipe"),
      ),
      body:
       ListView(
         children: <Widget>[
           cardList.length !=0 ?Container(
             width:double.infinity,
             height:350,
             child:Stack(
                 alignment: Alignment.topCenter,
                 children: cardList
             ),
           ):SizedBox(),
           cardList.length ==0 ?Column(
               mainAxisAlignment:MainAxisAlignment.center,
               children: <Widget>[
                 SizedBox(height:110,),
                 Text("No Image Left!"),
                 OutlineButton(
                   child:Text("Restart?"),
                   onPressed:(){
                     Navigator.push(context,MaterialPageRoute(builder:(context)=>TinderSwipe()));
                   },
                 )
               ],
             ):SizedBox(),
         ],
       )

    );
  }

  List<Widget> _generateCards() {
    List<PlanetCard> planetCard = new List();
    planetCard.add(
      PlanetCard("WallPaper 1", "Images/S1.jpg", 10.0),
    );
    planetCard.add(
      PlanetCard("WallPaper 2", "Images/S2.jpg",20.0),
    );
    planetCard.add(
        PlanetCard("WallPaper 3", "Images/S3.jpg",30.0)
    );

    List<Widget> cardList = new List();

    for (int x = 0; x < 3; x++) {
      cardList.add(
        Positioned(
          top: planetCard[x].topMargin,
          child: Draggable(
              onDragEnd: (drag) {
                removeCards(x);
              },
              childWhenDragging: Container(),
              feedback: GestureDetector(
                child: Card(
                  elevation: 8.0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0.0),
                  ),
                  child: Column(
                    children: <Widget>[
                      Hero(
                        tag: "imageTag",
                        child: Image.asset(
                          planetCard[x].cardImage,
                          width: 200.0,
                          height: 200.0,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                        child: Text(
                          planetCard[x].cardTitle,
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.teal,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .push(MaterialPageRoute(builder: (BuildContext context) {
                    return CardDetails(planetCard[x].cardImage, x);
                  }));
                },
                child: Card(
                    elevation: 8.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0.0),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                image: ExactAssetImage(planetCard[x].cardImage),
                                fit: BoxFit.cover),
                          ),
                          height: 200.00,
                          width: 200.0,
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10.0, bottom: 10.0),
                          child: Text(
                            planetCard[x].cardTitle,
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.teal,
                            ),
                          ),
                        )
                      ],
                    )),
              )),
        ),
      );
    }
    return cardList;
  }
}


class PlanetCard {
  String cardTitle;
  String cardImage;
  double topMargin;

  PlanetCard(String title, String imagePath, double marginTop) {
    cardTitle = title;
    cardImage = imagePath;
    topMargin = marginTop;
  }
}


class CardDetails extends StatefulWidget {
  int index;
  String imageAddress;
  String placeDetails;

  CardDetails(this.imageAddress, this.index);
  @override
  State<StatefulWidget> createState() {
    return CardDetailsState(imageAddress, index);
  }
}

class CardDetailsState extends State<CardDetails> {
  int index;
  String imageAddress;
  String placeDetails;

  CardDetailsState(this.imageAddress, this.index);

  @override
  void initState() {
    super.initState();
    setState(() {
      getData(index);
    });
  }

  @override
  Widget build(BuildContext context) {
    var data = index.toString();
    print(index);
    return Scaffold(
        appBar:AppBar(
          title:Text("Details"),
        ),
        body: ListView(
          children: <Widget>[
                Container(
                  height: 300.0,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                        image: ExactAssetImage(imageAddress),
                        fit: BoxFit.fill,
                      )),
                ),
            Text(
              placeDetails,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20.0, fontStyle: FontStyle.italic),
            ),

              ],
            ),
    );
  }

  getData(value) {
    switch (value) {
      case 0:
        placeDetails =
            placeDetails ="Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1 Wallpaper1";
        break;

      case 1:
        placeDetails ="Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2 Wallpaper2";
        break;

      case 2:
        placeDetails ="Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3 Wallpaper3";
        break;

    }
  }
}


