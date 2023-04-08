import 'package:flutter/material.dart';

import 'package:assignment_01_cipherschools/constant/colorsize.dart';

class Count extends StatelessWidget {
  const Count({
    Key? key,
    required this.style,
    required this.value,
    required this.suffix,
    required this.title,
  }) : super(key: key);

  final TextStyle style;
  final int value;
  final String suffix;
  final String title;

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: IntTween(begin: 0, end: value),
      duration: const Duration(seconds: 2),
      curve: Curves.fastOutSlowIn,
      builder: (context, value, child) => Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$value',
                style: style.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              ),
              Text(
                suffix,
                style: style.copyWith(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: primaryColor),
              )
            ],
          ),
          Text(
            title,
            textAlign: TextAlign.center,
            style: style.copyWith(fontSize: 22),
          ),
        ],
      ),
    );
  }
}
