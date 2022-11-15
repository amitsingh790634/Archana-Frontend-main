import 'package:archna_frontend/View/story/test_your_understanding.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constant/contant.dart';

class StoryPage extends StatefulWidget {
  StoryPage({Key? key}) : super(key: key);

  @override
  State<StoryPage> createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  double data4 = Get.arguments;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Stack(
        children: [
          Positioned(
            top: 9.h,
            child: Image.asset(
              "assets/images/leaf.gif",
              height: 80.h,
              width: 100.w,
              fit: BoxFit.fill,
            ),
          ),
          Container(height: 200.h, width: 100.w, color: themAppcolor),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
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
                        currentStep: data4.toInt(),
                        size: 8,
                        padding: 0,
                        selectedColor: Colors.black,
                        unselectedColor: Colors.grey,
                        roundedEdges: Radius.circular(10),
                      )),
                ],
              ),
              4.h.heightBox,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                      onTap: () {
                        Get.back();
                      },
                      child: Icon(Icons.arrow_back_ios_outlined,
                          color: Colors.black)),
                  InkWell(
                      onTap: () {
                        Get.to(() => TestYourUnderStanding(),
                            arguments: data4 + 6.25);
                      },
                      child: Icon(Icons.arrow_forward_ios_outlined,
                          color: Colors.black)),
                ],
              ),
              4.h.heightBox,
              Text(
                "Story context",
                style: text30,
              ),
              2.h.heightBox,
              Text(
                "Myra believes that something harmful is hiding in the tree and intends to harm her. But the truth is that the tree branch actually moved due to the wind and nothing else.",
                style: text25,
              ),
              4.h.heightBox,
              Text(
                "Explanation",
                style: text30,
              ),
              2.h.heightBox,
              Text(
                "As we see in this story there is often a gap between our beliefs and the reality itself. Our beliefs can often be false or faulty and may be arising from stories we have repeatedly heard growing up, during our upbringing or due to genetics itself. Whatever the reason, they can affect the way we perceive reality which in turn affects how we think, feel and act. In the case of Myra, since she falls for the false belief that something bad is going to happen, she interprets the moving branches and falling leaves as a bad omen. Her thoughts at that moment are “Oh there is something harmful lurking there, it will harm me, I just want to rush home and feel safe!” She is filled with feelings of fear and starts pacing towards home. If Myra on the other hand believed that good will happen, she would have perceived the reality differently. She would have thought “It must be only a tree branch moving due to the wind, or a monkey jumping around”. She would have felt calm and composed and continued to walk home in a relaxed manner as before.",
                style: text25,
              ),
              2.h.heightBox,
            ],
          ).pSymmetric(h: 2.h),
        ],
      ),
    ));
  }
}
