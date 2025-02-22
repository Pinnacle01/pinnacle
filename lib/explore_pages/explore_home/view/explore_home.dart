import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/widgets/search_bar.dart';
import 'package:pinnacle_main/framework_demo.dart';
import 'package:pinnacle_main/home.dart';

class ExploreHome extends StatelessWidget {
  final TextEditingController controller;
  ExploreHome(
      {super.key,
      required this.date,
      required this.daysRemaining,
      required this.location,
      required this.price,
      required this.image,
      required this.controller});

  String daysRemaining;
  String price;
  String location;
  String date;
  String image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Explore',
            style: TextStyle(
              color: CustomColors.mainBackgroundColor,
              fontSize: Sizes.size32.sp,
              fontWeight: FontWeight.w600,
            )),
      ),
      body: Column(
        children: [
          SearchBarWidget(controller: controller),
        ],
      ),
    );
  }
}
