import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CarouselItems extends StatelessWidget {
  const CarouselItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160.0,
      width: double.infinity,
      child: CarouselSlider(
        items: [
          //1st Image of Slider
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/mens.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          //2nd Image of Slider
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/caro1.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          //3rd Image of Slider
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/boys.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
          //4th Image of Slider
          Container(
            width: double.infinity,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/cat4.jpg'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ],
        //Slider Container properties
        options: CarouselOptions(
          height: 200.0,
          //enlargeCenterPage: true,
          autoPlay: true,
         
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: Duration(milliseconds: 800),
        ),
      ),
    );
  }
}
