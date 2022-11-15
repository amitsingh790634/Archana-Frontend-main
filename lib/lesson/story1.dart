import 'package:archna_frontend/component/quiz_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../constant/contant.dart';

class Story1 extends StatefulWidget {
  Story1({Key? key}) : super(key: key);

  @override
  State<Story1> createState() => _Story1State();
}

class _Story1State extends State<Story1> {
  double data = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          1.h.heightBox,
          Positioned(
            top: 8.h,
            child: Image.asset(
              "assets/images/leaf.gif",
              height: 80.h,
              width: 100.w,
              fit: BoxFit.fill,
            ),
          ),
          Container(height: 100.h, width: 100.w, color: themAppcolor),
          5.h.heightBox,
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
            top: 60.h,
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
            top: 80.h,
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
                children: [
                  Image.asset(
                    "assets/images/canimg.png",
                  ),
                  3.w.widthBox,
                  Container(
                    width: 84.w,
                    child: StepProgressIndicator(
                      totalSteps: 100,
                      currentStep: data.toInt(),
                      size: 8,
                      padding: 0,
                      selectedColor: Colors.black,
                      unselectedColor: Colors.grey,
                      roundedEdges: Radius.circular(10),
                    ),
                  ),
                ],
              ),
              4.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.arrow_back_ios_outlined,
                      color: Colors.black),
                  InkWell(
                      onTap: () {
                        Get.to(() => QuizScreen(), arguments: data + 6.25);
                      },
                      child: const Icon(Icons.arrow_forward_ios,
                          color: Colors.black)),
                ],
              ),
            ],
          ).pSymmetric(h: 2.h),
        ],
      ),
    );
  }
}
