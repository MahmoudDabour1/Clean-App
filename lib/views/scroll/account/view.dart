import 'package:clean/core/helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AccountView extends StatelessWidget {
  const AccountView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff5C4DB1),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 158.4.h, bottom: 37),
              child: Image.asset(
                "assets/images/Group 4128.png",
                width: 187.13.w,
                height: 168.87.h,
              ),
            ),
            Container(
              width: double.infinity,
              height: 1047.h,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(50.r),
                  topRight: Radius.circular(50.r),
                ),
                color: const Color(0xffFAFAFA),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 60.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 50.h),
                    child: Text(
                      "Account",
                      style: TextStyle(
                        fontSize: 29.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff404040),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 31.3,
                  ),
                  const Helper(
                      url: "assets/images/Group 3614.png",
                      text: "Notifications"),
                  const Helper(
                      url: "assets/images/calendar-4.png", text: "My Bookings"),
                  const Helper(
                      url: "assets/images/tick-2.png", text: "My Plan"),
                  const Helper(
                      url: "assets/images/address.png", text: "Addresses"),
                  Padding(
                    padding:
                        EdgeInsets.only(top: 45.h, bottom: 60.h, left: 50.w),
                    child: Text(
                      "Share",
                      style: TextStyle(
                        fontSize: 29.sp,
                        fontWeight: FontWeight.bold,
                        color: const Color(0xff404040),
                      ),
                    ),
                  ),
                  const Helper(
                      url: "assets/images/Path 4536.png", text: "Facebook"),
                  const Helper(
                      url: "assets/images/Path 4537.png", text: "Twitter"),
                  const Helper(
                      url: "assets/images/Group 3613.png", text: "Gmail"),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
