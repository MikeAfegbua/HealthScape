import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/app/navigation/navigator.dart';
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
        padding: EdgeInsets.only(top: 30.h, left: 40.w, right: 40.w),
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
            Text(
              '''By continuing you agree to the Terms of Use 
 including the paid user Service Agreement ''',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 12.sp,
                  height: 14 / 12,
                  fontWeight: FontWeight.w400),
            ),
            CustomButton(
              text: 'Make Payment',
              onTap: () {},
              horizont: 20,
              width: 264.w,
            )
          ],
        ),
      ),
    );
  }
}
