import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';

import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';
import 'package:pinnacle_main/framework/widgets/search_bar.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:pinnacle_main/framework/widgets/travel_cards/single_category_card.dart';
import 'package:pinnacle_main/framework/widgets/travel_cards/travel_request_component.dart';

class ExploreHome extends StatefulWidget {
  const ExploreHome({
    super.key,
    this.date,
    this.daysRemaining,
    this.location,
    this.price,
    this.image,
  });

  final String? daysRemaining;
  final String? price;
  final String? location;
  final String? date;
  final String? image;

  @override
  State<ExploreHome> createState() => _ExploreHomeState();
}

class _ExploreHomeState extends State<ExploreHome>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  late TextEditingController controller = TextEditingController();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor161513,

      appBar: customAppBarWithShadow(
        titleName: 'Explore',
        backgroundColor: CustomColors.mainBackgroundColor161513,
        titleColor: CustomColors.mainTextColor,
        fontSize: Sizes.size32.sp,
        fontWeight: FontWeight.w600,
      ),
      // appBar: AppBar(
      //   toolbarHeight: 60,
      //   backgroundColor: CustomColors.mainBackgroundColor161513,
      //   title: Text(
      //     'Explore',
      //     style: TextStyle(
      //       color: CustomColors.mainTextColor,
      //       fontSize: Sizes.size32.sp,
      //       fontWeight: FontWeight.w600,
      //     ),
      //   ),
      // ),
      body: Column(
        children: [
          SearchBarWidget(controller: controller),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: Sizes.size10.dp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _categoryBoxButton('Home', 0),
                _categoryBoxButton('Categories', 1),
                _categoryBoxButton('Locations', 2),
                // IconButtonWidget(
                //   icon: const Icon(Icons.grid_view, color: Colors.white),
                //   onPressed: () {},
                // ),
              ],
            ),
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                _buildListViewHome('Home'),
                _buildListViewCategories('Categories'),
                _buildListViewLocations('Locations'),
              ],
            ),
          ),
          customBottomNavigator(),
        ],
      ),
    );
  }

  Widget _categoryBoxButton(String title, int index) {
    return InkWell(
      onTap: () {
        setState(() {
          _tabController.index = index;
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(
            vertical: Sizes.size10.dp, horizontal: Sizes.size20.dp),
        decoration: BoxDecoration(
          color: _tabController.index == index
              ? CustomColors.buttonBackgroundCreamColor
              : CustomColors.mainTextColor,
          borderRadius: BorderRadius.circular(Sizes.size10.sp),
        ),
        child: TextWidget(
            text: title,
            color: CustomColors.mainBackgroundColor161513,
            fontWeight: FontWeight.w600),
      ),
    );
  }

  Widget _buildListViewHome(String title) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TravelRequestCard(
          title: 'Travel Title',
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          price: 'Travel Price',
          days: 5,
          cityLocation: 'Lonavala',
        );
      },
    );
  }

  Widget _buildListViewCategories(String title) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return SingleCategoryCard(
          categoryImage: AssetPath.categoryImage,
        );
      },
    );
  }

  Widget _buildListViewLocations(String title) {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        return TravelRequestCard(
          title: 'Travel Title',
          startDate: DateTime.now(),
          endDate: DateTime.now(),
          price: 'Travel Price',
          days: 5,
          cityLocation: 'Lonavala',
        );
      },
    );
  }
}

////////////////////////////////////
// Widget _categoryBoxButton(String title, BuildContext context) {
  //   return InkWell(
  //     onTap: () {},
  //     child: Container(
  //       padding: EdgeInsets.symmetric(
  //           vertical: Sizes.size5.dp, horizontal: Sizes.size15.dp),
  //       decoration: BoxDecoration(
  //         color: Colors.grey[300],
  //         borderRadius: BorderRadius.circular(Sizes.size10.sp),
  //       ),
  //       child: Text(title, style: const TextStyle(fontWeight: FontWeight.w600)),
  //     ),
  //   );
  // }

 // Expanded(
          //   child: ListView.builder(
          //     itemBuilder: (BuildContext context, int index) {
          //       return TravelRequestCard(
          //         title: 'Travel Title',
          //         startDate: DateTime.now(),
          //         endDate: DateTime.now(),
          //         price: 'Travel Price',
          //         days: 5,
          //         cityLocation: 'Lonavala',
          //       );
          //     },
          //   ),
          // ),



          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          //   children: [
          //     _categoryBoxButton('Home', context),
          //     _categoryBoxButton('Categories', context),
          //     _categoryBoxButton('Locations', context),
          //     IconButton(
          //       onPressed: () {},
          //       icon: const Icon(Icons.grid_view_outlined),
          //     ),

          //     // ElevatedButton(
          //     //   onPressed: () {},
          //     //   child: const Text('Home'),
          //     // ),
          //     // SizedBox(
          //     //   width: Sizes.size10.sp,
          //     // ),
          //     // ElevatedButton(
          //     //   onPressed: () {},
          //     //   child: const Text('Categories'),
          //     // ),
          //     // SizedBox(
          //     //   width: Sizes.size10.sp,
          //     // ),
          //     // ElevatedButton(
          //     //   onPressed: () {},
          //     //   child: const Text('Locations'),
          //     // ),
          //     // SizedBox(
          //     //   width: Sizes.size10.sp,
          //     // ),
          //     // IconButton(
          //     //   onPressed: () {},
          //     //   icon: const Icon(Icons.grid_view_outlined),
          //     // ),
          //   ],
          // ),
         