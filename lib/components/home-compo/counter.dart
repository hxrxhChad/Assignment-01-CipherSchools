import 'package:assignment_01_cipherschools/widget/count.dart';
import 'package:flutter/material.dart';

class Counter extends StatelessWidget {
  const Counter({
    Key? key,
    required this.style,
  }) : super(key: key);
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Count(
                    style: style,
                    suffix: 'K+',
                    title: 'Students',
                    value: 15,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Count(
                    style: style,
                    suffix: 'K+',
                    title: 'Streamed minutes',
                    value: 450,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Count(
                    style: style,
                    suffix: '+',
                    title: 'Creators',
                    value: 50,
                  ),
                ],
              )),
          const SizedBox(
            width: 30,
          ),
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Count(
                    style: style,
                    suffix: 'K+',
                    title: 'Cirtificates delivered',
                    value: 10,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Count(
                    style: style,
                    suffix: 'TB+',
                    title: 'Content streamed in last 60 days',
                    value: 12,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Count(
                    style: style,
                    suffix: '+',
                    title: 'Programs available',
                    value: 110,
                  ),
                ],
              )),
        ],
      ),
    );
  }
}
