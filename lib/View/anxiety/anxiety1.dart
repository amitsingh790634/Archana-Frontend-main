import 'dart:async';

import 'package:archna_frontend/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/state_manager.dart';
import 'package:sizer/sizer.dart';
import 'package:velocity_x/velocity_x.dart';

import '../../constant/contant.dart';
import 'anxiety2.dart';

class Anxiety1 extends StatefulWidget {
  @override
  State<Anxiety1> createState() => _Anxiety1State();
}

class _Anxiety1State extends State<Anxiety1> {
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Anxiety2())));
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: anxiety,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('And your final score was', style: text4),
            1.h.heightBox,
            Text.rich(TextSpan(children: [
              TextSpan(text: '15', style: text4),
              TextSpan(
                  text: '  out of 63',
                  style: TextStyle(
                      color: Color(0xff827850),
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w600))
            ])),
            1.h.heightBox,
            Column(
              children: [
                Text(
                    '''Explainer Text for explaining the scoring of this test. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam eu quam sed orci eleifend fermentum. Integer lobortis convallis tortor, eu congue elit ultrices sit amet. Nulla tempus turpis eu mauris porttitor, eu posuere libero sodales. Aenean euismod erat eget commodo porta. Vestibulum risus ante, porttitor imperdiet lorem vel, commodo pulvinar arcu. Nulla pharetra euismod metus, ac sollicitudin arcu auctor in. Cras convallis iaculis luctus. Etiam eu elit ac quam sollicitudin feugiat in vitae lectus. Duis nec ullamcorper neque. Fusce vestibulum justo sed erat vehicula, sed eleifend ipsum elementum.
            
            Phasellus rutrum ex finibus, venenatis turpis eget, venenatis odio. Vivamus at elit volutpat, imperdiet libero vel, aliquam neque. Praesent placerat, massa et bibendum elementum, lacus eros tincidunt urna, a dapibus justo odio sed nulla. Phasellus blandit sodales diam sed tincidunt. Sed ex nunc, egestas ut dictum in, scelerisque a velit. Cras nibh lectus, feugiat vehicula mattis et, luctus sed eros. Suspendisse lobortis felis nec orci aliquet pharetra. Integer vestibulum neque et tortor venenatis placerat. Aenean tempor tellus nisl, et dignissim sem porttitor id. Morbi egestas pulvinar enim, eu posuere purus volutpat eu. Donec eu eros urna.''',
                    style: TextStyle(fontSize: 12.sp)),
              ],
            )
          ],
        ).p(3.h),
      ),
    );
  }
}
