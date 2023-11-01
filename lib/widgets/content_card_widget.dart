import 'package:epi_help_app/entity/content_card_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContentCardWidget extends StatelessWidget {
  final ContentCardEntity entity;
  const ContentCardWidget({Key? key, required this.entity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: Container(
        height: 400.h,
        width: 374.w,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.r), color: Colors.blueGrey),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          SizedBox(
            height: 225.h,
            width: 402.w, //MediaQuery.of(context).size.width.w,
            child: Image.asset(entity.post, fit: BoxFit.cover),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.only(left: 20).r,
            child: Text(
              entity.title,
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 22.sp,
              ),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.only(left: 20).r,
            child: Text(
              entity.description,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 16.sp,
                  color: const Color(0xffA0A3B1)),
            ),
          ),
          SizedBox(height: 10.h),
          Padding(
            padding: const EdgeInsets.only(right: 20).r,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  entity.date,
                  style: TextStyle(
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xffA0A3B1)),
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
