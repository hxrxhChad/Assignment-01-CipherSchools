// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:switcher_button/switcher_button.dart';

import 'package:assignment_01_cipherschools/components/course-compo/head-slider.dart';
import 'package:assignment_01_cipherschools/components/course-compo/video.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:assignment_01_cipherschools/helper/theme-prov.dart';

class Course extends StatefulWidget {
  const Course({
    Key? key,
    required this.isDark,
  }) : super(key: key);
  final bool isDark;
  @override
  State<Course> createState() => _CourseState();
}

class _CourseState extends State<Course> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => ThemeSetting(widget.isDark),
        builder: (context, snapshot) {
          final setting = Provider.of<ThemeSetting>(context);
          final style = Theme.of(context).textTheme.titleSmall!.copyWith(
              fontSize: mediumT,
              color: setting.current ? Colors.white : darkC,
              fontWeight: FontWeight.w400);

          Color scaffoldColor = setting.current ? backgroundColor : whiteBg;
          Color appBarC = setting.current ? appBarColor : whiteBg;
          Color iconColor = setting.current ? Colors.white : darkC;

          return AnnotatedRegion<SystemUiOverlayStyle>(
            value: SystemUiOverlayStyle(
              statusBarColor: appBarC, // transparent status bar
              systemNavigationBarColor: scaffoldColor, // navigation bar color
              statusBarIconBrightness: setting.current
                  ? Brightness.light
                  : Brightness.dark, // status bar icons' color
              systemNavigationBarIconBrightness:
                  Brightness.dark, //navigation bar icons' color
            ),
            child: Scaffold(
              backgroundColor: scaffoldColor,
              body: SafeArea(
                child: Column(
                  children: [
                    Material(
                      color: appBarC,
                      shadowColor: darkC.withOpacity(0.05),
                      elevation: 10,
                      child: Container(
                        height: 60,
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
                                    fontWeight: FontWeight.bold, fontSize: 18),
                              ),
                              Row(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
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
                                    onColor: setting.current == false
                                        ? darkC
                                        : Colors.white,
                                    offColor: setting.current == false
                                        ? Colors.white
                                        : darkC,
                                    size: 30,
                                    onChange: (value) {
                                      final setting = Provider.of<ThemeSetting>(
                                          context,
                                          listen: false);
                                      setting.toogleTheme();
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
                        child: SingleChildScrollView(
                      child: Column(
                        children: [
                          HeadSlider(style: style),
                          const SizedBox(
                            height: 20,
                          ),
                          Video(
                              style: style,
                              appBarC: appBarC,
                              iconColor: iconColor),
                          const SizedBox(
                            height: 500,
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
          );
        });
  }
}
