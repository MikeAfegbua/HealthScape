import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/app/navigation/navigator.dart';
import 'package:healthscape/views/auth/custom_field.dart';
import '../../app/utils/colors.dart';
import 'custom_button.dart';

class SignInWidget extends StatelessWidget {
  const SignInWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Text(
              'Welcome Back',
              style: TextStyle(
                  fontFamily: 'Lato',
                  color: Colors.black,
                  fontSize: 20.sp,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w600),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(
            height: 25.h,
          ),
          Text(
            "Email",
            style: TextStyle(
                fontFamily: 'Lato',
                color: Colors.black,
                fontSize: 18.sp,
                letterSpacing: 1,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 12.h,
          ),
          const CustomTextField(),
          SizedBox(
            height: 28.h,
          ),
          Text(
            "Password",
            style: TextStyle(
                fontFamily: 'Lato',
                color: Colors.black,
                fontSize: 18.sp,
                letterSpacing: 1,
                fontWeight: FontWeight.w400),
            textAlign: TextAlign.center,
          ),
          SizedBox(
            height: 12.h,
          ),
          const CustomTextField(),
          SizedBox(
            height: 23.h,
          ),
          Wrap(
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.rectangle,
                  border: Border.all(width: 1, color: Colors.black),
                ),
                child: Icon(
                  Icons.check_outlined,
                  size: 15.h,
                ),
              ),
              SizedBox(
                width: 5.w,
              ),
              Text(
                "Remember Password ",
                style: TextStyle(
                    fontFamily: 'Lato',
                    color: Colors.black,
                    fontSize: 12.sp,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ],
          ),
          SizedBox(
            height: 29.h,
          ),
          Center(
            child: CustomButton(
              text: 'Sign In',
              onTap: () {
                AppNavigator.navigateTo(navBar);
              },
              width: 248.w,
              horizont: 0,
            ),
          ),
          SizedBox(
            height: 16.h,
          ),
          Center(
            child: Row(
              children: [
                Container(
                  width: 90.w,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(1.r),
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Text(
                  "Or Sign In with",
                  style: TextStyle(
                      fontFamily: 'Lato',
                      color: Colors.black,
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  width: 10.w,
                ),
                Container(
                  width: 90.w,
                  height: 1,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    shape: BoxShape.rectangle,
                    borderRadius: BorderRadius.circular(1.r),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/google.png',
                  width: 30.w,
                  height: 30.h,
                  fit: BoxFit.fill,
                ),
                SizedBox(
                  width: 60.w,
                ),
                Image.asset(
                  'assets/facebook.png',
                  width: 30.w,
                  height: 30.h,
                  fit: BoxFit.fill,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          Center(
            child: Wrap(children: [
              Text(
                "New User ? ",
                style: TextStyle(
                    fontFamily: 'Lato',
                    color: Colors.black,
                    fontSize: 12.sp,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Text(
                "Sign Up ",
                style: TextStyle(
                    fontFamily: 'Lato',
                    color: AppColors.primary,
                    fontSize: 12.sp,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
