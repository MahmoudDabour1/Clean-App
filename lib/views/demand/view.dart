import 'package:clean/core/helper_methods.dart';
import 'package:clean/views/scroll/plan/view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DemandView extends StatelessWidget {
  const DemandView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 30, top: 65),
              child: Image.asset(
                "assets/images/Mask Group 631.png",
                width: 500,
                height: 460,
              ),
            ),
            Container(
              width: double.infinity,
              height: 500.h,
              decoration: const BoxDecoration(
                  color: Color(0xff5C4DB1),
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),
                    topRight: Radius.circular(50),
                  )),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 90.h, bottom: 50.h),
                    child: Text(
                      "Cleaning On Demand",
                      style: TextStyle(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Text(
                    "Book an appointment in\nless than 60 seconds and get\non the schedule as early as\ntomorrow.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30.sp,
                      fontWeight: FontWeight.w400,
                      color: Colors.white,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20, left: 20),
                    child: Row(
                      children: [
                        TextButton(
                          onPressed: () {},
                          child: Text(
                            "Skip",
                            style:
                                TextStyle(color: Colors.white, fontSize: 30.sp),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 165),
                          child: TextButton(
                            onPressed: () {},
                            child: Row(
                              children: [
                                Text(
                                  "Next",
                                  style: TextStyle(
                                    fontSize: 26.sp,
                                    color: Colors.white,
                                  ),
                                ),
                                MaterialButton(
                                  onPressed: () {
                                    navigatorTo(
                                        page: const PlanView(),
                                        context: context);
                                  },
                                  color: const Color(0xffFFBF67),
                                  textColor: Colors.white,
                                  shape: const CircleBorder(),
                                  child: const Icon(Icons.keyboard_arrow_right),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
