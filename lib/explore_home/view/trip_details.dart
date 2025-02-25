import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/build_prefrences.dart';
import 'package:pinnacle_main/explore_home/uikit/general_component.dart';
import 'package:pinnacle_main/explore_home/uikit/post_button.dart';
import 'package:pinnacle_main/explore_home/uikit/scrollable_textbox.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';

import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';

import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';

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
        padding: EdgeInsets.fromLTRB(
            Sizes.size20.dp, Sizes.size10.dp, Sizes.size20.dp, Sizes.size10.dp),
        child: Column(
          children: [
            TravelRequestCard(
              title: 'Travel Title',
              startDate: DateTime.now(),
              endDate: DateTime.now(),
              price: 'Travel Price',
              days: 5,
              cityLocation: 'Lonavala',
            ),
            SizedBox(height: Sizes.size10.dp),
            UserProfileCard(
              userName: 'User Name',
              userImage: AssetPath.userImage,
              userProfileId: 'User Id',
            ),
            SizedBox(height: Sizes.size10.dp),
            GeneralComponent.requestCardDataInfo(
              title: 'Location',
              iconPath: AssetPath.locationIcon,
              iconColor: CustomColors.mainTextColor,
            ),
            SizedBox(height: Sizes.size10.dp),
            GeneralComponent.requestCardDataInfo(
              title: 'Group size',
              iconPath: AssetPath.groupSizeIcon,
              iconColor: CustomColors.mainTextColor,
            ),
            SizedBox(height: Sizes.size10.dp),
            GeneralComponent.requestCardDataInfo(
              title: 'English',
              iconPath: AssetPath.globeIcon,
              iconColor: CustomColors.mainTextColor,
            ),
            SizedBox(height: Sizes.size10.dp),
            const ScrollableNotesBox(),
            SizedBox(height: Sizes.size10.dp),
            buildPreferences(),
            SizedBox(height: Sizes.size10.dp),
            postButton(),
          ],
        ),
      ),
    );
  }
}
