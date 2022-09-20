import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/app/utils/colors.dart';

class SplashWidget extends StatelessWidget {
  const SplashWidget({
    required this.color,
    Key? key,
  }) : super(key: key);
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/favorite.png',
          height: 31.h,
          width: 32.w,
          color: color,
          fit: BoxFit.fill,
        ),
        SizedBox(
          height: 26.h,
        ),
        Text(
          'HEALTHSCAPE',
          style: TextStyle(
              fontFamily: 'Lato',
              color: color,
              fontSize: 39.sp,
              letterSpacing: 4,
              fontWeight: FontWeight.w200), //TODO: add animation
        ),
      ],
    );
  }
}
