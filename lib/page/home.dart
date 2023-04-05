// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: unused_local_variable

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:assignment_01_cipherschools/components/home-compo/slider.dart';

import 'package:flutter/material.dart';

import 'package:assignment_01_cipherschools/components/home-compo/animated-text.dart';
import 'package:assignment_01_cipherschools/components/home-compo/header.dart';
import 'package:assignment_01_cipherschools/components/home-compo/hover-box.dart';
import 'package:assignment_01_cipherschools/components/home-compo/rating.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final style = Theme.of(context)
        .textTheme
        .titleSmall!
        .copyWith(fontSize: mediumT, color: darkC, fontWeight: FontWeight.w400);
    return Scaffold(
      body: Column(
        children: [
          Material(
            color: Colors.white,
            shadowColor: darkC.withOpacity(0.4),
            elevation: 15,
            child: Container(
              height: 52,
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
                          fontWeight: FontWeight.bold, fontSize: 17),
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
            child: Padding(
              padding: const EdgeInsets.only(left: 20.0, right: 20),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Header(style: style),
                    const SizedBox(
                      height: 30,
                    ),
                    Text(
                      'Start Learning by best creators for',
                      style: style.copyWith(
                          fontSize: 18, color: darkC.withOpacity(0.7)),
                    ),
                    AnimatedTextWidget(style: style),
                    const SizedBox(
                      height: 30,
                    ),
                    Rating(style: style),
                    const SizedBox(
                      height: 30,
                    ),
                    HoverBox(style: style, pressed: () {}),
                    const SizedBox(
                      height: 50,
                    ),
                    Slide(
                      style: style,
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
