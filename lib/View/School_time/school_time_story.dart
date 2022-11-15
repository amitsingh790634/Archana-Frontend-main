import 'package:archna_frontend/View/Home/school_time_question/school_time_question.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constant/contant.dart';

class SchoolTimeStory extends StatefulWidget {
  SchoolTimeStory({Key? key}) : super(key: key);

  @override
  State<SchoolTimeStory> createState() => _SchoolTimeStoryState();
}

class _SchoolTimeStoryState extends State<SchoolTimeStory> {
  // int data2 = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   elevation: 0,
      //   backgroundColor: themAppcolor,
      //   leading: const Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
      //   actions: [
      //     InkWell(
      //         onTap: () {
      //           Get.to(() => SchoolTimeQuestion);
      //         },
      //         child: Icon(Icons.arrow_forward_ios, color: Colors.black)
      //             .pSymmetric(h: 2.h)),
      //   ],
      // ),
      body: Stack(
        children: [
          1.h.heightBox,
          Positioned(
            top: 6.h,
            child: Image.asset(
              "assets/images/leaf.gif",
              height: 80.h,
              width: 100.w,
              fit: BoxFit.fill,
            ),
          ),
          Container(height: 100.h, width: 100.w, color: themAppcolor),
          Positioned(
            top: 8.h,
            child: Image.asset(
              "assets/images/asleep.png",
              height: 50.h,
              width: 100.w,
              fit: BoxFit.fill,
            ),
          ),
          Positioned(
            top: 58.h,
            child: Container(
              constraints: const BoxConstraints(
                maxHeight: double.infinity,
              ),
              width: 100.w,
              child: Text(
                "Advik is in class 11th and loves Physics. He dreams of becoming an Engineer. So far the topics Laws of Motion and Relational motion have been covered in school and he finds them easy. He enjoys working with real life problems around gravity and acceleration.",
                style: text25,
              ).pSymmetric(h: 2.h),
            ),
          ),
          Positioned(
            top: 78.h,
            child: Image.asset(
              "assets/images/musicimg.png",
              height: 15.h,
              width: 92.w,
              fit: BoxFit.fill,
            ).pSymmetric(h: 2.h),
          ),
          Column(
            children: [
              6.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(() => SchoolTimeQuestion());
                      },
                      child: const Icon(Icons.arrow_back_ios,
                          color: Colors.black)),
                  InkWell(
                      onTap: () {
                        Get.to(() => SchoolTimeQuestion());
                      },
                      child: const Icon(Icons.arrow_forward_ios,
                          color: Colors.black))
                ],
              ),
            ],
          ).pSymmetric(h: 2.h),
        ],
      ),
    );
  }
}
