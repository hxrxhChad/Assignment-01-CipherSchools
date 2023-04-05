import 'package:flutter/material.dart';

class Responsivelayout extends StatelessWidget {
  const Responsivelayout({
    Key? key,
    required this.desktopBody,
    required this.mobileBody,
    required this.tabletBody,
  }) : super(key: key);

  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < 700) {
          return mobileBody;
        } else if (constraints.maxWidth < 1200) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
