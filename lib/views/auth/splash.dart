import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/app/utils/colors.dart';
import 'package:healthscape/views/auth/onboard.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    Future.delayed(
      const Duration(seconds: 3),
      () {
        Navigator.pushReplacement(
          context,
          PageRouteBuilder(
            transitionDuration: const Duration(seconds: 3),
            pageBuilder: (_, __, ___) => const OnboardingScreen(),
          ),
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/favorite.png',
              height: 31.h,
              width: 32.w,
              fit: BoxFit.fill,
            ),
            SizedBox(
              height: 26.h,
            ),
            Text(
              'HEALTHSCAPE',
              style: TextStyle(
                  fontFamily: 'Lato',
                  color: AppColors.white,
                  fontSize: 41.sp,
                  letterSpacing: 4,
                  fontWeight: FontWeight.w200), //TODO: add animation
            ),
          ],
        ),
      ),
    );
  }
}
