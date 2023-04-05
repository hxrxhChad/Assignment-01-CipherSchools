import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:assignment_01_cipherschools/components/course-compo/head-slider.dart';
import 'package:assignment_01_cipherschools/components/course-compo/video.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:flutter/material.dart';
import 'package:switcher_button/switcher_button.dart';

class Course extends StatefulWidget {
  const Course({super.key});

  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  bool darkMode = false;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontSize: mediumT,
        color: darkMode ? Colors.white : darkC,
        fontWeight: FontWeight.w400);

    Color scaffoldColor = darkMode ? backgroundColor : whiteBg;
    Color appBarC = darkMode ? appBarColor : whiteBg;
    Color iconColor = darkMode ? Colors.white : darkC;

    return Scaffold(
      backgroundColor: scaffoldColor,
      body: Column(
        children: [
          Material(
            color: appBarC,
            shadowColor: darkC.withOpacity(0.4),
            elevation: 15,
            child: Container(
              height: 52,
              width: double.infinity,
              decoration: BoxDecoration(color: appBarC),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'CipherSchools',
                      style: style.copyWith(
                          fontWeight: FontWeight.bold, fontSize: 17),
                    ),
                    Row(
                      children: [
                        InkWell(
                          onTap: () {},
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Icon(
                                AntIcons.compassOutlined,
                                color: iconColor,
                                size: 13,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Text(
                                'Browse',
                                style: style,
                              ),
                              const SizedBox(
                                width: 3,
                              ),
                              Icon(
                                AntIcons.downOutlined,
                                color: iconColor,
                                size: 13,
                              )
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        SwitcherButton(
                          size: 30,
                          onChange: (value) {
                            if (value == true) {
                              setState(() {
                                darkMode = true;
                              });
                            } else {
                              setState(() {
                                darkMode = false;
                              });
                            }
                          },
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              AntIcons.bellOutlined,
                              color: iconColor,
                              size: 16,
                            )),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(
                              AntIcons.searchOutlined,
                              color: iconColor,
                              size: 16,
                            )),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
              child: Column(
            children: [
              HeadSlider(style: style),
              const SizedBox(
                height: 20,
              ),
              Video(style: style, appBarC: appBarC, iconColor: iconColor)
            ],
          ))
        ],
      ),
    );
  }
}
