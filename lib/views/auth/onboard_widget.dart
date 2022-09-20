import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/views/auth/page_indicator.dart';

class OnboardWidget extends StatelessWidget {
  OnboardWidget(
      {required this.img,
      required this.onTap,
      required this.val,
      required this.skip,
      Key? key})
      : super(key: key);
  final String img;
  final Function() onTap;
  final Function() skip;
  final int val;

  final List<String> myList = [
    'Get Consultation and Diagnosis from Professionals',
    'Chat with a doctor for advice and diagnosis',
    ' Use the video chat for better experience and expression'
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: AlignmentDirectional.topCenter,
      children: [
        Positioned(
          child: Image.asset(
            img,
            width: 375.w,
            height: 812.h,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          top: 600.h,
          child: Text(
            'Get Started',
            style: TextStyle(
                color: Colors.white,
                fontSize: 28.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
        Positioned(
          top: 647.h,
          child: SizedBox(
            width: 257.w,
            child: Text(
              myList[val],
              style: TextStyle(
                color: Colors.white,
                fontSize: 14.sp,
                fontWeight: FontWeight.w700,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Positioned(
          top: 710.h,
          child: PageIndicatorWidget(
            count: 3,
            value: val,
          ),
        ),
        Positioned(
          top: 760.h,
          right: 25,
          child: GestureDetector(
            onTap: onTap,
            child: Container(
              height: 35,
              width: val == 2 ? 100 : 80,
              padding: EdgeInsets.only(top: 10.h),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  width: 2.0,
                  color: Colors.white.withOpacity(0.6),
                ),
                color: Colors.white.withOpacity(0),
              ),
              child: Text(
                val == 2 ? 'Continue' : 'Next',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w700,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ),
        Positioned(
          top: 760.h,
          left: 25,
          child: Visibility(
            visible: val == 2 ? false : true,
            child: GestureDetector(
              onTap: skip,
              child: Container(
                height: 35,
                width: 80,
                padding: EdgeInsets.symmetric(horizontal: 6.w),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2.0,
                    // assign the color to the border color
                    color: Colors.white.withOpacity(0.6),
                  ),
                  color: Colors.white.withOpacity(0),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      width: 8.w,
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: Colors.white,
                      size: 12,
                    )
                  ],
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
