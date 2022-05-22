import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolyo/Screens/Projects/SubWidget/projects_widget.dart';

import '../../../all_data.dart';

import 'projects_widget.dart';

class CarouselWidget extends StatelessWidget {
  const CarouselWidget({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final CarouselController controller;

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
        carouselController: controller,
        items: List.generate(
            myProjects.length,
            (index) => ProjectWidget(
                  model: myProjects[index],
                )),
        options: CarouselOptions(
          viewportFraction: .2,
          height: MediaQuery.of(context).size.height / 2 - 100,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          scrollPhysics: const BouncingScrollPhysics(),
          autoPlayInterval: const Duration(milliseconds: 3000),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,
        ));
  }
}
