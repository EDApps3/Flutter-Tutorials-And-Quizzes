import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class DotsSliderRun extends StatefulWidget {
  DotsSliderRun() : super();

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<DotsSliderRun> {

  CarouselSlider carouselSlider;
  int _current = 0;
  List imgList = [
    'Images/S1.jpg',
    'Images/S2.jpg',
    'Images/S3.jpg',
  ];

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dots Slider"),
      ),
      body:
        ListView(
          children: <Widget>[
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Dots Slider",
                    textAlign: TextAlign.center,
                  ),
                  carouselSlider = CarouselSlider(
                    height: 206.0,
                    initialPage: 0,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    onPageChanged: (index) {
                      setState(() {
                        _current = index;
                      });
                    },

                    items: imgList.map((imgUrl) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.symmetric(horizontal: 10.0),
                              decoration: BoxDecoration(
                                color: Colors.green,
                              ),
                              child:
                              Stack(
                                children: <Widget>[
                                  new Positioned.fill(
                                    child:Image.asset(
                                      imgUrl,
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ],
                              )

                          );
                        },
                      );
                    }).toList(),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: map<Widget>(imgList, (index, url) {
                      return Container(
                        width: 10.0,
                        height: 10.0,
                        margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _current == index ? Colors.redAccent : Colors.green,
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ),
          ],
        )

    );
  }


}