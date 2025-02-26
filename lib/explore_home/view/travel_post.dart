import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/trip_details_date_picker.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';

import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_field_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_field_with_dropdown.dart';

import 'package:pinnacle_main/framework/uikit/text_widget.dart';

import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:pinnacle_main/framework/widgets/user_profile/user_profile_card.dart';

class TravelPost extends StatefulWidget {
  const TravelPost({super.key});

  @override
  State<TravelPost> createState() => _TravelPostState();
}

class _TravelPostState extends State<TravelPost> {
  @override
  Widget build(BuildContext context) {
    List<String> languages = ['English', 'Hindi'];
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor161513,
      appBar: customAppBarWithShadow(
        titleName: GeneralString.travelPost,
        backgroundColor: CustomColors.mainBackgroundColor161513,
        titleColor: CustomColors.mainTextColor,
        fontSize: Sizes.size20.sp,
        fontWeight: FontWeight.w600,
        actionIcon: [
          TextWidget(
            text: GeneralString.post,
            fontWeight: FontWeight.w600,
            color: CustomColors.whiteColor,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: Sizes.size20.dp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: Sizes.size16.dp),
              child: UserProfileCard(
                userName: GeneralString.userName,
                userImage: AssetPath.userImage,
                userProfileId: GeneralString.userId,
              ),
            ),
            TextFieldWidget(
              label: GeneralString.tripName,
              labelSize: Sizes.size16.sp,
              labelColor: CustomColors.lightBackgroundColor,
              hintText: "--",
              hintColor: CustomColors.lightBackgroundColor,
              keyboardType: TextInputType.name,
              textFieldTheme: TextFeildTheme.dark,
            ),
            SizedBox(height: Sizes.size10.dp),
            TextFieldDropDownWidget(
              initalValue: 'Pune',
              dropDownList: [],
              dropDownFunction: (value) {},
              prefixIcon: AssetPath.locationIcon,
              prefixIconColor: CustomColors.lightBackgroundColor,
              label: GeneralString.selectCity,
              labelSize: Sizes.size16.sp,
              labelColor: CustomColors.lightBackgroundColor,
              hintText: GeneralString.enterLocation,
              hintColor: CustomColors.lightBackgroundColor,
              keyboardType: TextInputType.name,
            ),
            SizedBox(height: Sizes.size10.dp),
            buildDateSelector(),
            SizedBox(height: Sizes.size10.dp),
            TextFieldWidget(
              label: GeneralString.budget,
              labelSize: Sizes.size16.sp,
              labelColor: CustomColors.lightBackgroundColor,
              hintText: "--",
              hintColor: CustomColors.lightBackgroundColor,
              keyboardType: TextInputType.emailAddress,
              textFieldTheme: TextFeildTheme.dark,
              prefixIcon: AssetPath.crossIcon,
            ),
            SizedBox(height: Sizes.size10.dp),
            TextFieldWidget(
                label: GeneralString.groupSize,
                labelSize: Sizes.size16.sp,
                labelColor: CustomColors.lightBackgroundColor,
                hintText: GeneralString.preferredGroupSize,
                hintColor: CustomColors.lightBackgroundColor,
                textFieldTheme: TextFeildTheme.dark),
            SizedBox(height: Sizes.size10.dp),
            Row(
              children:
                  languages.map((tag) => _buildPreferenceChip(tag)).toList(),
            ),
          ],
        ),
      )),
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
