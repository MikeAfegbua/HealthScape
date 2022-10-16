import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/app/utils/colors.dart';

class Slots extends StatelessWidget {
  const Slots({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 100.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Available Slots',
              style: TextStyle(
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
                wordSpacing: 2,
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Container(
              height: 44.h,
              width: 145.w,
              decoration: BoxDecoration(
                border: Border.all(width: 2, color: AppColors.primary),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Center(
                child: Text(
                  '4:00PM - 6:00PM',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      height: 22 / 16,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ),
            SizedBox(
              height: 30.h,
            ),
            Column(
              children: const [
                DrWidget(
                  name: 'Dr. Fagbemi',
                  time: '4:00pm',
                ),
                DrWidget(
                  name: 'Dr. Aremu',
                  time: '4:30pm',
                ),
                DrWidget(
                  name: 'Dr. Usman',
                  time: '6:00pm',
                ),
                DrWidget(
                  name: 'Dr. Elisa',
                  time: '5:00pm',
                ),
                DrWidget(
                  name: 'Dr. Oge',
                  time: '4:00pm',
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class DrWidget extends StatelessWidget {
  const DrWidget({
    required this.name,
    required this.time,
    Key? key,
  }) : super(key: key);
  final String name;
  final String time;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h),
      child: Container(
        width: double.infinity,
        height: 60.h,
        padding: EdgeInsets.only(left: 10.w, right: 10.w),
        decoration: BoxDecoration(
          border: Border.all(width: 1, color: AppColors.primary),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              name,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 16.sp,
                  height: 22 / 16,
                  fontWeight: FontWeight.w400),
            ),
            Text(
              time,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.sp,
                  height: 22 / 18,
                  fontWeight: FontWeight.w400),
            ),
          ],
        ),
      ),
    );
  }
}
