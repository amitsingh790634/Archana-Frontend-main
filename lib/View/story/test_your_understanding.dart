import 'package:archna_frontend/View/understanding/understanding1_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';
import 'package:sizer/sizer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constant/contant.dart';

class TestYourUnderStanding extends StatefulWidget {
  TestYourUnderStanding({Key? key}) : super(key: key);

  @override
  State<TestYourUnderStanding> createState() => _TestYourUnderStandingState();
}

class _TestYourUnderStandingState extends State<TestYourUnderStanding> {
  double data5 = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themAppcolor,
      body: Stack(
        children: [
          Container(
            height: 100.h,
            width: 100.w,
            // color: Colors.red,
          ).pSymmetric(h: 2.h),
          Positioned(
              top: 15.h,
              left: -22.h,
              right: -22.h,
              child: Lottie.asset(
                "assets/images/wave3.json",
                width: 100.w,
                fit: BoxFit.fill,
              )),
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
                      currentStep: data5.toInt(),
                      size: 8,
                      padding: 0,
                      selectedColor: Colors.black,
                      unselectedColor: Colors.grey,
                      roundedEdges: Radius.circular(10),
                    ),
                  ),
                ],
              ),
              3.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                      onTap: () {
                        Get.to(() => UnderStanding1(), arguments: data5 + 6.25);
                      },
                      child: Icon(Icons.arrow_forward_ios, color: Colors.black))
                ],
              ),
              10.h.heightBox,
              Container(
                height: 20.h,
                width: 40.w,
                decoration: BoxDecoration(
                    color: Color(0xff9EB9A0),
                    borderRadius: BorderRadius.circular(60.sp)),
                child: Center(
                  child: Image.asset(
                    "assets/images/qmark.png",
                    height: 8.h,
                    width: 16.w,
                  ),
                ),
              ),
              2.h.heightBox,
              Text(
                "Storytime",
                style: text30,
              ),
              2.h.heightBox,
              Text(
                "Teaching mental health concepts with simple, relatable and interactive stories",
                textAlign: TextAlign.center,
                style: text25,
              ),
            ],
          ).pSymmetric(h: 2.h)
        ],
      ),
    );
  }
}
