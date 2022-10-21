import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:table_calendar/table_calendar.dart';

class CalenderView extends StatefulWidget {
  const CalenderView({Key? key}) : super(key: key);

  @override
  State<CalenderView> createState() => _CalenderViewState();
}

class _CalenderViewState extends State<CalenderView> {
  DateTime selectedDate = DateTime.now();
  final firstDate = DateTime(2015, 1);
  final lastDate = DateTime(2025, 12);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff5C4DB1),
        child: Padding(
          padding: EdgeInsets.only(top: 75.5.h),
          child: Column(
            children: [
              Text(
                "Cleaner Calendar",
                style: TextStyle(
                  fontSize: 29.sp,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const Divider(),
              SizedBox(
                width: double.infinity.w,
                height: 432.h,
                child: TableCalendar(
                  calendarStyle: CalendarStyle(
                      todayTextStyle:
                          TextStyle(fontSize: 15.sp, color: Colors.white)),
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  focusedDay: DateTime.now(),
                  shouldFillViewport: false,
                  headerVisible: true,
                  daysOfWeekVisible: true,
                  sixWeekMonthsEnforced: true,
                  currentDay: DateTime.now(),
                  daysOfWeekStyle: DaysOfWeekStyle(
                    weekendStyle: TextStyle(
                      color: Colors.red,
                      fontSize: 20.sp,
                    ),
                    weekdayStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 20.sp,
                    ),
                  ),
                  daysOfWeekHeight: 20.h,
                  rowHeight: 50.h,
                  headerStyle: HeaderStyle(
                    titleTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 30.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Container(
                height: 498,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(60.r),
                      topRight: Radius.circular(60.r)),
                  color: Colors.white,
                ),
                child: Padding(
                  padding: EdgeInsets.only(left: 49.w, top: 30.h),
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(top: 15.h, bottom: 10.h),
                          child: Text(
                            "18 April 2019",
                            style: TextStyle(
                              fontSize: 22.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 28.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "10 AM",
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 60.w),
                                child: Container(
                                  width: 480.w,
                                  height: 280.h,
                                  color: const Color(0xffDFDEFF),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 31.4.w, right: 24.w),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Michael Hamilton",
                                              style: TextStyle(
                                                fontSize: 28.sp,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xff5C4DB1),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 100.w),
                                              child: Container(
                                                height: 90.h,
                                                width: 90.h,
                                                margin:
                                                    EdgeInsets.only(top: 15.h),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/fc8cc65f046eeb0b9efb159aad932e2b.png",
                                                      height: 200,
                                                      width: 200,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Upkeep Cleaning",
                                          style: TextStyle(
                                            fontSize: 25.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 10.h, bottom: 10.h),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.access_time_filled,
                                                size: 25.r,
                                                color: const Color(0xff5C4DB1),
                                              ),
                                              SizedBox(
                                                width: 8.w,
                                              ),
                                              Text(
                                                "10AM - 11AM",
                                                style: TextStyle(
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff5C4DB1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Client Rating",
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8.w,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 30.w,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 30.w,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 30.w,
                                            ),
                                          ],
                                        ),
                                        const Divider(),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.phone_outlined,
                                              color: const Color(0xff5C4DB1),
                                              size: 25.w,
                                            ),
                                            SizedBox(
                                              width: 40.w,
                                            ),
                                            Icon(
                                              Icons.email_outlined,
                                              color: const Color(0xff5C4DB1),
                                              size: 25.w,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 272.7.w),
                                              child: Text(
                                                "\$50",
                                                style: TextStyle(
                                                  fontSize: 22.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff5C4DB1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 28.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "12 PM",
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 60.w),
                                child: Container(
                                  width: 480.w,
                                  height: 280.h,
                                  color: const Color(0xffDFDEFF),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 31.4.w, right: 24.w),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Alexandra johnson",
                                              style: TextStyle(
                                                fontSize: 28.sp,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xff5C4DB1),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 90.w),
                                              child: Container(
                                                height: 90.h,
                                                width: 90.h,
                                                margin:
                                                    EdgeInsets.only(top: 15.h),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/afro-afro-hair-beautiful-1996250.png",
                                                      height: 200,
                                                      width: 200,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Upkeep Cleaning",
                                          style: TextStyle(
                                            fontSize: 25.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 10.h, bottom: 10.h),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.access_time_filled,
                                                size: 25.r,
                                                color: const Color(0xff5C4DB1),
                                              ),
                                              SizedBox(
                                                width: 8.w,
                                              ),
                                              Text(
                                                "12AM - 1PM",
                                                style: TextStyle(
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff5C4DB1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Client Rating",
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8.w,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 30.w,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 30.w,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 30.w,
                                            ),
                                          ],
                                        ),
                                        const Divider(),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.phone_outlined,
                                              color: const Color(0xff5C4DB1),
                                              size: 25.w,
                                            ),
                                            SizedBox(
                                              width: 40.w,
                                            ),
                                            Icon(
                                              Icons.email_outlined,
                                              color: const Color(0xff5C4DB1),
                                              size: 25.w,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 272.7.w),
                                              child: Text(
                                                "\$50",
                                                style: TextStyle(
                                                  fontSize: 22.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff5C4DB1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 28.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "3 PM",
                                style: TextStyle(
                                  fontSize: 22.sp,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 70.w),
                                child: Container(
                                  width: 480.w,
                                  height: 280.h,
                                  color: const Color(0xffDFDEFF),
                                  child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 31.4.w, right: 24.w),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          children: [
                                            Text(
                                              "Alexandra johnson",
                                              style: TextStyle(
                                                fontSize: 28.sp,
                                                fontWeight: FontWeight.bold,
                                                color: const Color(0xff5C4DB1),
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 90.w),
                                              child: Container(
                                                height: 90.h,
                                                width: 90.h,
                                                margin:
                                                    EdgeInsets.only(top: 15.h),
                                                clipBehavior: Clip.antiAlias,
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: Colors.white
                                                      .withOpacity(0.5),
                                                ),
                                                child: Stack(
                                                  children: [
                                                    Image.asset(
                                                      "assets/images/fc8cc65f046eeb0b9efb159aad932e2b.png",
                                                      height: 200,
                                                      width: 200,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          "Initial Cleaning",
                                          style: TextStyle(
                                            fontSize: 25.sp,
                                            color: Colors.black,
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                              top: 10.h, bottom: 10.h),
                                          child: Row(
                                            children: [
                                              Icon(
                                                Icons.access_time_filled,
                                                size: 25.r,
                                                color: const Color(0xff5C4DB1),
                                              ),
                                              SizedBox(
                                                width: 8.w,
                                              ),
                                              Text(
                                                "3PM-6PM",
                                                style: TextStyle(
                                                  fontSize: 20.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff5C4DB1),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              "Client Rating",
                                              style: TextStyle(
                                                fontSize: 20.sp,
                                                color: Colors.black,
                                              ),
                                            ),
                                            SizedBox(
                                              width: 8.w,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 30.w,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 30.w,
                                            ),
                                            Icon(
                                              Icons.star,
                                              size: 30.w,
                                            ),
                                          ],
                                        ),
                                        const Divider(),
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.phone_outlined,
                                              color: const Color(0xff5C4DB1),
                                              size: 25.w,
                                            ),
                                            SizedBox(
                                              width: 40.w,
                                            ),
                                            Icon(
                                              Icons.email_outlined,
                                              color: const Color(0xff5C4DB1),
                                              size: 25.w,
                                            ),
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  left: 272.7.w),
                                              child: Text(
                                                "\$150",
                                                style: TextStyle(
                                                  fontSize: 22.sp,
                                                  fontWeight: FontWeight.bold,
                                                  color:
                                                      const Color(0xff5C4DB1),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
