// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';

import 'package:assignment_01_cipherschools/constant/colorsize.dart';

class VideoComponents {
  final String banner;
  final String category;
  final String title;
  final String detail;
  final String tutor;
  VideoComponents({
    required this.banner,
    required this.category,
    required this.title,
    required this.detail,
    required this.tutor,
  });
}

class Video extends StatelessWidget {
  Video({
    super.key,
    required this.style,
    required this.appBarC,
    required this.iconColor,
  });

  final TextStyle style;
  final Color appBarC;
  final Color iconColor;
  final List<VideoComponents> vidList = [
    VideoComponents(
        banner:
            'https://images.unsplash.com/photo-1680664777916-0e4735183619?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=749&q=80',
        category: 'Programming',
        title: 'Python and Django for Beginners',
        detail: 'A free python course for Beginners',
        tutor: 'Cipher School'),
    VideoComponents(
        banner:
            'https://images.unsplash.com/photo-1605379399642-870262d3d051?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1206&q=80',
        category: 'App Development',
        title: 'App Development with Flutter',
        detail: 'A free python course for Beginners',
        tutor: 'Aditya Thakur'),
    VideoComponents(
        banner:
            'https://images.unsplash.com/photo-1550439062-609e1531270e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1170&q=80',
        category: 'Assignment Test',
        title: 'Free Mock IELTS',
        detail: 'A free python course for Beginners',
        tutor: 'Languify'),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recommended Courses',
                style:
                    style.copyWith(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              Material(
                color: appBarC,
                borderRadius: BorderRadius.circular(5),
                elevation: 15,
                shadowColor: appBarColor.withOpacity(0.2),
                child: Container(
                  decoration: BoxDecoration(
                    color: appBarC,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                    child: Row(
                      children: [
                        Text(
                          'Popular',
                          style: style,
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Icon(
                          AntIcons.downOutlined,
                          size: 12,
                          color: iconColor,
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                  vidList.length,
                  (index) => Padding(
                        padding: const EdgeInsets.only(right: 20, bottom: 20),
                        child: Material(
                          color: appBarC,
                          borderRadius: BorderRadius.circular(10),
                          elevation: 15,
                          shadowColor: appBarC.withOpacity(0.5),
                          child: Container(
                            height: 250,
                            width: 200,
                            decoration: BoxDecoration(
                              color: appBarC,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Column(
                              children: [
                                Container(
                                  height: 120,
                                  width: 200,
                                  decoration: BoxDecoration(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(10),
                                          topRight: Radius.circular(10)),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              vidList[index].banner),
                                          fit: BoxFit.cover)),
                                ),
                                Expanded(
                                  child: Padding(
                                    padding: const EdgeInsets.all(10.0),
                                    child: SingleChildScrollView(
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            decoration: BoxDecoration(
                                                color: appBarC.withOpacity(0.3),
                                                borderRadius:
                                                    BorderRadius.circular(4)),
                                            child: Padding(
                                              padding:
                                                  const EdgeInsets.symmetric(
                                                      vertical: 1,
                                                      horizontal: 3),
                                              child: Text(
                                                vidList[index].category,
                                                style: style.copyWith(
                                                    color: primaryColor,
                                                    fontSize: 9),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            vidList[index].title.length < 10
                                                ? vidList[index].title
                                                : '${vidList[index].title}...',
                                            maxLines:
                                                vidList[index].title.length > 10
                                                    ? 1
                                                    : null,
                                            style: style.copyWith(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 17),
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Text(
                                            vidList[index].detail,
                                            style: style,
                                          ),
                                          const SizedBox(
                                            height: 5,
                                          ),
                                          Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              CircleAvatar(
                                                backgroundColor: iconColor,
                                                radius: 8,
                                              ),
                                              const SizedBox(
                                                width: 5,
                                              ),
                                              Text(
                                                vidList[index].tutor,
                                                style: style,
                                              ),
                                            ],
                                          )
                                        ],
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      )),
            ),
          )
        ],
      ),
    );
  }
}
