import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/app/navigation/navigator.dart';
import 'package:healthscape/views/widgets/page_indicator.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  PageController? _pageController;

  int _page = 0;

  void _nextPage() {
    if (_pageController == null) return;
    if (_page < 2) {
      _pageController?.nextPage(
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeIn,
      );
    } else {
      AppNavigator.navigateTo(launch);
    }
  }

  void _skip() {
    if (_page < 2) {
      _page == 2;
      _pageController?.animateToPage(
        2,
        curve: Curves.easeIn,
        duration: const Duration(milliseconds: 300),
      );
      setState(() {});
    }
  }

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: PageView(
        controller: _pageController,
        onPageChanged: (newPage) {
          setState(() {
            _page = newPage;
          });
        },
        children: [
          OnboardWidget(
            img: 'assets/on1.png',
            onTap: _nextPage,
            val: _page,
            skip: _skip,
          ),
          OnboardWidget(
            img: 'assets/on2.png',
            onTap: _nextPage,
            val: _page,
            skip: _skip,
          ),
          OnboardWidget(
            img: 'assets/on3.png',
            onTap: _nextPage,
            val: _page,
            skip: _skip,
          ),
        ],
      ),
    );
  }
}

class OnboardWidget extends StatelessWidget {
  const OnboardWidget(
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
          top: 613.h,
          child: Text(
            'Get Started',
            style: TextStyle(
                color: Colors.white,
                fontSize: 28.sp,
                fontWeight: FontWeight.w700),
          ),
        ),
        Positioned(
          top: 660.h,
          child: Text(
            '''Get Consultation and Diagnosis from 
  Professionals''',
            style: TextStyle(
              color: Colors.white,
              fontSize: 14.sp,
              fontWeight: FontWeight.w700,
            ),
            textAlign: TextAlign.center,
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
                padding: EdgeInsets.only(top: 10.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(
                    width: 2.0,
                    // assign the color to the border color
                    color: Colors.white.withOpacity(0.6),
                  ),
                  color: Colors.white.withOpacity(0),
                ),
                child: Text(
                  'Skip',
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
        )
      ],
    );
  }
}
