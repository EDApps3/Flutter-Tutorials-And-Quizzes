import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class SliderWithButton extends StatefulWidget {
  SliderWithButton() : super();

  @override
  CarouselDemoState createState() => CarouselDemoState();
}

class CarouselDemoState extends State<SliderWithButton> {

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
        title: Text("Button Slider"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Change Image By Pressing On Buttons",
                  textAlign: TextAlign.center,
                ),
                carouselSlider = CarouselSlider(
                  height: 206.0,
                  initialPage: 0,
                  enlargeCenterPage: true,
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
                  children: <Widget>[
                    OutlineButton(
                      onPressed: goToPrevious,
                      child: Text("<"),
                    ),
                    OutlineButton(
                      onPressed: goToNext,
                      child: Text(">"),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      )
    );
  }

  goToPrevious() {
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }

  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}