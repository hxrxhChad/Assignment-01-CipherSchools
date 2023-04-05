// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: file_names, prefer_const_constructors, prefer_final_fields

import 'package:antdesign_icons/antdesign_icons.dart';
import 'package:flutter/material.dart';

import 'package:assignment_01_cipherschools/constant/colorsize.dart';

class HoverBox extends StatefulWidget {
  const HoverBox({
    Key? key,
    required this.style,
    required this.pressed,
  }) : super(key: key);

  final TextStyle style;
  final void Function() pressed;

  @override
  State<HoverBox> createState() => _HoverBoxState();
}

class _HoverBoxState extends State<HoverBox> {
  bool _isHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onHover: (event) {
        setState(() {
          _isHover = true;
        });
      },
      onExit: (event) {
        setState(() {
          _isHover = false;
        });
      },
      child: InkWell(
        onTap: widget.pressed,
        child: Container(
          height: 40,
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: _isHover ? primaryColor.withOpacity(0.7) : primaryColor),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Start Learning Now',
                style: widget.style.copyWith(color: Colors.white),
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
      ),
    );
  }
}
