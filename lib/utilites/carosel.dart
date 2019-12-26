import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class CarouselWithIndicator extends StatefulWidget {
  @override
  _CarouselWithIndicatorState createState() => _CarouselWithIndicatorState();
}

class _CarouselWithIndicatorState extends State<CarouselWithIndicator> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: CarouselSlider(
        viewportFraction: 1.0,
        aspectRatio: 2.0,
        autoPlay: false,
        enlargeCenterPage: false,

        // -----------------
        // height: 200.0,
        // aspectRatio: 16 / 9,
        // viewportFraction: 0.8,
        // initialPage: 4,
        // autoPlay: true,
        // autoPlayInterval: Duration(seconds: 2),
        // reverse: false,
        // autoPlayAnimationDuration: Duration(milliseconds: 800),
        // enlargeCenterPage: true,
        // scrollDirection: Axis.horizontal,

        items: [1, 2, 3, 4].map((i) {
          return Builder(
            builder: (BuildContext context) {
              return Container(
                  width: MediaQuery.of(context).size.width,
                  margin: EdgeInsets.symmetric(horizontal: 1.0),
                  // decoration: BoxDecoration(color: Colors.amber),
                  child: Image.asset("images/bmw$i.jpg"));
            },
          );
        }).toList(),
      ),
    );
  }
}
