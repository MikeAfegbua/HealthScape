import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/app/utils/colors.dart';
import 'package:healthscape/views/auth/custom_button.dart';
import 'package:healthscape/views/auth/signup.dart';
import 'package:healthscape/views/auth/splash_widget.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          Positioned(
            child: Image.asset(
              'assets/img4.png',
              width: 375.w,
              height: 812.h,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 350.h,
            child: const SplashWidget(
              color: AppColors.primary,
            ),
          ),
          Positioned(
            top: 567.h,
            child: CustomButton(
              text: 'Sign Up',
              onTap: () {
                //AppNavigator.navigateTo(signup);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUp(
                      signUp: true,
                      signIn: false,
                    ),
                  ),
                );
              },
            ),
          ),
          Positioned(
            top: 630.h,
            child: CustomButton(
              text: 'Login',
              color: Colors.white.withOpacity(0),
              border: Border.all(width: 1, color: Colors.white),
              onTap: () {
                //AppNavigator.navigateTo(signin);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUp(
                      signUp: false,
                      signIn: true,
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
