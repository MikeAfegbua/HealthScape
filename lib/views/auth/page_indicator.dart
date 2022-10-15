import 'package:flutter/material.dart';

class PageIndicatorWidget extends StatelessWidget {
  const PageIndicatorWidget({
    Key? key,
    required this.count,
    required this.value,
    this.size = 8,
    this.spacing = 12,
    this.color = Colors.white,
  }) : super(key: key);

  final int count;
  final int value;
  final double size;
  final double spacing;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        for (int i = 0; i < count; i++)
          AnimatedContainer(
            height: 11,
            width: 11,
            margin: EdgeInsets.fromLTRB(
              0,
              spacing,
              i == count - 1 ? 0 : spacing,
              spacing,
            ),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: i == value ? color : const Color(0xffB7B5B5),
            ),
            duration: const Duration(milliseconds: 500),
          )
      ],
    );
  }
}
