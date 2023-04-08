// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:assignment_01_cipherschools/components/home-compo/animated-text.dart';
import 'package:assignment_01_cipherschools/components/home-compo/counter.dart';
import 'package:assignment_01_cipherschools/components/home-compo/header.dart';
import 'package:assignment_01_cipherschools/components/home-compo/hover-box.dart';
import 'package:assignment_01_cipherschools/components/home-compo/rating.dart';
import 'package:assignment_01_cipherschools/components/home-compo/slider.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';

class Home extends StatelessWidget {
  const Home({
    Key? key,
    required this.isDark,
  }) : super(key: key);
  final bool isDark;
  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontSize: mediumT, color: darkC, fontWeight: FontWeight.w400);
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.white, // transparent status bar
        systemNavigationBarColor: whiteBg, // navigation bar color
        statusBarIconBrightness: Brightness.dark, // status bar icons' color
        systemNavigationBarIconBrightness:
            Brightness.dark, //navigation bar icons' color
      ),
      child: Scaffold(
        body: SafeArea(
          child: Column(
            children: [
              Material(
                color: Colors.white,
                shadowColor: darkC.withOpacity(0.05),
                elevation: 10,
                child: Container(
                  height: 60,
                  width: double.infinity,
                  decoration: const BoxDecoration(color: Colors.white),
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
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(
                              AntIcons.alignRightOutlined,
                              color: darkC,
                              size: 20,
                            ))
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Header(style: style),
                      const SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Start Learning by best creators for',
                        style: style.copyWith(
                            fontSize: 20, color: darkC.withOpacity(0.7)),
                      ),
                      AnimatedTextWidget(style: style),
                      const SizedBox(
                        height: 30,
                      ),
                      Rating(style: style),
                      const SizedBox(
                        height: 40,
                      ),
                      HoverBox(style: style, pressed: () {}),
                      const SizedBox(
                        height: 30,
                      ),
                      Slide(
                        style: style,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Counter(
                        style: style,
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      const SizedBox(
                        height: 500,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
