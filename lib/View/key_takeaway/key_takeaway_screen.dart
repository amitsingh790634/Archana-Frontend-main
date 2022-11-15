import 'package:archna_frontend/View/exercise/exercise_screen1.dart';
import 'package:archna_frontend/constant/contant.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

class KeyTakeAway extends StatefulWidget {
  KeyTakeAway({Key? key}) : super(key: key);

  @override
  State<KeyTakeAway> createState() => _KeyTakeAwayState();
}

class _KeyTakeAwayState extends State<KeyTakeAway> {
  double data9 = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themAppcolor,
      body: Column(
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
                  currentStep: data9.toInt(),
                  size: 8,
                  padding: 0,
                  selectedColor: Colors.black,
                  unselectedColor: Colors.grey,
                  roundedEdges: const Radius.circular(10),
                ),
              ),
            ],
          ),
          4.h.heightBox,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Icon(Icons.arrow_back_ios_outlined, color: Colors.black),
              InkWell(
                  onTap: () {
                    Get.to(() => ExerciseScreen1(), arguments: data9 + 3.5);
                  },
                  child: const Icon(Icons.arrow_forward_ios_outlined,
                      color: Colors.black)),
            ],
          ),
          4.h.heightBox,
          Image.asset("assets/images/frame6.png"),
          2.h.heightBox,
          Image.asset("assets/images/frame7.png"),
          2.h.heightBox,
          Image.asset("assets/images/frame89.png"),
          4.h.heightBox,
          Image.asset("assets/images/frame9.png"),
        ],
      ).pSymmetric(h: 2.h),
    );
  }
}
