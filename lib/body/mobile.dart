import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:assignment_01_cipherschools/page/course.dart';
import 'package:assignment_01_cipherschools/page/home.dart';
import 'package:assignment_01_cipherschools/page/profile.dart';
import 'package:assignment_01_cipherschools/page/trending.dart';
import 'package:flutter/material.dart';

class Mobile extends StatefulWidget {
  const Mobile({super.key});

  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  int page = 0;
  bool homeHover = false;
  bool courseHover = false;
  bool trendingHover = false;
  bool profileHover = false;
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontSize: mediumT, color: darkC, fontWeight: FontWeight.w400);
    return Stack(
      children: [
        SafeArea(
          child: SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: page == 0
                ? const Home()
                : page == 1
                    ? const Course()
                    : page == 2
                        ? const Trending()
                        : page == 3
                            ? const Profile()
                            : null,
          ),
        ),
        Positioned(
          bottom: 20,
          left: 20,
          right: 20,
          child: Material(
            color: Colors.white,
            borderRadius: BorderRadius.circular(50),
            elevation: 15,
            shadowColor: darkC.withOpacity(0.7),
            child: Container(
              height: 55,
              width: 400,
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(50)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {
                      setState(() {
                        page = 0;
                      });
                    },
                    child: Container(
                      height: 55,
                      width: 60,
                      decoration: BoxDecoration(
                          color:
                              homeHover ? primaryColor.withOpacity(0.1) : null),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              AntIcons.homeFilled,
                              size: 20,
                              color: page == 0 ? primaryColor : darkC,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('Home',
                                style: style.copyWith(
                                  fontSize: 10,
                                  color: page == 0 ? primaryColor : darkC,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        page = 1;
                      });
                    },
                    child: Container(
                      height: 55,
                      width: 60,
                      decoration: BoxDecoration(
                          color: courseHover
                              ? primaryColor.withOpacity(0.1)
                              : null),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              AntIcons.bookFilled,
                              size: 20,
                              color: page == 1 ? primaryColor : darkC,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('Courses',
                                style: style.copyWith(
                                  fontSize: 10,
                                  color: page == 1 ? primaryColor : darkC,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        page = 2;
                      });
                    },
                    child: Container(
                      height: 55,
                      width: 60,
                      decoration: BoxDecoration(
                          color: trendingHover
                              ? primaryColor.withOpacity(0.1)
                              : null),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              AntIcons.compassFilled,
                              size: 20,
                              color: page == 2 ? primaryColor : darkC,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('Trending',
                                style: style.copyWith(
                                  fontSize: 10,
                                  color: page == 2 ? primaryColor : darkC,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      setState(() {
                        page = 3;
                      });
                    },
                    child: Container(
                      height: 55,
                      width: 60,
                      decoration: BoxDecoration(
                          color: profileHover
                              ? primaryColor.withOpacity(0.1)
                              : null),
                      child: Padding(
                        padding: const EdgeInsets.all(5.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.person,
                              size: 20,
                              color: page == 3 ? primaryColor : darkC,
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text('My Profile',
                                style: style.copyWith(
                                  fontSize: 10,
                                  color: page == 3 ? primaryColor : darkC,
                                ))
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        )
      ],
    );
  }
}
