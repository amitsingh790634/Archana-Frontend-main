import 'package:archna_frontend/View/School_time/school_time_story.dart';
import 'package:archna_frontend/View/lesson_break_down/lesson_break_down_page.dart';
import 'package:archna_frontend/View/thought_diary_screen/thought_lesson_3.dart';
import 'package:archna_frontend/View/thought_diary_screen/thought_lesson_6.dart';
import 'package:archna_frontend/component/drawer.dart';
import 'package:archna_frontend/constant/contant.dart';
import 'package:archna_frontend/distortion/Distortions_view.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import 'anxiety_screen/anxiety_question/anxiety1_screen.dart';
import 'depression_screen/depression_question/depression1_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<String> textList1 = [
    "Going to NASA",
    "Mr Calculus",
    "Definite AND Indefinite",
  ];

  List<String> textList2 = [
    "Flourishing",
    "Thoughts and Feelings",
    " A distorted view",
  ];

  List<String> textList3 = [
    "01",
    "02",
    "03",
  ];

  List<String> textList6 = [
    "In the Dark",
    "Light shines",
    'Myra’s phone rings',
    'Friends and family',
    'The train of thought ',
    'Yin and yang',
    'A twisted view',
    'The flat tire ',
  ];

  List<String> textList7 = [
    "01",
    "02",
    "03",
    '04',
    '05',
    '06',
    '07',
    '08',
  ];
  final GlobalKey<ScaffoldState> _key = GlobalKey();

  List<Widget> page = [
    LessonBreakDown(),
    Spacer(),
    // print('object'),
    ThoughtLesson3(),
    Spacer(),
    Spacer(),
    // print('object'),
    // print('object'),
    ThoughtLesson6(),
    Spacer(),
    // print('object'),
    Distortionsview()
  ];

  double par = 0.2;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        key: _key,
        drawer: DrawerPage(),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              3.h.heightBox,
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 4.h,
                    child: Image.asset('assets/images/user.png'),
                  ).onTap(() {
                    _key.currentState!.openDrawer();
                  }),
                  // .onTap(() {
                  //   Get.to(() => DrawerPage());
                  // }
                  // ),
                  2.w.widthBox,
                  Text('June 10, 2022', style: text7),
                ],
              ),
              Text('Good morning , Rahul', style: text26).pOnly(left: 8.h),
              2.h.heightBox,
              Container(
                height: 20.h,
                width: 90.w,
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/banner.png"),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Container(
                  height: 10.h,
                  width: 15.w,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: white1),
                  child: Icon(Icons.play_arrow_rounded, size: 50),
                ),
              ),
              2.h.heightBox,
              Text('School time stories', style: text26),
              2.h.heightBox,
              SizedBox(
                height: 25.h,
                child: ListView.builder(
                    itemCount: 3,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (BuildContext context, int index) {
                      return Card(
                          child: Container(
                            color: Color(0xffFFEDAB),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                    left: 2.h,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircularPercentIndicator(
                                            animation: true,
                                            animationDuration: 10000,
                                            radius: 30,
                                            lineWidth: 5,
                                            percent: par,
                                            progressColor: ratingcolor,
                                            backgroundColor: Colors.white,
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            center: CircleAvatar(
                                              backgroundColor: wco,
                                              radius: 12,
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: bco,
                                              ),
                                            ),
                                          ),
                                          25.w.widthBox,
                                          Container(
                                            height: 8.h,
                                            width: 15.w,
                                            decoration: BoxDecoration(
                                              color: Color(0xfffff4cd),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.zero,
                                                  topRight: Radius.zero,
                                                  bottomRight: Radius.zero,
                                                  bottomLeft:
                                                      Radius.circular(50.0)),
                                            ),
                                            child: Text(textList3[index],
                                                    style: text27)
                                                .centered(),
                                          )
                                        ],
                                      ),
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 10.h,
                                      width: 45.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          textList1[index],
                                          style: text1,
                                        ).pOnly(right: 2.h, left: 2.h),
                                        2.h.heightBox,
                                        Text(
                                          textList2[index],
                                          style: text2,
                                        ).pOnly(right: 2.h, left: 2.h),
                                      ],
                                    )
                                  ],
                                ).paddingAll(3.w),
                              ],
                            ),
                          ),
                          // elevation: 3.w,
                          margin: EdgeInsets.all(3.w),
                          // shadowColor: lineclr,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(8.0),
                          ));
                    }),
              ).onTap(() {
                Get.to(() => SchoolTimeStory());
              }),
              2.h.heightBox,
              Text('Assessments', style: text26),
              2.h.heightBox,
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFC07C),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                              left: 2.h,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircularPercentIndicator(
                                      animation: true,
                                      animationDuration: 10000,
                                      radius: 30,
                                      lineWidth: 5,
                                      percent: par,
                                      progressColor: ratingcolor,
                                      backgroundColor: Colors.white,
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      center: CircleAvatar(
                                        backgroundColor: wco,
                                        radius: 12,
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: bco,
                                        ),
                                      ),
                                    ),
                                    3.w.widthBox,
                                    8.h.heightBox,
                                    Text("50% complete", style: text2)
                                  ],
                                ),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 8.h,
                                width: 60.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Depression \nassessment",
                                    style: text26,
                                  ).pOnly(right: 2.h, left: 2.h),
                                  2.h.heightBox,
                                ],
                              )
                            ],
                          ).paddingAll(3.w),
                        ],
                      ),
                    ).onTap(() {
                      Get.to(() => Depression());
                    }),
                    2.w.widthBox,
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Color(0xffFFE999),
                      ),
                      child: Stack(
                        clipBehavior: Clip.none,
                        children: [
                          Positioned(
                              left: 2.h,
                              child: Container(
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                ),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    CircularPercentIndicator(
                                      animation: true,
                                      animationDuration: 10000,
                                      radius: 30,
                                      lineWidth: 5,
                                      percent: par,
                                      progressColor: ratingcolor,
                                      backgroundColor: Colors.white,
                                      circularStrokeCap:
                                          CircularStrokeCap.round,
                                      center: CircleAvatar(
                                        backgroundColor: wco,
                                        radius: 12,
                                        child: Icon(
                                          Icons.play_arrow,
                                          color: bco,
                                        ),
                                      ),
                                    ),
                                    3.w.widthBox,
                                    8.h.heightBox,
                                    Text("25% complete", style: text2)
                                  ],
                                ),
                              )),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Container(
                                height: 8.h,
                                width: 60.w,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Anxiety \nassessment",
                                    style: text26,
                                  ).pOnly(right: 2.h, left: 2.h),
                                  2.h.heightBox,
                                ],
                              )
                            ],
                          ).paddingAll(3.w),
                        ],
                      ),
                    ).onTap(() {
                      Get.to(() => AnxietyScreen());
                    }),
                  ],
                ),
              ),
              2.h.heightBox,
              Text('What is your mood like today?', style: text26),
              2.h.heightBox,
              Container(
                decoration: BoxDecoration(
                    color: Color(0xffFDCEBC),
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset('assets/images/1.png', scale: 3),
                    Image.asset('assets/images/2.png', scale: 3),
                    Image.asset('assets/images/3.png', scale: 3),
                    Image.asset('assets/images/4.png', scale: 3),
                    Image.asset('assets/images/5.png', scale: 3),
                  ],
                ).p(3.w),
              ),
              Text('Lessons', style: text26),
              SizedBox(
                  height: 75.h,
                  child: GridView.builder(
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2, childAspectRatio: 1.25),
                      itemCount: 8,
                      itemBuilder: (BuildContext context, int index) {
                        return Card(
                          child: Container(
                            color: Color(0xffC8F6B6),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                    left: 2.h,
                                    child: Container(
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                      ),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          CircularPercentIndicator(
                                            animation: true,
                                            animationDuration: 10000,
                                            radius: 30,
                                            lineWidth: 4,
                                            percent: par,
                                            progressColor: ratingcolor,
                                            backgroundColor: Colors.white,
                                            circularStrokeCap:
                                                CircularStrokeCap.round,
                                            center: CircleAvatar(
                                              backgroundColor: wco,
                                              radius: 12,
                                              child: Icon(
                                                Icons.play_arrow,
                                                color: bco,
                                              ),
                                            ),
                                          ),
                                          15.w.widthBox,
                                          Container(
                                            height: 6.h,
                                            width: 15.w,
                                            decoration: BoxDecoration(
                                              color: Color(0xffd3e7d5),
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.zero,
                                                  topRight: Radius.zero,
                                                  bottomRight: Radius.zero,
                                                  bottomLeft:
                                                      Radius.circular(50.0)),
                                            ),
                                            child: Text(textList7[index],
                                                    style: text27)
                                                .centered(),
                                          )
                                        ],
                                      ),
                                    )),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      height: 5.h,
                                      width: 60.w,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          textList6[index],
                                          style: text1,
                                        ),
                                      ],
                                    )
                                  ],
                                ).paddingAll(3.w),
                              ],
                            ),
                          ),
                          // elevation: 3.w,
                          margin: EdgeInsets.all(3.w),
                          // shadowColor: lineclr,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                        ).onTap(() {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => page[index]));
                          // Get.to(() => page[index]);
                        });
                      }))
            ],
          ),
        ).p(3.w),
      ),
    );
  }
}
