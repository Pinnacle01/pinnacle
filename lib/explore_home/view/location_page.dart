import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/travel_request_component.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/services/route_navigator.dart';
import 'package:pinnacle_main/framework/uikit/circle_back_button_widget.dart';
import 'package:pinnacle_main/framework/uikit/image_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/floating_action_button.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: CustomfloatingActionButton(
        onPress: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: CustomColors.mainBackgroundColor161513,
      bottomNavigationBar: const CustomBottomNavigationBar(
        currentIndex: 1,
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              ImageWidget(
                path: AssetPath.dummyImage,
                width: double.infinity,
                height: Sizes.size420.dp,
                fit: BoxFit.cover,
              ),
              Positioned(
                  top: Sizes.size20.dp,
                  left: Sizes.size10.dp,
                  child: const CircleBackButtonWidget()),
              Positioned(
                bottom: Sizes.size10.dp,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(Sizes.size8.dp),
                      child: Positioned(
                        child: TextWidget(
                            text: 'Lonavala',
                            size: Sizes.size30.sp,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            alignment: TextAlign.center,
                            color: CustomColors.mainTextColor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(Sizes.size8.dp),
                      child: Positioned(
                        bottom: Sizes.size10.dp,
                        child: TextWidget(
                            text:
                                'Lonavala-Khandala is a hill station and a Municipal Council in the Pune district, Maharashtra, India.',
                            alignment: TextAlign.center,
                            size: Sizes.size16.sp,
                            fontStyle: FontStyle.italic,
                            color: CustomColors.mainTextColor),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          _buildListViewHome(),
        ],
      )),
    );
  }

  Widget _buildListViewHome() {
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
}
