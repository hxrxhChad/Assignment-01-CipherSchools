// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, prefer_const_constructors, prefer_final_fields

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';

import 'package:assignment_01_cipherschools/constant/colorsize.dart';

class HoverBox extends StatelessWidget {
  const HoverBox({
    Key? key,
    required this.style,
    required this.pressed,
  }) : super(key: key);

  final TextStyle style;
  final void Function() pressed;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: pressed,
      child: Container(
        height: 50,
        width: 200,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: primaryColor),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Start Learning Now',
              style: style.copyWith(color: Colors.white, fontSize: 15),
            ),
            SizedBox(
              width: 10,
            ),
            Icon(
              AntIcons.arrowRightOutlined,
              color: Colors.white,
              size: 16,
            )
          ],
        ),
      ),
    );
  }
}
