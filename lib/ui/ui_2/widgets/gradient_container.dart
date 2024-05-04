import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GradientContainer extends StatelessWidget {
  const GradientContainer(
      {super.key,
        required this.height,
        required this.width,
        required this.text1,
        required this.text2,
        required this.color1,
        required this.color2});

  final double height;
  final double width;

  final String text1;
  final String text2;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width.w,
      height: height.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        gradient: LinearGradient(
          colors: [
            color1,
            color2,
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
        boxShadow: [
          BoxShadow(
            color: const Color(0xff8D8D8D).withOpacity(0.1),
            blurRadius: 25.r,
            offset: const Offset(0, 4),
          )
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            text1,
            style: TextStyle(
              color: const Color(0xffFFFFFF),
              fontFamily: 'ProductSans',
              fontWeight: FontWeight.w400,
              fontSize: 36.sp,
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              color: const Color(0xffFFFFFF),
              fontFamily: 'ProductSans',
              fontWeight: FontWeight.w400,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}