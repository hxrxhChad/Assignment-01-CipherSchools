// ignore_for_file: file_names

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:flutter/material.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.style,
  });

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(
            height: 40,
            width: 130,
            child: Stack(
              children: [
                Positioned(
                  right: 0,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: darkC, shape: BoxShape.circle),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 30,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: darkC, shape: BoxShape.circle),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  right: 60,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: const BoxDecoration(
                        color: Colors.white, shape: BoxShape.circle),
                    child: Padding(
                      padding: const EdgeInsets.all(3),
                      child: Container(
                        decoration: const BoxDecoration(
                            color: darkC, shape: BoxShape.circle),
                      ),
                    ),
                  ),
                ),
              ],
            )),
        const SizedBox(
          width: 5,
        ),
        Text.rich(TextSpan(children: [
          TextSpan(
              text: '50+\n',
              style: style.copyWith(fontWeight: FontWeight.bold, fontSize: 17)),
          TextSpan(text: 'Mentors', style: style)
        ])),
        VerticalDivider(
          color: darkC.withOpacity(0.9),
        ),
        const SizedBox(
          width: 20,
        ),
        Column(
          children: [
            Text(
              '4.8/5',
              style: style.copyWith(fontWeight: FontWeight.bold, fontSize: 17),
            ),
            Row(
              children: [
                const Icon(
                  AntIcons.starFilled,
                  color: primaryColor,
                  size: 15,
                ),
                const Icon(
                  AntIcons.starFilled,
                  color: primaryColor,
                  size: 15,
                ),
                const Icon(
                  AntIcons.starFilled,
                  color: primaryColor,
                  size: 15,
                ),
                const Icon(
                  AntIcons.starFilled,
                  color: primaryColor,
                  size: 15,
                ),
                const Icon(
                  Icons.star_half,
                  color: primaryColor,
                  size: 15,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Ratings',
                  style: style,
                )
              ],
            )
          ],
        )
      ],
    );
  }
}
