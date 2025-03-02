import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/enums.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/normal_button.dart';
import 'package:pinnacle_main/framework/uikit/small_preference_button.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:pinnacle_main/framework/widgets/user_widgets.dart';
import 'package:pinnacle_main/profile%20section/uikit/profile_pic.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.mainBackgroundColor161513,
        appBar: customAppBarWithShadow(
          titleName: GeneralString.profile,
          titleColor: CustomColors.mainTextColor,
          fontSize: Sizes.size20.sp,
          isCenter: true,
        ),
        body: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
              padding: EdgeInsets.only(top: Sizes.size20.dp),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ProfilePic(),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.all(Sizes.size10.dp),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  NormalButton(
                      buttonType: ButtonType.normal,
                      onPress: () => {},
                      label: TextWidget(
                        text: 'Upcoming Trips',
                        color: CustomColors.whiteColor,
                      ),
                      bgColor: CustomColors.darkgreyButtonColor),
                  NormalButton(
                    buttonType: ButtonType.backIconButton,
                    onPress: () => {},
                    label: TextWidget(
                      text: 'Edit',
                      color: CustomColors.whiteColor,
                    ),
                    icon: const Icon(Icons.edit_note_outlined),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Sizes.size36.dp,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: Sizes.size8.dp),
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SmallPreferenceButton(label: 'Hiking', onTap: () {}),
                      SizedBox(width: Sizes.size10.dp),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Sizes.size15.dp,
                  top: Sizes.size20.dp,
                  bottom: Sizes.size5.dp),
              child: TextWidget(
                  alignment: TextAlign.start,
                  text: 'Total Trips Made',
                  size: Sizes.size24.sp,
                  color: CustomColors.whiteColor,
                  fontWeight: FontWeight.w500),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Sizes.size15.dp, bottom: Sizes.size5.dp),
              child: TextWidget(
                  alignment: TextAlign.start,
                  text: '50 Trips',
                  size: Sizes.size16.sp,
                  color: CustomColors.mainTextColor,
                  fontWeight: FontWeight.w300),
            ),
            Padding(
              padding: EdgeInsets.only(
                  left: Sizes.size15.dp,
                  top: Sizes.size10.dp,
                  bottom: Sizes.size5.dp),
              child: TextWidget(
                  alignment: TextAlign.start,
                  text: 'Settings',
                  size: Sizes.size24.sp,
                  color: CustomColors.mainTextColor,
                  fontWeight: FontWeight.w500),
            ),
            UserWidgets.settingsTab(
                label: "Account",
                iconPath: AssetPath.userSquareIcon,
                onTap: () {},
                backgroundColor: CustomColors.mainBackgroundColor161513),
            UserWidgets.settingsTab(
                label: "Notification",
                iconPath: AssetPath.notificationIcon,
                onTap: () {},
                backgroundColor: CustomColors.mainBackgroundColor161513),
            UserWidgets.settingsTab(
                label: "Privacy",
                iconPath: AssetPath.privacyIcon,
                onTap: () {},
                backgroundColor: CustomColors.mainBackgroundColor161513),
            UserWidgets.settingsTab(
                label: "Help And Support",
                iconPath: AssetPath.globeIcon,
                onTap: () {},
                backgroundColor: CustomColors.mainBackgroundColor161513)
          ]),
        ));
  }
}
