import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pinnacle_main/explore_home/store/explore_page_store.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';

import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/services/route_navigator.dart';
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
  final exploreStore = ExplorePageStore();

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);

    _tabController.addListener(
      () {
        if (_tabController.indexIsChanging == false) {
          exploreStore.setTabIndex(_tabController.index);
        }
      },
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: CustomColors.mainBackgroundColor161513,
      bottomNavigationBar: const CustomBottomNavigationBar(
        currentIndex: 1,
      ),
      appBar: customAppBarWithShadow(
        titleName: 'Explore',
        backgroundColor: CustomColors.mainBackgroundColor161513,
        titleColor: CustomColors.mainTextColor,
        fontSize: Sizes.size32.sp,
        fontWeight: FontWeight.w600,
      ),
      body: Column(
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
          Observer(
            builder: (context) {
              return Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    _buildListViewHome('Home'),
                    _buildListViewCategories('Categories'),
                    _buildListViewLocations('Locations'),
                  ],
                ),
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _categoryBoxButton(String title, int index) {
    return Expanded(
      child: Observer(
        builder: (context) {
          return Container(
            margin: EdgeInsets.symmetric(
              horizontal: Sizes.size5.dp,
              vertical: Sizes.size10.dp,
            ),
            padding: EdgeInsets.symmetric(vertical: Sizes.size5.dp),
            decoration: BoxDecoration(
              color: exploreStore.tabIndex == index
                  ? CustomColors.buttonBackgroundCreamColor
                  : CustomColors.mainTextColor,
              borderRadius: BorderRadius.circular(Sizes.size10.sp),
            ),
            child: InkWell(
              onTap: () {
                exploreStore.setTabIndex(index);
                _tabController.index = index;
              },
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: Sizes.size5.dp),
                child: Center(
                  child: TextWidget(
                    text: title,
                    color: CustomColors.mainBackgroundColor161513,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildListViewHome(String title) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: Sizes.size5.dp,
            horizontal: Sizes.size15.dp,
          ),
          child: InkWell(
            onTap: () => RouteNavigator.go(context, '/explorepage/tripdetails'),
            child: TravelRequestCard(
              title: 'Travel Title',
              startDate: DateTime.now(),
              endDate: DateTime.now(),
              price: 'Travel Price',
              days: 5,
              cityLocation: 'Lonavala',
            ),
          ),
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
            horizontal: Sizes.size15.dp,
          ),
          child: SingleCategoryCard(
            onTap: () =>
                RouteNavigator.go(context, '/explorepage/categorypage'),
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
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: Sizes.size5.dp,
            horizontal: Sizes.size15.dp,
          ),
          child: SingleCategoryCard(
            onTap: () =>
                RouteNavigator.go(context, '/explorepage/locationpage'),
            categoryImage: AssetPath.categoryImage,
          ),
        );
      },
    );
  }
}
