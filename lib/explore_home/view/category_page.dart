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

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

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
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(
                Sizes.size8.dp, Sizes.size0.dp, Sizes.size8.dp, Sizes.size0.dp),
            child: Stack(
              children: [
                ImageWidget(
                  path: AssetPath.cycleBikeImage,
                  width: double.infinity,
                  height: Sizes.size420.dp,
                  fit: BoxFit.cover,
                ),
                Positioned(
                  top: Sizes.size20.dp,
                  left: Sizes.size10.dp,
                  child: const CircleBackButtonWidget(),
                ),
                Positioned(
                  bottom: Sizes.size10.dp,
                  left: Sizes.size5.dp,
                  child: TextWidget(
                    text: 'Biking',
                    fontStyle: FontStyle.italic,
                    color: CustomColors.mainTextColor,
                    size: Sizes.size36.sp,
                  ),
                )
              ],
            ),
          ),
          const BuildListView(),
        ],
      )),
    );
  }
}
