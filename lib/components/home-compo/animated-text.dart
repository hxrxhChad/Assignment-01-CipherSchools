// ignore_for_file: file_names

import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:assignment_01_cipherschools/constant/colorsize.dart';
import 'package:flutter/material.dart';

class AnimatedTextWidget extends StatelessWidget {
  const AnimatedTextWidget({
    super.key,
    required this.style,
  });

  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return AnimatedTextKit(repeatForever: true, animatedTexts: [
      TyperAnimatedText('absolutely Free',
          curve: Curves.linear,
          textAlign: TextAlign.end,
          speed: const Duration(milliseconds: 80),
          textStyle: style.copyWith(fontSize: 20, color: primaryColor))
    ]);
  }
}
