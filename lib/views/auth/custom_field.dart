import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      style: TextStyle(
        fontSize: 20.sp,
        fontWeight: FontWeight.w300,
        height: 24 / 16,
        color: const Color(0xff161616),
      ),
      decoration: InputDecoration(
        contentPadding: EdgeInsets.symmetric(horizontal: 28.w, vertical: 10.h),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: Colors.white),
          borderRadius: BorderRadius.circular(12),
        ),
        fillColor: const Color(0xffDCDCDC),
        hintStyle: const TextStyle(
          color: Color(0xffC8C8C8),
        ),
        filled: true,
        border: InputBorder.none,
      ),
    );
  }
}
