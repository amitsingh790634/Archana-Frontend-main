import 'package:archna_frontend/View/privacy_screen.dart';
import 'package:archna_frontend/View/signin_screen.dart';
import 'package:archna_frontend/View/signup_screen.dart';
import 'package:archna_frontend/constant/backgroundColor.dart';
import 'package:archna_frontend/constant/contant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColor(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'The World is Changing',
                    style: text3,
                  ),
                  1.5.h.heightBox,
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In egestas malesuada ante, sit amet interdum nisi euismod non. Vestibulum nec nunc nec elit finibus ultricies. Nullam et consequat leo. Curabitur eu risus dignissim, pretium justo ac, eleifend turpis. Pellentesque eget rhoncus ligula. In hac habitasse platea dictumst. Mauris eget ultrices erat, id vehicula est.',
                    style: text2,
                  ),
                  5.h.heightBox,
                  Text(
                    'We can help each other',
                    style: text3,
                  ),
                  1.5.h.heightBox,
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In egestas malesuada ante, sit amet interdum nisi euismod non. Vestibulum nec nunc nec elit finibus ultricies. Nullam et consequat leo. Curabitur eu risus dignissim, pretium justo ac, eleifend turpis. Pellentesque eget rhoncus ligula. In hac habitasse platea dictumst. Mauris eget ultrices erat, id vehicula est.',
                    style: text2,
                  ),
                ],
              ),
              InkWell(
                onTap: () => Get.to(
                  PrivacyScreen(),
                  transition: Transition.fadeIn,
                  duration: Duration(seconds: 3),
                ),
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(18),
                      color: Colors.black),
                  child: Text(
                    'Lets start this journey together!',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.white,
                        fontWeight: FontWeight.w700),
                  ).p(2.h).centered(),
                ),
              )
            ],
          ).p(4.w),
        ),
      ),
    );
  }
}
