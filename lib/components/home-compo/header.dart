import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
    required this.style,
  });

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Text.rich(
          textAlign: TextAlign.center,
          TextSpan(children: [
            TextSpan(
                text: 'Welcome to ',
                style:
                    style.copyWith(fontSize: 40, fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'the Future ',
                style: style.copyWith(
                    fontSize: 40,
                    color: primaryColor,
                    fontWeight: FontWeight.bold)),
            TextSpan(
                text: 'of Learning!',
                style:
                    style.copyWith(fontSize: 40, fontWeight: FontWeight.bold)),
          ])),
    );
  }
}
