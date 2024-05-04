import 'package:flutter/material.dart';
import 'package:flutter_day_8/ui/ui_3/widgets/task_widget.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Ui3 extends StatelessWidget {
  const Ui3({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xffFFFFFF),
              Color(0xffF8F6FF),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 16.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 60.h),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 8.w),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            GestureDetector(
                              onTap: () => Navigator.pop(context),
                              child: Container(
                                height: 56.h,
                                width: 56.w,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    color: const Color(0xff040415)
                                        .withOpacity(0.10),
                                    width: 1.5.w,
                                  ),
                                ),
                                alignment: Alignment.center,
                                child: SvgPicture.asset(
                                  'assets/icons/arrow_back.svg',
                                  width: 24.w,
                                  height: 24.h,
                                ),
                              ),
                            ),
                            Image.asset(
                              'assets/images/user_notif.png',
                              height: 56.h,
                              width: 56.w,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 10.h),
                      SizedBox(
                        height: 45.h,
                        child: Row(
                          children: [
                            Icon(
                              Icons.arrow_back_rounded,
                              size: 16.h,
                            ),
                            SizedBox(width: 5.w),
                            Text(
                              'Mar',
                              style: TextStyle(
                                color: const Color(0xff000000),
                                fontFamily: 'ProductSans',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                            Expanded(
                              child: Text(
                                'April',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: const Color(0xff000000),
                                  fontFamily: 'ProductSans',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 24.sp,
                                ),
                              ),
                            ),
                            Text(
                              'May',
                              style: TextStyle(
                                color: const Color(0xff000000),
                                fontFamily: 'ProductSans',
                                fontWeight: FontWeight.w400,
                                fontSize: 12.sp,
                              ),
                            ),
                            SizedBox(width: 5.w),
                            Icon(
                              Icons.arrow_forward_rounded,
                              size: 16.h,
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 14.h),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          for (int i = 0; i < 4; i++)
                            Container(
                              height: 120.h,
                              width: 70.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(43.r),
                                boxShadow: i == 1
                                    ? [
                                        BoxShadow(
                                            color:
                                                Colors.black.withOpacity(0.15),
                                            offset: const Offset(0, -9),
                                            blurRadius: 20.r)
                                      ]
                                    : [],
                                gradient: LinearGradient(
                                  colors: i == 1
                                      ? [
                                          const Color(0xff8B78FF),
                                          const Color(0xff5451D6),
                                        ]
                                      : [
                                          Colors.white,
                                          Colors.white,
                                        ],
                                ),
                              ),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '${i + 4}',
                                    style: TextStyle(
                                      color: i == 1
                                          ? const Color(0xffFFFFFF)
                                          : const Color(0xff000000),
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 36.sp,
                                    ),
                                  ),
                                  Text(
                                    ['Sat', 'Sun', 'Mon', 'Tue'][i],
                                    style: TextStyle(
                                      color: i == 1
                                          ? const Color(0xffFFFFFF)
                                          : const Color(0xff000000),
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    ),
                                  )
                                ],
                              ),
                            ),
                        ],
                      ),
                      SizedBox(height: 30.h),
                      Text(
                        'Ongoing',
                        style: TextStyle(
                          color: const Color(0xff000000),
                          fontFamily: 'ProductSans',
                          fontWeight: FontWeight.w700,
                          fontSize: 24.sp,
                        ),
                      ),
                      SizedBox(height: 25.h),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              for (int i = 0; i < 7; i++)
                                Padding(
                                  padding: EdgeInsets.only(bottom: 45.h),
                                  child: Text(
                                    [
                                      '9AM',
                                      '10AM',
                                      '10AM',
                                      '11AM',
                                      '12:00PM',
                                      '1PM',
                                      '2PM',
                                    ][i],
                                    style: TextStyle(
                                      color: const Color(0xff8D8D8D),
                                      fontFamily: 'ProductSans',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14.sp,
                                    ),
                                  ),
                                )
                            ],
                          ),
                          SizedBox(width: 5.w),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const TaskWidget(
                                  todoTitle: 'Information Architecture',
                                  responsibles: 'Saber & Oro',
                                  imageLink: 'assets/images/users_1.png',
                                  dueTime: '9.00 AM - 10.00 AM',
                                  color1: Color(0xffFFD29D),
                                  color2: Color(0xffFF9E2D),
                                ),
                                SizedBox(height: 27.h),
                                Row(
                                  children: [
                                    Container(
                                      height: 10.h,
                                      width: 10.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(13.r),
                                        gradient: const LinearGradient(colors: [
                                          Color(0xff8B78FF),
                                          Color(0xff5451D6),
                                        ]),
                                      ),
                                    ),
                                    SizedBox(width: 4.w),
                                    Container(
                                      height: 2.h,
                                      width: 267.w,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(13.r),
                                        gradient: const LinearGradient(colors: [
                                          Color(0xff8B78FF),
                                          Color(0xff5451D6),
                                        ]),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 41.h),
                                const TaskWidget(
                                  todoTitle: 'Software Testing',
                                  responsibles: 'Saber & Mike',
                                  imageLink: 'assets/images/users_2.png',
                                  dueTime: '11.00AM - 12.00 PM',
                                  color1: Color(0xffB1EEFF),
                                  color2: Color(0xff29BAE2),
                                ),
                                SizedBox(height: 20.h),
                                const TaskWidget(
                                  todoTitle: 'Mobile App Design',
                                  responsibles: 'Saber & Oro',
                                  imageLink: 'assets/images/users_1.png',
                                  dueTime: '1.00 PM - 2.00 PM',
                                  color1: Color(0xffFFA0BC),
                                  color2: Color(0xffFF1B5E),
                                )
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
            ),

            /// Bottom Navigation Bar
            Container(
              height: 88.h,
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(24.r),
                      topRight: Radius.circular(24.r))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/home.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SvgPicture.asset(
                          'assets/icons/calendar_selected.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SvgPicture.asset(
                          'assets/icons/chat.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SvgPicture.asset(
                          'assets/icons/user.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 11.h),
                  Padding(
                    padding: EdgeInsets.only(left: 116.w),
                    child: SvgPicture.asset(
                      'assets/images/bottom_indicator.svg',
                      height: 21.h,
                      width: 71.w,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
