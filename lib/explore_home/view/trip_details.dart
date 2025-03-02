import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/general_component.dart';
import 'package:pinnacle_main/framework/constants/enums.dart';
import 'package:pinnacle_main/framework/uikit/scrollable_textbox.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/normal_button.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:pinnacle_main/explore_home/uikit/travel_request_component.dart';
import 'package:pinnacle_main/framework/widgets/user_profile/user_profile_card.dart';

class TripDetails extends StatelessWidget {
  const TripDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final tags = [
      'No Alcohol',
      'No Smoking',
      'Biking',
    ];
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor161513,
      appBar: customAppBarWithShadow(
        titleName: GeneralString.tripDetail,
        titleColor: CustomColors.mainTextColor,
        fontSize: Sizes.size20.sp,
        isCenter: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(
            Sizes.size20.dp,
            Sizes.size10.dp,
            Sizes.size20.dp,
            Sizes.size10.dp,
          ),
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
                userName: GeneralString.userName,
                userImage: AssetPath.userImage,
                userProfileId: GeneralString.userId,
              ),
              SizedBox(height: Sizes.size10.dp),
              GeneralComponent.requestCardDataInfo(
                title: 'Location',
                iconPath: AssetPath.locationIcon,
                iconColor: CustomColors.mainTextColor,
              ),
              SizedBox(height: Sizes.size10.dp),
              GeneralComponent.requestCardDataInfo(
                title: GeneralString.groupSize,
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
              ScrollableNotesBox(
                maxLength: 500,
                hintText: 'Notes....',
                scrollController: ScrollController(),
              ),
              SizedBox(height: Sizes.size10.dp),
              Row(
                children: tags.map((tag) => _buildPreferenceChip(tag)).toList(),
              ),
              SizedBox(height: Sizes.size5.dp),
              NormalButton(
                label: TextWidget(
                  text: GeneralString.startPlanning,
                  size: Sizes.size20.sp,
                  color: CustomColors.whiteColor,
                ),
                onPress: () {},
                buttonType: ButtonType.customButton,
                radius: Sizes.size10.dp,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildPreferenceChip(String label) {
    return Container(
      margin: EdgeInsets.all(Sizes.size5.dp),
      padding: EdgeInsets.symmetric(
        vertical: Sizes.size5.dp,
        horizontal: Sizes.size15.dp,
      ),
      decoration: BoxDecoration(
        color: CustomColors.mainTextColor,
        borderRadius: BorderRadius.circular(Sizes.size5.dp),
      ),
      child: TextWidget(
        text: label,
        color: CustomColors.mainBackgroundColor161513,
        size: Sizes.size12.sp,
      ),
    );
  }
}
