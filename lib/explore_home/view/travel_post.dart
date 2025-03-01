import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/date_picker.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';

import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/icon_button_widget.dart';
import 'package:pinnacle_main/framework/uikit/scrollable_textbox.dart';
import 'package:pinnacle_main/framework/uikit/small_preference_button.dart';
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
    List<String> tags = ['Hiking', 'Camping', 'Trekking', 'Biking'];
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor161513,
      appBar: customAppBarWithShadow(
        isCenter: true,
        titleName: GeneralString.travelPost,
        backgroundColor: CustomColors.mainBackgroundColor161513,
        titleColor: CustomColors.mainTextColor,
        fontSize: Sizes.size20.sp,
        fontWeight: FontWeight.w600,
        actionIcon: [
          Padding(
            padding: EdgeInsets.only(right: Sizes.size10.dp),
            child: TextWidget(
              text: GeneralString.post,
              fontWeight: FontWeight.w600,
              color: CustomColors.whiteColor,
            ),
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
              hintText: "--",
              textFieldTheme: TextFeildTheme.dark,
              fieldTextColor: CustomColors.whiteColor,
            ),
            SizedBox(height: Sizes.size10.dp),
            TextFieldDropDownWidget(
              initalValue: 'Pune',
              dropDownList: const ['Mumbai', 'yehh'],
              dropDownFunction: (value) {},
              prefixIcon: AssetPath.locationIcon,
              prefixIconColor: CustomColors.lightBackgroundColor9A9A9A,
              label: GeneralString.selectCity,
              labelSize: Sizes.size16.sp,
              labelColor: CustomColors.lightBackgroundColor9A9A9A,
              hintText: GeneralString.enterLocation,
              hintColor: CustomColors.lightBackgroundColor9A9A9A,
            ),
            SizedBox(height: Sizes.size10.dp),
            CustomDatePicker(
              label: GeneralString.travelDates,
              prefixIcon: AssetPath.calendarIcon,
            ),
            SizedBox(height: Sizes.size10.dp),
            TextFieldWidget(
              label: GeneralString.budget,
              hintText: "--",
              prefixIcon: AssetPath.walletMoneyIcon,
              textFieldTheme: TextFeildTheme.dark,
              fieldTextColor: CustomColors.whiteColor,
            ),
            SizedBox(height: Sizes.size10.dp),
            TextFieldWidget(
              label: GeneralString.groupSize,
              hintText: GeneralString.preferredGroupSize,
              textFieldTheme: TextFeildTheme.dark,
              fieldTextColor: CustomColors.whiteColor,
            ),
            SizedBox(height: Sizes.size10.dp),
            TextWidget(
              text: GeneralString.languagePreferrance,
              color: CustomColors.lightBackgroundColor9A9A9A,
              size: Sizes.size16.sp,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(height: Sizes.size7.dp),
            Row(
              children: languages
                  .map((tag) => SmallPreferenceButton(
                        label: tag,
                        onTap: () {},
                      ))
                  .toList(),
            ),
            SizedBox(height: Sizes.size10.dp),
            TextFieldWidget(
              label: GeneralString.tags,
              hintText: "Add Tags",
              prefixIcon: AssetPath.plusIcon,
              textFieldTheme: TextFeildTheme.dark,
              fieldTextColor: CustomColors.whiteColor,
            ),
            SizedBox(height: Sizes.size7.dp),
            SizedBox(
              height: Sizes.size35.sp,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: tags
                    .map((tag) => SmallPreferenceButton(
                          label: tag,
                          onTap: () {},
                        ))
                    .toList(),
              ),
            ),
            SizedBox(height: Sizes.size10.dp),
            TextWidget(
              text: GeneralString.additionalNotes,
              fontWeight: FontWeight.bold,
              color: CustomColors.lightBackgroundColor9A9A9A,
              size: Sizes.size16.sp,
            ),
            SizedBox(height: Sizes.size10.dp),
            ScrollableNotesBox(
              hintText: 'Write some requirements for your trip...',
              scrollController: ScrollController(),
              bgColor: CustomColors.navCardBackgroundColor222222,
            ),
            SizedBox(height: Sizes.size10.dp),
            Padding(
              padding: EdgeInsets.only(left: Sizes.size10.dp),
              child: Row(
                children: [
                  IconButtonWidget(
                    path: AssetPath.cameraIcon,
                    size: Sizes.size20.sp,
                    onPress: () {},
                    color: CustomColors.lightBackgroundColor9A9A9A,
                  ),
                  SizedBox(width: Sizes.size20.dp),
                  IconButtonWidget(
                    path: AssetPath.imageGalleryIcon,
                    size: Sizes.size20.sp,
                    onPress: () {},
                    color: CustomColors.lightBackgroundColor9A9A9A,
                  ),
                ],
              ),
            ),
            SizedBox(height: Sizes.size15.dp),
          ],
        ),
      )),
    );
  }
}
