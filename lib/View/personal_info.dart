import 'package:archna_frontend/View/feeling_page.dart';
import 'package:archna_frontend/constant/backgroundColor.dart';
import 'package:archna_frontend/constant/contant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

class PersonalInfo extends StatelessWidget {
  final selected2 = "select your gender".obs;
  List dropdownText2 = [
    'select your gender',
    'male',
    'female',
    'other',
  ];
  void setSelected1(String value1) {
    selected2.value = value1;
  }

  final selected = "select your age".obs;
  List dropdownText = ['select your age', '20-25', '25-30', '30-35', '35+'];

  void setSelected(String value) {
    selected.value = value;
  }

  PersonalInfo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackgroundColor(
        child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20, right: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'We Can costumize this',
                    style: text5,
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    'Experience for you',
                    style: text5,
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'we would like to know',
                    style: TextStyle(
                        fontSize: 17,
                        color: Colors.black,
                        fontWeight: FontWeight.w400),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Obx(
                    () => Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              // border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: DropdownButton(
                              dropdownColor: Colors.white,
                              iconEnabledColor: Colors.black,
                              iconSize: 24,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 2),
                              // menuMaxHeight: 140,
                              isDense: true,
                              itemHeight: 50,
                              // underline: Text('data'),
                              alignment: Alignment.centerLeft,
                              isExpanded: true,
                              hint: Text(
                                'Area',
                              ),
                              onChanged: (newValue) {
                                setSelected(newValue as String);
                              },
                              value: selected.value,
                              items: dropdownText.map((selectedType) {
                                return DropdownMenuItem(
                                  child: new Text(
                                    selectedType,
                                    style: TextStyle(color: Colors.black),
                                  ).pOnly(left: 12),
                                  value: selectedType,
                                );
                              }).toList(),
                            ).centered().pSymmetric(h: 4))
                        // .w(94.w)
                        .h(7.h)
                        .pOnly(top: 8)
                        .centered(),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Obx(
                    () => Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(10),
                              ),
                              // border: Border.all(color: Colors.grey, width: 1),
                            ),
                            child: DropdownButton(
                              dropdownColor: Colors.white,
                              iconEnabledColor: Colors.black,
                              iconSize: 24,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(10)),
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                  letterSpacing: 2),
                              // menuMaxHeight: 140,
                              isDense: true,
                              itemHeight: 50,
                              // underline: Text('data'),
                              alignment: Alignment.centerLeft,
                              isExpanded: true,
                              hint: Text(
                                'Area',
                              ),
                              onChanged: (newValue) {
                                setSelected1(newValue as String);
                              },
                              value: selected2.value,
                              items: dropdownText2.map((selectedType) {
                                return DropdownMenuItem(
                                  child: new Text(
                                    selectedType,
                                    style: TextStyle(color: Colors.black),
                                  ).pOnly(left: 12),
                                  value: selectedType,
                                );
                              }).toList(),
                            ).centered().pSymmetric(h: 4))
                        // .w(94.w)
                        .h(7.h)
                        .pOnly(top: 8)
                        .centered(),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  Container(
                      height: 7.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Colors.white),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            'Current Location',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.grey,
                                fontWeight: FontWeight.w500),
                          ),
                          Icon(
                            Icons.zoom_in,
                            size: 17,
                          )
                        ],
                      ).pOnly(left: 10, right: 10)),
                  SizedBox(
                    height: 3.h,
                  ),
                  Text(
                    'Have you gone to a mental health professional',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 1.h,
                  ),
                  Text(
                    ' for anxiety or depression.',
                    style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  InkWell(
                    onTap: () => Get.to(
                      FeelingScreen(),
                      transition: Transition.fadeIn,
                      duration: Duration(seconds: 2),
                    ),
                    child: Container(
                      height: 8.h,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(18),
                          color: Colors.black),
                      child: Center(
                        child: Text('Sumit',
                            style: TextStyle(
                                fontSize: 17,
                                color: Colors.white,
                                fontWeight: FontWeight.w700)),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 2.h,
                  ),
                  Center(
                      child: TextButton(
                    onPressed: () => Get.to(FeelingScreen(),
                        transition: Transition.fadeIn,
                        duration: Duration(seconds: 2)),
                    child: Text('Skip',
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.black,
                            fontWeight: FontWeight.w600)),
                  ))
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
