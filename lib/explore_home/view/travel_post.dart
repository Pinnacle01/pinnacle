import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/trip_details_date_picker.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';

import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/scrollable_textbox.dart';
import 'package:pinnacle_main/framework/uikit/text_field_widget.dart';

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
            color: CustomColors.whiteShadeEBEDED,
          )
        ],
      ),
      body: SingleChildScrollView(
          child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size10.dp,
                Sizes.size20.dp, Sizes.size15.dp),
            child: UserProfileCard(
              userName: GeneralString.userName,
              userImage: AssetPath.userImage,
              userProfileId: GeneralString.userId,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size10.dp,
                Sizes.size20.dp, Sizes.size15.dp),
            child: TextFieldWidget(
              label: GeneralString.travelTitle,
              labelSize: Sizes.size16.sp,
              labelColor: CustomColors.lightBackgroundColor,
              hintText: "--",
              hintColor: CustomColors.lightBackgroundColor,
              keyboardType: TextInputType.emailAddress,
              textFieldTheme: TextFeildTheme.dark,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size10.dp,
                Sizes.size20.dp, Sizes.size15.dp),
            child: TextFieldWidget(
                prefixIcon: AssetPath.locationIcon,
                prefixIconColor: CustomColors.lightBackgroundColor,
                label: GeneralString.selectCity,
                labelSize: Sizes.size16.sp,
                labelColor: CustomColors.lightBackgroundColor,
                hintText: GeneralString.enterLocation,
                hintColor: CustomColors.lightBackgroundColor,
                keyboardType: TextInputType.emailAddress,
                textFieldTheme: TextFeildTheme.dark),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size10.dp,
                Sizes.size20.dp, Sizes.size15.dp),
            child: buildDateSelector(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size10.dp,
                Sizes.size20.dp, Sizes.size15.dp),
            child: TextFieldWidget(
              label: GeneralString.budget,
              labelSize: Sizes.size16.sp,
              labelColor: CustomColors.lightBackgroundColor,
              hintText: "--",
              hintColor: CustomColors.lightBackgroundColor,
              keyboardType: TextInputType.emailAddress,
              textFieldTheme: TextFeildTheme.dark,
              prefixIcon: AssetPath.walletMoneyIcon,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size10.dp,
                Sizes.size20.dp, Sizes.size15.dp),
            child: TextFieldWidget(
                label: GeneralString.groupSize,
                labelSize: Sizes.size16.sp,
                labelColor: CustomColors.lightBackgroundColor,
                hintText: GeneralString.preferredGroupSize,
                hintColor: CustomColors.lightBackgroundColor,
                textFieldTheme: TextFeildTheme.dark),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size10.dp,
                Sizes.size20.dp, Sizes.size6.dp),
            child: TextWidget(
              text: GeneralString.preferredLanguage,
              size: Sizes.size16.sp,
              fontWeight: FontWeight.w600,
              color: CustomColors.lightBackgroundColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size4.dp,
                Sizes.size20.dp, Sizes.size15.dp),
            child: _buildLanguagePreferences(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size10.dp,
                Sizes.size20.dp, Sizes.size5.dp),
            child: TextFieldWidget(
              label: GeneralString.tags,
              labelSize: Sizes.size16.sp,
              labelColor: CustomColors.lightBackgroundColor,
              hintText: GeneralString.addTags,
              hintColor: CustomColors.lightBackgroundColor,
              keyboardType: TextInputType.emailAddress,
              textFieldTheme: TextFeildTheme.dark,
              prefixIcon: AssetPath.plusIcon,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size5.dp,
                Sizes.size20.dp, Sizes.size15.dp),
            child: _buildLanguagePreferences(),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size10.dp,
                Sizes.size20.dp, Sizes.size5.dp),
            child: TextWidget(
              text: GeneralString.additionalNotes,
              color: CustomColors.lightBackgroundColor,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size5.dp,
                Sizes.size20.dp, Sizes.size15.dp),
            child: ScrollableNotesBox(
              maxLength: 500,
              hintText: GeneralString.additionalNotesData,
            ),
          ),
          Padding(
            padding: EdgeInsets.fromLTRB(Sizes.size20.dp, Sizes.size5.dp,
                Sizes.size20.dp, Sizes.size15.dp),
            child: TextWidget(text: AssetPath.cameraIcon),
          ),
        ],
      )),
    );
  }

  Widget _buildLanguagePreferences() {
    return Row(
      children: [
        _buildChip('English', selected: true),
        SizedBox(width: Sizes.size10.dp),
        _buildChip('Hindi', selected: false),
      ],
    );
  }

  Widget _buildChip(String label, {bool selected = false}) {
    return Chip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Sizes.size5.dp),
      ),
      label: Text(label,
          style: TextStyle(
              color: selected
                  ? CustomColors.mainTextColor
                  : CustomColors.mainTextColor)),
      backgroundColor: selected
          ? CustomColors.buttonBackgroundCreamColor
          : CustomColors.navCardBackgroundColor222222,
    );
  }
}
