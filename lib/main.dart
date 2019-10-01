import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

void main() {
  runApp(
    MaterialApp (
      home: Scaffold(
        appBar: AppBar(
          title: Text('I Am Rich'),
          backgroundColor: Colors.blueGrey[900],
        ),
        backgroundColor: Colors.blueGrey[300],
        body: Column(
          children: <Widget>[
            Image(
                image: AssetImage('images/diamond.png')
            ),
            CarouselSlider(
              height: 300.0,
              items: [1,2,3,4,5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.blueGrey[900]
                        ),
                        child: Image(image: AssetImage('images/star.png')),
                    );
                  },
                );
              }).toList(),
            ),
          ],
        ),
      ),
    ),
  );
}







