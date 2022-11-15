import 'package:archna_frontend/View/signin_screen.dart';
import 'package:archna_frontend/View/signup_screen.dart';
import 'package:archna_frontend/constant/backgroundColor.dart';
import 'package:archna_frontend/constant/contant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';

class PrivacyScreen extends StatelessWidget {
  PrivacyScreen({Key? key}) : super(key: key);
  RxBool isChecked = false.obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundColor(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0, right: 20, left: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Privacy policy',
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus nisl tincidunt eget nullam non nisi est. Lectus proin nibh nisl condimentum id venenatis a condimentum. Pharetra diam sit amet nisl suscipit. Ultrices gravida dictum fusce ut placerat orci. Eu volutpat odio facilisis mauris sit amet massa vitae tortor. Commodo viverra maecenas accumsan lacus vel. Hac habitasse platea dictumst quisque sagittis purus sit. Massa sed elementum tempus egestas sed. Nam aliquam sem et tortor. Nulla facilisi morbi tempus iaculis urna. Sodales ut etiam sit amet nisl purus. Neque ornare aenean euismod elementum nisi quis eleifend quam. Non odio euismod lacinia at quis risus sed. Congue eu consequat ac felis donec et. Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Faucibus nisl tincidu nt eget nullam non nisi est. Lectus proin nibh nisl condimentum id venenatis a condimentum. Pharetra diam sit amet nisl suscipit. Ultrices',
                  style: TextStyle(
                      height: 1.7,
                      // letterSpacing: 3.0,
                      fontSize: 15,
                      fontWeight: FontWeight.w400,
                      color: Colors.black),
                ),
                SizedBox(
                  height: 6.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Obx(
                      () => Checkbox(
                          value: isChecked.value,
                          fillColor: MaterialStateProperty.all(Colors.black),
                          // checkColor: Colors.black,
                          onChanged: (bool? value) {
                            isChecked.toggle();
                            if (value == true) {
                              Get.to(() => SignUpScreen());
                            }
                          }),
                    ),
                    Text(
                      'I agree with privacy policy',
                      style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w400,
                          color: Colors.black),
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
