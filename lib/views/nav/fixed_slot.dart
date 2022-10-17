import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/app/utils/colors.dart';

class Fixed extends StatelessWidget {
  const Fixed({required this.name, Key? key}) : super(key: key);
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 80.w, vertical: 220.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: AppColors.primary,
              ),
              child: Icon(Icons.check, size: 55.h, color: Colors.white),
            ),
            SizedBox(
              height: 65.h,
            ),
            Text(
                'Your appointment for 6pm with \n $name at \n Federal Hospital, Kuru \n has been set',
                style: TextStyle(
                  fontFamily: 'Open Sans',
                  fontWeight: FontWeight.w600,
                  fontSize: 14.sp,
                ),
                textAlign: TextAlign.center),
          ],
        ),
      ),
    );
  }
}
