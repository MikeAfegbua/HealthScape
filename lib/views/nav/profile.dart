import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.only(left: 25.w, right: 25.w, top: 110.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'My Profile',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
              ),
            ),
            SizedBox(
              height: 77.h,
            ),
            const ProfileWidget(
              icon: Icons.account_box_outlined,
              text: 'Personal details',
            ),
            const ProfileWidget(
              icon: Icons.monitor_heart_outlined,
              text: 'Medical history',
            ),
            const ProfileWidget(
              icon: Icons.menu_book,
              text: 'Appointments',
            ),
            const ProfileWidget(
              icon: Icons.queue_outlined,
              text: 'Medications',
            ),
            const ProfileWidget(
              icon: Icons.phone_outlined,
              text: 'Help and Support',
            ),
            Align(
              alignment: Alignment.center,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  "LOGOUT",
                  style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                      color: const Color(0xffD70D0D)),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileWidget extends StatelessWidget {
  const ProfileWidget({
    required this.icon,
    required this.text,
    Key? key,
  }) : super(key: key);
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 25.h),
      child: Column(
        children: [
          Row(
            children: [
              Icon(icon),
              SizedBox(
                width: 28.w,
              ),
              Text(
                text,
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 16.sp,
                ),
              ),
            ],
          ),
          SizedBox(
            height: 20.h,
          ),
          Container(
            width: double.infinity,
            height: 1,
            color: const Color(0xff051314),
          ),
        ],
      ),
    );
  }
}
