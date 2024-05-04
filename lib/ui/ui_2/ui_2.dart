import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widgets/gradient_container.dart';

class Ui2 extends StatelessWidget {
  const Ui2({super.key});

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
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: 60.h),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Monday',
                                  style: TextStyle(
                                    color: const Color(0xff7F7F7F)
                                        .withOpacity(0.5),
                                    fontFamily: 'ProductSans',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 14.sp,
                                  ),
                                ),
                                Text(
                                  '25 October',
                                  style: TextStyle(
                                    color: const Color(0xff040415),
                                    fontFamily: 'ProductSans',
                                    fontWeight: FontWeight.w700,
                                    fontSize: 24.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 56.h,
                            width: 56.w,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color:
                                    const Color(0xff040415).withOpacity(0.10),
                                width: 1.5.w,
                              ),
                            ),
                            alignment: Alignment.center,
                            child: SvgPicture.asset(
                              'assets/icons/search.svg',
                              width: 24.w,
                              height: 24.h,
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
                    SizedBox(height: 31.h),
                    Text(
                      'Hi Surf.',
                      style: TextStyle(
                        color: const Color(0xff2F394B),
                        fontFamily: 'ProductSans',
                        fontWeight: FontWeight.w700,
                        fontSize: 28.sp,
                      ),
                    ),
                    SizedBox(height: 4.h),
                    Text(
                      '5 Tasks are predning',
                      style: TextStyle(
                        color: const Color(0xff8D8D8D),
                        fontFamily: 'ProductSans',
                        fontWeight: FontWeight.w400,
                        fontSize: 14.sp,
                      ),
                    ),
                    SizedBox(height: 20.h),
                    Container(
                      padding: EdgeInsets.only(
                        left: 15.w,
                        top: 14.h,
                        right: 20.w,
                        bottom: 12.h,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        gradient: const LinearGradient(
                            colors: [
                              Color(0xff8B78FF),
                              Color(0xff5451D6),
                            ],
                            begin: Alignment.topLeft,
                            end: Alignment.bottomRight),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Information Architecture',
                            style: TextStyle(
                              color: const Color(0xffFFFFFF),
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.w700,
                              fontSize: 16.sp,
                            ),
                          ),
                          SizedBox(height: 5.h),
                          Text(
                            'Saber & Oro',
                            style: TextStyle(
                              color: const Color(0xffFFFFFF),
                              fontFamily: 'ProductSans',
                              fontWeight: FontWeight.w400,
                              fontSize: 10.sp,
                            ),
                          ),
                          SizedBox(height: 10.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Image.asset('assets/images/users_1.png',
                                  height: 24.h),
                              Text(
                                'Now',
                                style: TextStyle(
                                  color: const Color(0xffFFFFFF),
                                  fontFamily: 'ProductSans',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10.sp,
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Text(
                      'Monthly Preview',
                      style: TextStyle(
                        color: const Color(0xff000000),
                        fontFamily: 'ProductSans',
                        fontWeight: FontWeight.w400,
                        fontSize: 24.sp,
                      ),
                    ),
                    SizedBox(height: 25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          children: [
                            const GradientContainer(
                              height: 150,
                              width: 160,
                              text1: '22',
                              text2: 'done',
                              color1: Color(0xffA9FFEA),
                              color2: Color(0xff00B288),
                            ),
                            SizedBox(height: 13.h),
                            const GradientContainer(
                              height: 105,
                              width: 162,
                              text1: '12',
                              text2: 'Ongoing',
                              color1: Color(0xffFFA0BC),
                              color2: Color(0xffFF1B5E),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            const GradientContainer(
                              height: 105,
                              width: 161,
                              text1: '7',
                              text2: 'In Progress',
                              color1: Color(0xffFFD29D),
                              color2: Color(0xffFF9E2D),
                            ),
                            SizedBox(height: 13.h),
                            const GradientContainer(
                              height: 149,
                              width: 161,
                              text1: '14',
                              text2: 'Waiting For Review',
                              color1: Color(0xffB1EEFF),
                              color2: Color(0xff29BAE2),
                            ),
                          ],
                        ),
                      ],
                    )
                  ],
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
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 32.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 32.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SvgPicture.asset(
                          'assets/icons/home_selected.svg',
                          height: 24.h,
                          width: 24.w,
                        ),
                        SvgPicture.asset(
                          'assets/icons/calendar.svg',
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
                    padding: EdgeInsets.only(left: 16.w),
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
