import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';



class UISampleInfo8 extends StatefulWidget {
  @override
  UISampleInfo8State createState() => UISampleInfo8State();
}

class UISampleInfo8State extends State<UISampleInfo8> {
  CarouselSlider carouselSlider;
  int _current = 0;

  List imgList = [
    'Images/UI8_1.png',
    'Images/UI8_2.png',
    'Images/UI8_3.png',
  ];

  @override
  void initState(){
    super.initState();
  }

  List<T> map<T>(List list, Function handler) {
    List<T> result = [];
    for (var i = 0; i < list.length; i++) {
      result.add(handler(i, list[i]));
    }
    return result;
  }

  @override
  Widget build(BuildContext context) {
    return  Container(
      width:MediaQuery.of(context).size.width,
      height:300,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          carouselSlider = CarouselSlider(
            autoPlayInterval:Duration(seconds:2),
            autoPlay:true,
            enableInfiniteScroll:true,
            height: 280.0,
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
                      width:201,
                      height:314,
                      margin: EdgeInsets.symmetric(horizontal: 10.0),
                      decoration: BoxDecoration(
                        border:Border.all(color:Colors.grey, width:1),
                        color: Colors.green,
                      ),
                      child:Image.asset(
                              imgUrl,
                              fit: BoxFit.fill,
                            ),





                  );
                },
              );
            }).toList(),
          ),



        ],
      ),
    );
  }
}






