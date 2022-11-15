import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/contant.dart';

class LessonOverview extends StatelessWidget {
  String? img;
  String? title;
  String? subtit;
  LessonOverview({
    Key? key,
    this.img,
    this.title,
    this.subtit,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        constraints: const BoxConstraints(
          maxHeight: double.infinity,
        ),
        width: 100.w,
        decoration: BoxDecoration(
            color: themAppcolor, borderRadius: BorderRadius.circular(10.sp)),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            2.w.widthBox,
            Container(
              height: 6.h,
              width: 12.w,
              decoration: BoxDecoration(
                  color: Color(0xff9EB9A0),
                  borderRadius: BorderRadius.circular(30.sp)),
              child: Image.asset(
                "$img",
              ),
            ),
            4.w.widthBox,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "$title",
                  style: text27,
                ),
                1.h.heightBox,
                Container(
                  constraints: const BoxConstraints(
                    maxHeight: double.infinity,
                  ),
                  width: 68.w,
                  child: AutoSizeText(
                    '$subtit',
                    style: text25,
                    maxLines: 2,
                  ),
                )
              ],
            )
          ],
        ).pSymmetric(h: 1.h, v: 2.h));
  }
}
