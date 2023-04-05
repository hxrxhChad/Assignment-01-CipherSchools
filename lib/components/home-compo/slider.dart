import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class Slide extends StatelessWidget {
  Slide({
    Key? key,
    required this.style,
  }) : super(key: key);

  final TextStyle style;

  final List<IconData> clist = [
    AntIcons.bookOutlined,
    AntIcons.githubFilled,
    AntIcons.qqOutlined,
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      width: double.infinity,
      child: Stack(
        children: [
          Positioned(
            top: 0,
            bottom: 0,
            right: 0,
            left: 0,
            child: CarouselSlider.builder(
                itemCount: clist.length,
                itemBuilder: (context, index, realIndex) {
                  final cList = clist[index];
                  return SizedBox(
                    height: 250,
                    width: 200,
                    child: Stack(
                      children: [
                        Container(
                          width: 200,
                          decoration: BoxDecoration(
                              color: appBarColor,
                              borderRadius: BorderRadius.circular(10)),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  decoration: const BoxDecoration(
                                      color: Colors.white,
                                      shape: BoxShape.circle),
                                  child: Padding(
                                    padding: const EdgeInsets.all(13),
                                    child: Icon(
                                      cList,
                                      color: primaryColor,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'Mentors',
                                  style: style.copyWith(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  'Yo, this is a sampple text description of this card.',
                                  style: style.copyWith(color: Colors.white),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                    viewportFraction: 0.5,
                    autoPlay: true,
                    height: 200,
                    enlargeCenterPage: true)),
          ),
          Positioned(
              top: 0,
              bottom: 0,
              left: 0,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(253, 255, 255, 255),
                  Color.fromARGB(0, 255, 255, 255),
                ], begin: Alignment.centerLeft, end: Alignment.center)),
              )),
          Positioned(
              top: 0,
              bottom: 0,
              right: 0,
              child: Container(
                height: 200,
                width: 200,
                decoration: const BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Color.fromARGB(253, 255, 255, 255),
                  Color.fromARGB(0, 255, 255, 255),
                ], begin: Alignment.centerRight, end: Alignment.center)),
              )),
        ],
      ),
    );
  }
}
