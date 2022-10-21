import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Helper extends StatelessWidget {
  const Helper({Key? key, required this.url, required this.text})
      : super(key: key);
  final String url, text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 2.h),
      child: Container(
        color: Colors.white,
        height: 106.h,
        width: double.infinity,
        child: Row(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 50.w),
              child: Image.asset(
                url,
                width: 36.87.w,
                height: 33.4.h,
              ),
            ),
            SizedBox(
              width: 62.1.w,
            ),
            Text(
              text,
              style: TextStyle(
                fontSize: 29.sp,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
