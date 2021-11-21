// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_svg/flutter_svg.dart';

// Адрес svg-картинки
const svgImage = 'https://www.svgrepo.com/download/270371/cat.svg';

// Список картинок для слайдера
final List<String> imgList = [
  'assets/images/1.jpg',
  'assets/images/2.jpg',
  'assets/images/3.jpg',
  'assets/images/4.jpg',
  'assets/images/5.jpg',
];

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.yellow[50],
        appBar: AppBar(
          leading: SvgPicture.network(svgImage),
          title: const Text('Skillbox Flutter module 3'),
          backgroundColor: Colors.green,
        ),
        body: Center(
          child: CarouselSlider(
            options: CarouselOptions(),
            items: imgList
                .map(
                  (item) => Center(child: Image.asset(item)),
                )
                .toList(),
          ),
        ),
      ),
    ),
  );
}
