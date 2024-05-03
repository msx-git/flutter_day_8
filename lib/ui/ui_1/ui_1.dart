import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Ui1 extends StatelessWidget {
  const Ui1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: 812.h,
        width: 375.w,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/main.png'),
            fit: BoxFit.fitWidth,
          ),
        ),
        child: Column(
          children: [
            const Spacer(),
            Container(
              width: double.infinity,
              height: 425.h,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(30.r),
                  topLeft: Radius.circular(30.r),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(height: 10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        height: 5.h,
                        width: 25.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.r),
                          gradient: const LinearGradient(colors: [
                            Color(0xff8B78FF),
                            Color(0xff5451D6),
                          ]),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        height: 5.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.r),
                          gradient: const LinearGradient(colors: [
                            Color(0xff8B78FF),
                            Color(0xff5451D6),
                          ]),
                        ),
                      ),
                      SizedBox(width: 5.w),
                      Container(
                        height: 5.h,
                        width: 5.w,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13.r),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xff8B78FF),
                              Color(0xff5451D6),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 100.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Text(
                      'Building Better Workplaces',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0xff2F394B),
                          fontSize: 37.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'ProductSans'),
                    ),
                  ),
                  SizedBox(height: 10.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40.w),
                    child: Text(
                      'Create a unique emotional story that describes better than words',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: const Color(0xff8D8D8D),
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700,
                          fontFamily: 'ProductSans'),
                    ),
                  ),
                  SizedBox(height: 40.h),
                  Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 95.w,
                      vertical: 18.h,
                    ),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15.r),
                        gradient: const LinearGradient(
                          colors: [
                            Color(0xff8B78FF),
                            Color(0xff5451D6),
                          ],
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: const Color(0xff5451D6).withOpacity(0.5),
                            offset: const Offset(1, 5),
                            blurRadius: 10,
                          ),
                        ]),
                    child: Text(
                      'Get Started',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'ProductSans',
                        fontSize: 20.sp,
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
