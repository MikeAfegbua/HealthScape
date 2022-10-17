import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../app/utils/colors.dart';

class NotificationPage extends StatelessWidget {
  const NotificationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFFFFFF),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 32.w, vertical: 80.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Notifications',
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 22.sp,
              ),
            ),
            SizedBox(
              height: 26.h,
            ),
            const NotifWidget(
              time: "8:00 am",
              text: "Take Medication",
            ),
            const NotifWidget(
              time: "8:00 am",
              text: "Take Medication",
            ),
            const NotifWidget(
              time: "11:00 am",
              text: "Appointment at General High",
            ),
          ],
        ),
      ),
    );
  }
}

class NotifWidget extends StatefulWidget {
  const NotifWidget({
    required this.time,
    required this.text,
    Key? key,
  }) : super(key: key);
  final String time;
  final String text;

  @override
  State<NotifWidget> createState() => _NotifWidgetState();
}

class _NotifWidgetState extends State<NotifWidget> {
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        visible = !visible;
        setState(() {});
      },
      child: Stack(
        alignment: Alignment.topCenter,
        clipBehavior: Clip.none,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 35.h),
            child: Container(
              width: double.infinity,
              height: 70.h,
              padding: EdgeInsets.only(left: 10.w, right: 10.w),
              decoration: BoxDecoration(
                border: Border.all(
                  width: 1,
                  color: const Color(0xff051314),
                ),
                borderRadius: BorderRadius.circular(12),
              ),
              child: Row(
                //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 80.w,
                    child: Text(
                      widget.time,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: AppColors.primary,
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                  SizedBox(
                    width: 10.w,
                  ),
                  Container(
                    height: double.infinity,
                    width: 1,
                    color: const Color(0xff051314),
                  ),
                  Flexible(
                    child: SizedBox(
                      width: 170.w,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Text(
                          widget.text,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16.sp,
                              height: 18 / 16,
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                    width: 35.w,
                    child: FittedBox(
                      fit: BoxFit.fill,
                      child: Switch(
                        value: false,
                        onChanged: (val) {},
                        thumbColor:
                            MaterialStateProperty.resolveWith<Color>((states) {
                          if (states.contains(MaterialState.disabled)) {
                            return Colors.black;
                          }
                          return Colors.black;
                        }),
                        activeColor: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 60.h,
            right: 0.w,
            child: Visibility(
              visible: visible,
              child: Container(
                height: 30.h,
                width: 85.w,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(8.r),
                ),
                child: Center(
                  child: Text(
                    " 02/03/22",
                    textAlign: TextAlign.center,
                    maxLines: 2,
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 16.sp,
                        height: 18 / 16,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
