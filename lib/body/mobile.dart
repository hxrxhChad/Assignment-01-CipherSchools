// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:assignment_01_cipherschools/helper/theme-prov.dart';
import 'package:flutter/material.dart';

import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:assignment_01_cipherschools/page/course.dart';
import 'package:assignment_01_cipherschools/page/home.dart';
import 'package:assignment_01_cipherschools/page/profile.dart';
import 'package:assignment_01_cipherschools/page/trending.dart';
import 'package:provider/provider.dart';

class Mobile extends StatefulWidget {
  const Mobile({
    Key? key,
    required this.isDark,
  }) : super(key: key);
  final bool isDark;
  @override
  State<Mobile> createState() => _MobileState();
}

class _MobileState extends State<Mobile> {
  int page = 0;

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontSize: mediumT, color: darkC, fontWeight: FontWeight.w400);
    return ChangeNotifierProvider(
        create: (context) => ThemeSetting(widget.isDark),
        builder: (context, snapshot) {
          final setting = Provider.of<ThemeSetting>(context);
          return Stack(
            children: [
              SizedBox(
                height: double.infinity,
                width: double.infinity,
                child: page == 0
                    ? Home(
                        isDark: widget.isDark,
                      )
                    : page == 1
                        ? Course(
                            isDark: widget.isDark,
                          )
                        : page == 2
                            ? Trending(
                                isDark: widget.isDark,
                              )
                            : page == 3
                                ? const Profile()
                                : null,
              ),
              Positioned(
                bottom: 20,
                left: 20,
                right: 20,
                child: Material(
                  color: setting.current ? appBarColor : Colors.white,
                  borderRadius: BorderRadius.circular(50),
                  elevation: 15,
                  shadowColor: darkC.withOpacity(0.1),
                  child: Container(
                    height: 60,
                    width: 400,
                    decoration: BoxDecoration(
                        color: setting.current ? appBarColor : Colors.white,
                        borderRadius: BorderRadius.circular(50)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        InkWell(
                          onTap: () async {
                            setState(() {
                              page = 0;
                            });
                          },
                          child: Container(
                            height: 55,
                            width: 60,
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    AntIcons.homeFilled,
                                    size: 20,
                                    color: page == 0
                                        ? primaryColor
                                        : setting.current
                                            ? Colors.white
                                            : darkC,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('Home',
                                      style: style.copyWith(
                                        fontSize: 10,
                                        color: page == 0
                                            ? primaryColor
                                            : setting.current
                                                ? Colors.white
                                                : darkC,
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
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    AntIcons.bookFilled,
                                    size: 20,
                                    color: page == 1
                                        ? primaryColor
                                        : setting.current
                                            ? Colors.white
                                            : darkC,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('Courses',
                                      style: style.copyWith(
                                        fontSize: 10,
                                        color: page == 1
                                            ? primaryColor
                                            : setting.current
                                                ? Colors.white
                                                : darkC,
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
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    AntIcons.compassFilled,
                                    size: 20,
                                    color: page == 2
                                        ? primaryColor
                                        : setting.current
                                            ? Colors.white
                                            : darkC,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('Trending',
                                      style: style.copyWith(
                                        fontSize: 10,
                                        color: page == 2
                                            ? primaryColor
                                            : setting.current
                                                ? Colors.white
                                                : darkC,
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
                            decoration: const BoxDecoration(),
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(
                                    Icons.person,
                                    size: 20,
                                    color: page == 3
                                        ? primaryColor
                                        : setting.current
                                            ? Colors.white
                                            : darkC,
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('My Profile',
                                      style: style.copyWith(
                                        fontSize: 10,
                                        color: page == 3
                                            ? primaryColor
                                            : setting.current
                                                ? Colors.white
                                                : darkC,
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
        });
  }
}
