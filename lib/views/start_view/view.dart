import 'package:clean/core/helper_methods.dart';
import 'package:clean/views/scroll/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StartView extends StatelessWidget {
  const StartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: const Color(0xff5C4DB1),
      width: double.infinity,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 122.h, bottom: 83.5.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/Group 3537.png",
                  color: Colors.white,
                  width: 37.65.w,
                  height: 27.83.h,
                ),
                SizedBox(
                  width: 14.8.w,
                ),
                const Text(
                  "Nimbl",
                  style: TextStyle(
                    fontSize: 34,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Text(
            "Clean Home\n  Clean Life.",
            style: TextStyle(
              fontSize: 61.sp,
              fontWeight: FontWeight.w600,
              color: Colors.white,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 56.h),
            child: Text(
              "Book Cleaners at the Comfort\n of you home.",
              style: TextStyle(
                fontSize: 30.sp,
                fontWeight: FontWeight.w200,
                color: Colors.white,
              ),
            ),
          ),
          Image.asset(
            "assets/images/Mask Group 581.png",
            width: 1000,
            height: 400,
          ),
          SizedBox(
            height: 95.h,
          ),
          Align(
            alignment: AlignmentDirectional.bottomEnd,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius:
                      BorderRadius.only(topLeft: Radius.circular(20.r)),
                ),
                fixedSize: const Size(170, 55),
                primary: Colors.white,
              ),
              onPressed: () {
                navigatorTo(page: const HomeView(), context: context);
              },
              child: Text(
                'Get Started',
                style: TextStyle(
                  fontSize: 40.sp,
                  fontWeight: FontWeight.bold,
                  color: const Color(0xff5C4DB1),
                ),
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
