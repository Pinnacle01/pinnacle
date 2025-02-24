import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/general_component.dart';
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
import 'package:pinnacle_main/framework/widgets/user_profile/user_profile_card.dart';

class TripDetails extends StatefulWidget {
  const TripDetails({
    super.key,
  });

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
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
      body: Padding(
        padding: EdgeInsets.all(Sizes.size16.dp),
        child: ListView(
          children: [
            TravelRequestCard(
              title: 'Travel Title',
              startDate: DateTime.now(),
              endDate: DateTime.now(),
              price: 'Travel Price',
              days: 5,
              cityLocation: 'Lonavala',
            ),
            SizedBox(height: Sizes.size16.dp),
            UserProfileCard(
              userName: 'User Name',
              userImage: AssetPath.userImage,
              userProfileId: 'User Id',
            ),
            SizedBox(height: Sizes.size16.dp),
            GeneralComponent.requestCardDataInfo(
              title: 'Location',
              iconPath: AssetPath.locationIcon,
              iconColor: CustomColors.mainTextColor,
            ),
            SizedBox(height: Sizes.size16.dp),
            GeneralComponent.requestCardDataInfo(
              title: 'Group size',
              iconPath: AssetPath.groupSizeIcon,
              iconColor: CustomColors.mainTextColor,
            ),
            SizedBox(height: Sizes.size16.dp),
            GeneralComponent.requestCardDataInfo(
              title: 'English',
              iconPath: AssetPath.globeIcon,
              iconColor: CustomColors.mainTextColor,
            ),
          ],
        ),
      ),
    );
  }
}
