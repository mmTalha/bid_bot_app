import 'package:carousel_nullsafety/carousel_nullsafety.dart';
import 'package:flutter/material.dart';



class details_bid_screen extends StatelessWidget {
  const details_bid_screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        children: [
      Container(
        height: 200,
        child: Carousel(

        images: [
        NetworkImage(
        'https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
        NetworkImage(
            'https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
        ExactAssetImage("assets/images/LaunchImage.jpg")
        ],
        showIndicator: true,
        borderRadius: false,
        moveIndicatorFromBottom: 180.0,
        noRadiusForIndicator: false,
        overlayShadow: false,
        overlayShadowColors: Colors.white,
        overlayShadowSize: 0.0,

    ),
      ),
    ]),


    );
  }
}
