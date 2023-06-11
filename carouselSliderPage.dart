import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'CarouselCard.dart';

class CarouselSliderPage extends StatelessWidget {

  List<String> carouselImageItems = [
    'assets/image1.jpg',
    'assets/image2.jpg',
    'assets/image3.jpg',
    'assets/image4.jpg',
    'assets/image5.png',
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: carouselImageItems.map((item) {
        return Builder(
          builder: (BuildContext context) {
            return CarouselCard(
              imageUrl: item,
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        // height: 500,
        enlargeCenterPage: true,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 3),
        autoPlayAnimationDuration: Duration(milliseconds: 800),
        autoPlayCurve: Curves.fastOutSlowIn,
      ),
    );
  }
}

