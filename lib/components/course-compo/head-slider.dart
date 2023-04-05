// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import 'package:assignment_01_cipherschools/constant/colorsize.dart';

class HeadSliderComponents {
  final String title;
  final String slogan;
  final String category;
  final String tutor;
  final String photoUrl;
  final void Function() press;
  HeadSliderComponents({
    required this.title,
    required this.slogan,
    required this.category,
    required this.tutor,
    required this.photoUrl,
    required this.press,
  });
}

class HeadSlider extends StatefulWidget {
  const HeadSlider({
    Key? key,
    required this.style,
  }) : super(key: key);
  final TextStyle style;

  @override
  State<HeadSlider> createState() => _HeadSliderState();
}

class _HeadSliderState extends State<HeadSlider> {
  final List<HeadSliderComponents> clist = [
    HeadSliderComponents(
        title: 'Python and Django for Beginners',
        slogan: 'Code with Confidence',
        category: 'Programming',
        tutor: 'Cipher School',
        photoUrl:
            'https://images.unsplash.com/photo-1680664777916-0e4735183619?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80',
        press: () {}),
    HeadSliderComponents(
        title: 'App Development with Flutter',
        slogan: 'Bring your Ideas to Life',
        category: 'App Development',
        tutor: 'Aditya Thakur',
        photoUrl:
            'https://images.unsplash.com/photo-1605379399642-870262d3d051?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1206&q=80',
        press: () {}),
    HeadSliderComponents(
        title: 'Free Mock IELTS',
        slogan: 'Master IELTS',
        category: 'Assignment Test',
        tutor: 'Languify',
        photoUrl:
            'https://images.unsplash.com/photo-1550439062-609e1531270e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        press: () {}),
  ];
  int? current;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
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
                  return SizedBox(
                    height: 250,
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                  image: NetworkImage(clist[index].photoUrl),
                                  fit: BoxFit.cover)),
                          child: Row(
                            children: [
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        clist[index].title,
                                        style: widget.style.copyWith(
                                            color: Colors.white, fontSize: 15),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Container(
                                        decoration: BoxDecoration(
                                            color:
                                                Colors.white.withOpacity(0.3),
                                            borderRadius:
                                                BorderRadius.circular(4)),
                                        child: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              vertical: 5, horizontal: 10),
                                          child: Text(
                                            clist[index].category,
                                            style: widget.style
                                                .copyWith(color: Colors.white),
                                          ),
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 5,
                                      ),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          const CircleAvatar(
                                            backgroundColor: Colors.white,
                                            radius: 8,
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            clist[index].tutor,
                                            style: widget.style
                                                .copyWith(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      InkWell(
                                        onTap: clist[index].press,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              color: primaryColor,
                                              borderRadius:
                                                  BorderRadius.circular(5)),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                vertical: 5, horizontal: 10),
                                            child: Text(
                                              'Watch',
                                              style: widget.style.copyWith(
                                                  color: Colors.white),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                        clist[index].slogan,
                                        style: widget.style.copyWith(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 25),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Positioned(
                            top: 0,
                            bottom: 0,
                            right: 0,
                            child: Container(
                              height: 250,
                              width: 300,
                              decoration: const BoxDecoration(
                                  gradient: LinearGradient(
                                      colors: [
                                    Color.fromARGB(252, 0, 0, 0),
                                    Color.fromARGB(0, 0, 0, 0),
                                  ],
                                      begin: Alignment.centerRight,
                                      end: Alignment.center)),
                            )),
                      ],
                    ),
                  );
                },
                options: CarouselOptions(
                    viewportFraction: 1,
                    autoPlay: true,
                    height: 250,
                    enlargeCenterPage: false,
                    onPageChanged: (index, reason) {
                      setState(() {
                        current = index;
                      });
                    })),
          ),
          Positioned(
              left: 0,
              right: 0,
              bottom: 10,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(
                      clist.length,
                      (index) => Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 5.0, vertical: 10),
                            child: Container(
                              width: 5,
                              height: 5,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: index == current
                                      ? primaryColor
                                      : appBarColor),
                            ),
                          )))),
        ],
      ),
    );
  }
}
