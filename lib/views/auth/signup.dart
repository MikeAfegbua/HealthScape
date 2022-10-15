import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:healthscape/app/navigation/navigator.dart';
import 'package:healthscape/app/utils/colors.dart';
import 'package:healthscape/views/auth/custom_button.dart';
import 'package:healthscape/views/auth/signin.dart';
import 'custom_field.dart';

class SignUp extends StatefulWidget {
  const SignUp({required this.signUp, required this.signIn, Key? key})
      : super(key: key);
  final bool signUp;
  final bool signIn;

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  late bool signup;
  late bool signin;

  @override
  void initState() {
    signup = widget.signUp;
    signin = widget.signIn;
    setState(() {});
    super.initState();
  }

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
            size: 20,
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.primary,
      ),
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Container(
            height: 130.h,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(45),
                  bottomRight: Radius.circular(45)),
              color: AppColors.primary,
            ),
            child: Stack(
              children: [
                Positioned(
                  top: 75,
                  left: 40.w,
                  child: GestureDetector(
                    onTap: () {
                      if (signup == false) {
                        signup = !signup;
                        signin = !signin;

                        setState(() {});
                      }
                    },
                    child: Column(
                      children: [
                        Text(
                          'Sign Up',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              height: 22 / 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Visibility(
                          visible: signup,
                          child: Container(
                            width: 55.w,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(1.r),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 75,
                  right: 40.w,
                  child: GestureDetector(
                    onTap: () {
                      if (signin == false) {
                        signin = !signin;
                        signup = !signup;
                        setState(() {});
                      }
                    },
                    child: Column(
                      children: [
                        Text(
                          'Sign In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 16.sp,
                              height: 22 / 16,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 5.h,
                        ),
                        Visibility(
                          visible: signin,
                          child: Container(
                            width: 55.w,
                            height: 2,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              shape: BoxShape.rectangle,
                              borderRadius: BorderRadius.circular(1.r),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 22.h,
          ),
          signup ? const SignUpWidget() : const SignInWidget(),
        ],
      ),
    );
  }
}

class SignUpWidget extends StatelessWidget {
  const SignUpWidget({
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
              'Create an Account',
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
            height: 28.h,
          ),
          Text(
            "Confirm Password",
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
            height: 30.h,
          ),
          Center(
            child: CustomButton(
              text: 'Sign Up',
              onTap: () {
                AppNavigator.navigateTo(payment);
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
                "Already have an account ? ",
                style: TextStyle(
                    fontFamily: 'Lato',
                    color: Colors.black,
                    fontSize: 12.sp,
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600),
                textAlign: TextAlign.center,
              ),
              Text(
                "Sign in ",
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
