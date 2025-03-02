import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/enums.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/services/route_navigator.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/normal_button.dart';
import 'package:pinnacle_main/framework/uikit/small_preference_button.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:pinnacle_main/framework/widgets/user_widgets.dart';
import 'package:pinnacle_main/profile%20section/uikit/profile_pic.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor161513,
      appBar: customAppBarWithShadow(
        titleName: GeneralString.profile,
        titleColor: CustomColors.mainTextColor,
        fontSize: Sizes.size20.sp,
        fontWeight: FontWeight.bold,
        isCenter: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: Sizes.size20.dp),
              child: Center(
                child: ProfilePic(
                  userId: GeneralString.userId,
                  username: GeneralString.userName,
                  isEditable: false,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                vertical: Sizes.size10.dp,
                horizontal: Sizes.size20.dp,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: NormalButton(
                      buttonType: ButtonType.normal,
                      onPress: () => {},
                      label: TextWidget(
                        text: GeneralString.upcomingTrip,
                        color: CustomColors.whiteColor,
                      ),
                      bgColor: CustomColors.darkgreyButtonColor,
                    ),
                  ),
                  SizedBox(
                    width: Sizes.size25.dp,
                  ),
                  Expanded(
                    child: NormalButton(
                      buttonType: ButtonType.buttonWithIcon,
                      onPress: () => {
                        RouteNavigator.push(
                          context,
                          '/profileSection/editProfile',
                        )
                      },
                      label: TextWidget(
                        text: GeneralString.edit,
                        color: CustomColors.whiteColor,
                      ),
                      icon: IconWidget(path: AssetPath.editIcon),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: Sizes.size10.dp),
              height: Sizes.size36.dp,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: Sizes.size8.dp),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Row(
                    children: [
                      SmallPreferenceButton(
                        defaultBgColor:
                            CustomColors.navCardBackgroundColor3B3B3B,
                        label: 'Hiking',
                        onTap: () {},
                        isEnable: false,
                      ),
                      SizedBox(width: Sizes.size10.dp),
                    ],
                  );
                },
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: Sizes.size10.dp,
                vertical: Sizes.size15.dp,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  TextWidget(
                    text: GeneralString.totalTripMade,
                    size: Sizes.size24.sp,
                    color: CustomColors.whiteColor,
                    fontWeight: FontWeight.w500,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: Sizes.size10.dp,
                    ),
                    child: TextWidget(
                      alignment: TextAlign.start,
                      text: '50 ${GeneralString.trips}',
                      size: Sizes.size14.sp,
                      color: CustomColors.greyChatColor,
                    ),
                  ),
                  SizedBox(height: Sizes.size10.dp),
                  TextWidget(
                    alignment: TextAlign.start,
                    text: GeneralString.settings,
                    size: Sizes.size28.sp,
                    color: CustomColors.mainTextColor,
                    fontWeight: FontWeight.bold,
                  ),
                  UserWidgets.settingsTab(
                    label: GeneralString.account,
                    iconPath: AssetPath.userSquareIcon,
                    onTap: () {},
                  ),
                  UserWidgets.settingsTab(
                    label: GeneralString.notification,
                    iconPath: AssetPath.notificationIcon,
                    onTap: () {},
                  ),
                  UserWidgets.settingsTab(
                    label: GeneralString.privacy,
                    iconPath: AssetPath.privacyIcon,
                    onTap: () {},
                  ),
                  UserWidgets.settingsTab(
                    label: GeneralString.helpAndSupport,
                    iconPath: AssetPath.globeIcon,
                    onTap: () {},
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
