// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;

  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            CarouselSlider(
              options: CarouselOptions(height: 400.0),
              items: [1, 2, 3, 4, 5].map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                      child: SvgPicture.asset('assets/images/flutterio-icon.svg'),
                    );
                  },
                );
              }).toList(),
            ),

            // SvgPicture.asset('assets/images/flutterio-icon.svg'),

            // SvgPicture.network(
            //   'https://www.vectorlogo.zone/logos/flutterio/flutterio-ar21.svg',
            // ),
          ],
        ),
      ),
    );
  }
}
