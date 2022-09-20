import 'package:flutter/material.dart';
import 'package:healthscape/app/utils/colors.dart';
import 'package:healthscape/views/auth/onboard.dart';
import 'package:healthscape/views/auth/splash_widget.dart';

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
    precacheImage(const AssetImage('assets/on1.png'), context);
    precacheImage(const AssetImage('assets/on2.png'), context);
    precacheImage(const AssetImage('assets/on3.png'), context);
    return const Scaffold(
      backgroundColor: AppColors.primary,
      body: Center(
        child: SplashWidget(color: AppColors.white),
      ),
    );
  }
}
