import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'dart:ui';

class Photos extends StatelessWidget {
  List imageUrl = [
    "images/spain.jpg",
    "images/roma.jpg",
    "images/roma.jpg",
    "images/spain.jpg",
    "images/roma.jpg",
    "images/roma.jpg",
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text("Photos"),
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.pop(context);
              })),
      body: GridView.count(
        crossAxisCount: 2,
        children: List.generate(imageUrl.length, (index) {
          return GestureDetector(
            onTap: () {
              showDialog(
                barrierColor: Colors.black87,
                context: (context),
                builder: (context) {
                  return CarouselSlider(
                    items: imageUrl.map((e) {
                      return Builder(builder: (BuildContext context) {
                        return Container(
                          width: MediaQuery.of(context).size.width,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: AssetImage(e), fit: BoxFit.fill)),
                        );
                      });
                    }).toList(),
                    options: CarouselOptions(
                        height: 600,
                        aspectRatio: 18 / 9,
                        autoPlay: false,
                        enlargeCenterPage: true),
                  );
                },
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("${imageUrl[index]}"),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
