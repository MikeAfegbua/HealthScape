import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/app/navigation/navigator.dart';
import 'package:healthscape/app/utils/colors.dart';
import 'package:healthscape/views/auth/custom_button.dart';

class Payment extends StatelessWidget {
  const Payment({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            AppNavigator.doPop();
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
        ),
        elevation: 0,
        backgroundColor: Colors.white,
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(top: 10.h, left: 32.w, right: 32.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Payment',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 22.sp,
                  height: 24 / 22,
                  fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 50.h,
            ),
            Container(
              width: double.infinity,
              height: 46.h,
              padding: EdgeInsets.only(left: 20.w, right: 10.w),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Pick a plan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        height: 22 / 16,
                        fontWeight: FontWeight.w400),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.keyboard_arrow_down_rounded,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                children: [
                  Text(
                    'First name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        height: 22 / 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  Text(
                    'Last  name',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        height: 22 / 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 150.w,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      height: 24 / 16,
                      color: const Color(0xff161616),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 28.w, vertical: 10.h),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  width: 150.w,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      height: 24 / 16,
                      color: const Color(0xff161616),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 28.w, vertical: 10.h),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Card number',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16.sp,
                      height: 22 / 16,
                      fontWeight: FontWeight.w400),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/visa.png',
                      width: 32.w,
                      height: 21.h,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/mast.png',
                      width: 32.w,
                      height: 21.h,
                      fit: BoxFit.fill,
                    ),
                    Image.asset(
                      'assets/pay.png',
                      width: 32.w,
                      height: 21.h,
                      fit: BoxFit.fill,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: double.infinity,
              height: 46.h,
              padding: EdgeInsets.only(left: 20.w, right: 10.w),
              decoration: BoxDecoration(
                border: Border.all(width: 1, color: Colors.black),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    '0000   1234   5678   9100    ',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        height: 22 / 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.w),
              child: Row(
                children: [
                  Text(
                    'Expiry date',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        height: 22 / 16,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    width: 90.w,
                  ),
                  Text(
                    'CVV',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        height: 22 / 16,
                        fontWeight: FontWeight.w400),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 16.h,
            ),
            Row(
              children: [
                SizedBox(
                  width: 150.w,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      height: 24 / 16,
                      color: const Color(0xff161616),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 28.w, vertical: 10.h),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                SizedBox(
                  width: 150.w,
                  child: TextField(
                    style: TextStyle(
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w300,
                      height: 24 / 16,
                      color: const Color(0xff161616),
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.symmetric(
                          horizontal: 28.w, vertical: 10.h),
                      focusedBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderSide: const BorderSide(color: Colors.black),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 16.h,
            ),
            Wrap(
              children: [
                Text(
                  '''By continuing you agree to ''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      height: 14 / 12,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Terms of Use',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 12.sp,
                      height: 14 / 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            Wrap(
              children: [
                Text(
                  '''including the paid user ''',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12.sp,
                      height: 14 / 12,
                      fontWeight: FontWeight.w400),
                ),
                Text(
                  'Service Agreement ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: AppColors.primary,
                      fontSize: 12.sp,
                      height: 14 / 12,
                      fontWeight: FontWeight.w400),
                ),
              ],
            ),
            SizedBox(
              height: 48.h,
            ),
            CustomButton(
              text: 'Make Payment',
              onTap: () {
                AppNavigator.navigateTo(home);
              },
              horizont: 20,
              width: 264.w,
            )
          ],
        ),
      ),
    );
  }
}
