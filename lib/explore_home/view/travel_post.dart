import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/trip_details_date_picker.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';

import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
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
            _commonTextWidget(label: GeneralString.tripName, hintText: "--"),
            SizedBox(height: Sizes.size10.dp),
            TextFieldDropDownWidget(
              initalValue: 'Pune',
              dropDownList: const ['Mumbai', 'yehh'],
              dropDownFunction: (value) {},
              prefixIcon: AssetPath.locationIcon,
              prefixIconColor: CustomColors.lightBackgroundColor,
              label: GeneralString.selectCity,
              labelSize: Sizes.size16.sp,
              labelColor: CustomColors.lightBackgroundColor,
              hintText: GeneralString.enterLocation,
              hintColor: CustomColors.lightBackgroundColor,
            ),
            SizedBox(height: Sizes.size10.dp),
            buildDateSelector(),
            SizedBox(height: Sizes.size10.dp),
            _commonTextWidget(
              label: GeneralString.budget,
              hintText: "--",
              prefixIcon: AssetPath.walletMoneyIcon,
            ),
            SizedBox(height: Sizes.size10.dp),
            _commonTextWidget(
              label: GeneralString.groupSize,
              hintText: GeneralString.preferredGroupSize,
            ),
            SizedBox(height: Sizes.size10.dp),
            Row(
              children: languages
                  .map((tag) => SmallPreferenceButton(
                        label: tag,
                        onTap: () {},
                      ))
                  .toList(),
            ),
          ],
        ),
      )),
    );
  }

  Widget _commonTextWidget({
    required String label,
    required String hintText,
    String? prefixIcon,
  }) =>
      TextFieldWidget(
        label: label,
        labelSize: Sizes.size16.sp,
        labelColor: CustomColors.lightBackgroundColor,
        hintText: hintText,
        hintColor: CustomColors.lightBackgroundColor,
        textFieldTheme: TextFeildTheme.dark,
        prefixIcon: prefixIcon,
        prefixSize: Sizes.size20.sp,
      );
}
