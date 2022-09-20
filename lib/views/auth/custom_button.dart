import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/utils/colors.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    required this.text,
    required this.onTap,
    this.color = AppColors.primary,
    this.width = 311,
    this.horizont = 120,
    this.border,
    Key? key,
  }) : super(key: key);
  final String text;
  final Color? color;
  final BoxBorder? border;
  final double? width;
  final double horizont;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: horizont),
        width: width,
        height: 48.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          border: border,
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                fontFamily: 'Lato',
                color: AppColors.white,
                fontSize: 18.sp,
                letterSpacing: 1,
                fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
