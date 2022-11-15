// import 'dart:html';

import 'package:archna_frontend/View/personal_info.dart';
import 'package:archna_frontend/View/privacy_screen.dart';
import 'package:archna_frontend/View/signin_screen.dart';
import 'package:archna_frontend/constant/backgroundColor.dart';
import 'package:archna_frontend/constant/contant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'feeling_page.dart';

class SignUpScreen extends StatelessWidget {
  SignUpScreen({Key? key}) : super(key: key);
  TextEditingController _numberController = TextEditingController();
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontoller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BackgroundColor(
      child: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(top: 20, left: 25, right: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 4.h,
                ),
                Text(
                  'Create An Account',
                  style: TextStyle(
                      fontSize: 19,
                      color: Colors.black,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 5.h,
                ),
                Container(
                  height: 7.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Center(
                    child: TextFormField(
                      cursorColor: Colors.black,
                      style: TextStyle(fontSize: 16),
                      cursorHeight: 25.0,
                      controller: _numberController,
                      decoration: InputDecoration(
                          hintText: 'Mobile Number(optional)',
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          prefixIcon: Icon(Icons.mobile_screen_share_outlined),
                          prefixIconColor: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  height: 7.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Center(
                    child: TextFormField(
                      cursorColor: Colors.black,
                      style: TextStyle(fontSize: 16),
                      cursorHeight: 25.0,
                      controller: _emailcontroller,
                      decoration: InputDecoration(
                          hintText: 'Email Address',
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          prefixIcon: Icon(Icons.email),
                          prefixIconColor: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 2.h,
                ),
                Container(
                  height: 7.h,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: Colors.white),
                  child: Center(
                    child: TextFormField(
                      obscureText: true,
                      cursorColor: Colors.black,
                      style: TextStyle(fontSize: 16),
                      cursorHeight: 25.0,
                      controller: _passwordcontoller,
                      decoration: InputDecoration(
                          hintText: 'password',
                          focusedBorder: InputBorder.none,
                          errorBorder: InputBorder.none,
                          focusedErrorBorder: InputBorder.none,
                          disabledBorder: InputBorder.none,
                          enabledBorder: InputBorder.none,
                          prefixIcon: Icon(Icons.lock),
                          prefixIconColor: Colors.grey),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'i agree to the',
                      style: TextStyle(fontSize: 13, color: Colors.black),
                    ),
                    TextButton(
                        onPressed: () => Get.to(PrivacyScreen()),
                        child: Text(
                          'Terms of Service & privacy and policy',
                          style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            decoration: TextDecoration.underline,
                          ),
                        )),
                  ],
                ),
                SizedBox(
                  height: 15.h,
                ),
                InkWell(
                  onTap: (() => Get.to(
                        PersonalInfo(),
                        transition: Transition.fadeIn,
                        duration: Duration(seconds: 2),
                      )),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16),
                      color: Colors.black,
                    ),
                    child: Center(
                      child: Text(
                        'Create Account',
                        style: TextStyle(fontSize: 17, color: Colors.white),
                      ).p(3.5.w),
                    ),
                  ),
                ),
                SizedBox(
                  height: 1.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () => Get.to(SignInScreen()),
                      child: Text(
                        'Already have an account? Sing in',
                        style: text4,
                      ),
                    ),
                  ],
                ),
                Divider(
                  color: Colors.grey,
                  thickness: 1,
                ),
                SizedBox(
                  height: 12.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                      onPressed: () {
                        Get.to(() => FeelingScreen());
                      },
                      child: Text(
                        'or continue as a guest',
                        style: text4,
                      ),
                    ),
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
