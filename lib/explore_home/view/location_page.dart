import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/build_list_view.dart';

import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';

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
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: CustomColors.mainBackgroundColor161513,
      bottomNavigationBar: const CustomBottomNavigationBar(
        currentIndex: 1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Center(
                  child: ImageWidget(
                    path: AssetPath.dummyLocationImage,
                    width: double.infinity,
                    height: Sizes.size420.dp,
                    fit: BoxFit.fill,
                  ),
                ),
                Positioned(
                  top: Sizes.size10.dp,
                  left: Sizes.size10.dp,
                  child: CircleBackButtonWidget(
                    onPress: () {
                      RouteNavigator.pop(context);
                    },
                  ),
                ),
                Positioned(
                  bottom: Sizes.size0.dp,
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: Sizes.size15.dp),
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextWidget(
                          text: 'Lonavala',
                          size: Sizes.size30.sp,
                          fontWeight: FontWeight.bold,
                          fontStyle: FontStyle.italic,
                          alignment: TextAlign.center,
                          color: CustomColors.mainTextColor,
                        ),
                        TextWidget(
                          text:
                              'Lonavala-Khandala is a hill station and a Municipal Council in the Pune district, Maharashtra, India.',
                          alignment: TextAlign.center,
                          size: Sizes.size16.sp,
                          fontStyle: FontStyle.italic,
                          color: CustomColors.mainTextColor,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            Container(
              padding: EdgeInsets.fromLTRB(
                Sizes.size15.dp,
                Sizes.size10.dp,
                Sizes.size15.dp,
                Sizes.size5.dp,
              ),
            ),
            _buildListViewHome(),
          ],
        )),
      ),
    );
  }

  Widget _buildListViewHome() {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
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
