import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TaskWidget extends StatelessWidget {
  const TaskWidget(
      {super.key,
        required this.todoTitle,
        required this.responsibles,
        required this.imageLink,
        required this.dueTime,
        required this.color1,
        required this.color2});

  final String todoTitle;
  final String responsibles;

  final String imageLink;

  final String dueTime;

  final Color color1;
  final Color color2;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        left: 15.w,
        top: 14.h,
        right: 20.w,
        bottom: 12.h,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15.r),
        gradient: LinearGradient(colors: [
          color1,
          color2,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            todoTitle,
            style: TextStyle(
              color: const Color(0xffFFFFFF),
              fontFamily: 'ProductSans',
              fontWeight: FontWeight.w700,
              fontSize: 16.sp,
            ),
          ),
          SizedBox(height: 5.h),
          Text(
            responsibles,
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
              Image.asset(
                imageLink,
                height: 24.h,
              ),
              Text(
                dueTime,
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
    );
  }
}
