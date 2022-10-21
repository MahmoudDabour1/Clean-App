import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'model.dart';

class PlanView extends StatefulWidget {
  const PlanView({Key? key}) : super(key: key);

  @override
  State<PlanView> createState() => _PlanViewState();
}

class _PlanViewState extends State<PlanView>
    with SingleTickerProviderStateMixin {
  bool selected = false;
  User? user;
  late TabController myController;

  @override
  void initState() {
    myController = TabController(length: 3, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: const Color(0xff5C4DB1),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: 140.4.h, bottom: 37),
                child: const Text(
                  "Your Plan",
                  style: TextStyle(
                    fontSize: 29,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                width: double.infinity,
                height: 1156.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(70.r),
                    topRight: Radius.circular(70.r),
                  ),
                  color: const Color(0xffFAFAFA),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.only(left: 61.w, top: 64.h, bottom: 30.h),
                      child: const Text(
                        "Selected Cleaning",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              user = User.upCleaning;
                            });
                          },
                          child: SizedBox(
                            height: 300.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 200.h,
                                  width: 300.w,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.r),
                                    child: Image.asset(
                                      'assets/images/Group 41267.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  "Initial Cleaning",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  height: 35.h,
                                  width: 35.h,
                                  child: user == User.upCleaning
                                      ? Image.asset(
                                          "assets/images/checked.png",
                                        )
                                      : Image.asset(
                                          "assets/images/notchecked.png",
                                        ),
                                )
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 10,
                        ),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              user = User.initial;
                            });
                          },
                          child: SizedBox(
                            height: 300.h,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 200.h,
                                  width: 300.w,
                                  decoration: BoxDecoration(
                                      color: Colors.grey.withOpacity(0.1),
                                      borderRadius:
                                          BorderRadius.circular(30.r)),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(30.r),
                                    child: Image.asset(
                                      'assets/images/Group 4126.png',
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 20.h,
                                ),
                                Text(
                                  "Upkeep Cleaning",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 25.sp,
                                  ),
                                ),
                                SizedBox(
                                  height: 10.h,
                                ),
                                SizedBox(
                                  height: 35.h,
                                  width: 35.h,
                                  child: user == User.initial
                                      ? Image.asset("assets/images/checked.png")
                                      : Image.asset(
                                          "assets/images/notchecked.png"),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 61.w, top: 38.6.h),
                      child: const Text(
                        "Selected Frequency",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12.w),
                      child: Container(
                        height: 80.h,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                        child: Padding(
                          padding: EdgeInsets.all(8.0.w),
                          child: TabBar(
                              controller: myController,
                              unselectedLabelColor: Colors.grey,
                              isScrollable: true,
                              indicator: BoxDecoration(
                                color: const Color(0xffDC4F89),
                                borderRadius: BorderRadius.circular(10.r),
                              ),
                              tabs: [
                                Text(
                                  "Weekly",
                                  style: TextStyle(fontSize: 28.sp),
                                ),
                                Padding(
                                  padding:
                                      EdgeInsets.only(left: 60.w, right: 60.w),
                                  child: Text(
                                    "Bi-weekly",
                                    style: TextStyle(fontSize: 28.sp),
                                  ),
                                ),
                                Text(
                                  "Monthly",
                                  style: TextStyle(fontSize: 28.sp),
                                ),
                              ]),
                        ),
                      ),
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: myController,
                        children: [
                          Center(
                            child: Text(
                              "Weekly",
                              style: TextStyle(fontSize: 30.sp),
                            ),
                          ),
                          Center(
                            child: Text(
                              "Bi-weekly",
                              style: TextStyle(fontSize: 30.sp),
                            ),
                          ),
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Padding(
                                    padding:
                                        EdgeInsets.only(left: 30.w, top: 15.w),
                                    child: Text(
                                      "Selected Extras",
                                      style: TextStyle(
                                          color: Colors.black,
                                          fontSize: 25.sp,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 500.h,
                                  child: GridView.builder(
                                    physics:
                                        const NeverScrollableScrollPhysics(),
                                    gridDelegate:
                                        const SliverGridDelegateWithFixedCrossAxisCount(
                                      crossAxisCount: 3,
                                      childAspectRatio: 1.3 / 1.5,
                                    ),
                                    itemCount: monthly.length,
                                    itemBuilder: (context, index) => Column(
                                      children: [
                                        CircleAvatar(
                                          radius: 40,
                                          backgroundColor:
                                              const Color(0xff5C4DB1),
                                          child: Padding(
                                            padding: EdgeInsets.all(22.w),
                                            child: Image.asset(
                                                monthly[index].image),
                                          ),
                                        ),
                                        SizedBox(
                                          height: 5.h,
                                        ),
                                        Text(
                                          monthly[index].name,
                                          style: TextStyle(
                                              color: Colors.black,
                                              fontSize: 15.sp),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 50.h,
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

enum User { initial, upCleaning }
