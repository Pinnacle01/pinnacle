import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/widgets/search_bar.dart';
import 'package:pinnacle_main/framework/widgets/travel_cards/travel_request_component.dart';
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
      backgroundColor: CustomColors.mainBackgroundColor,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: CustomColors.mainBackgroundColor,
        title: Text('Explore',
            style: TextStyle(
              color: CustomColors.mainTextColor,
              fontSize: Sizes.size32.sp,
              fontWeight: FontWeight.w600,
            )),
      ),
      body: Column(
        children: [
          SearchBarWidget(controller: controller),
          Row(
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Home'),
              ),
              SizedBox(
                width: Sizes.size10.sp,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Categories'),
              ),
              SizedBox(
                width: Sizes.size10.sp,
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('LOcations'),
              ),
              SizedBox(
                width: Sizes.size10.sp,
              ),
              IconButton(
                onPressed: () {},
                icon: const Icon(Icons.grid_view_outlined),
              ),
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (BuildContext, int index) {
                return TravelRequestComponent(
                  title: 'Travel Title',
                  startDate: DateTime.now(),
                  endDate: DateTime.now(),
                  price: 'Travel Price',
                  days: 5,
                  cityLocation: 'Lonavala',
                );
              },
            ),
          ),
          // BottomNavigationBar(items: items)
        ],
      ),
    );
  }
}
