import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';

import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/floating_action_button.dart';
import 'package:pinnacle_main/framework/widgets/search_bar.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:pinnacle_main/explore_home/uikit/single_category_card.dart';
import 'package:pinnacle_main/explore_home/uikit/travel_request_component.dart';

class ExploreHome extends StatefulWidget {
  const ExploreHome({
    super.key,
  });

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
      floatingActionButton: CustomfloatingActionButton(
        onPress: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: CustomColors.mainBackgroundColor161513,
      bottomNavigationBar: const CustomBottomNavigationBar(),
      appBar: customAppBarWithShadow(
        titleName: 'Explore',
        backgroundColor: CustomColors.mainBackgroundColor161513,
        titleColor: CustomColors.mainTextColor,
        fontSize: Sizes.size32.sp,
        fontWeight: FontWeight.w600,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.size5.dp),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: Sizes.size10.dp),
              child: SearchBarWidget(controller: controller),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _categoryBoxButton('Home', 0),
                _categoryBoxButton('Categories', 1),
                _categoryBoxButton('Locations', 2),
              ],
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
          ],
        ),
      ),
    );
  }

  Widget _categoryBoxButton(String title, int index) {
    return Expanded(
      child: InkWell(
        onTap: () {
          setState(() {
            _tabController.index = index;
          });
        },
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: Sizes.size5.dp,
            vertical: Sizes.size10.dp,
          ),
          padding: EdgeInsets.symmetric(vertical: Sizes.size5.dp),
          decoration: BoxDecoration(
            color: _tabController.index == index
                ? CustomColors.buttonBackgroundCreamColor
                : CustomColors.mainTextColor,
            borderRadius: BorderRadius.circular(Sizes.size10.sp),
          ),
          child: Center(
            child: TextWidget(
                text: title,
                color: CustomColors.mainBackgroundColor161513,
                fontWeight: FontWeight.w600),
          ),
        ),
      ),
    );
  }

  Widget _buildListViewHome(String title) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
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
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: Sizes.size5.dp,
            horizontal: Sizes.size10.dp,
          ),
          child: SingleCategoryCard(
            onTap: () {},
            categoryImage: AssetPath.categoryImage,
          ),
        );
      },
    );
  }

  Widget _buildListViewLocations(String title) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 5,
      itemBuilder: (BuildContext context, int index) {
        return SingleCategoryCard(
          onTap: () {},
          categoryImage: AssetPath.categoryImage,
        );
      },
    );
  }
}
