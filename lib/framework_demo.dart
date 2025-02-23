import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/general_component.dart';
import 'package:pinnacle_main/explore_home/uikit/neraby_attraction_small_card.dart';
import 'package:pinnacle_main/explore_home/uikit/single_category_card.dart';
import 'package:pinnacle_main/explore_home/uikit/travel_request_component.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/uikit/text_field_widget.dart';
import 'package:pinnacle_main/framework/widgets/common_component/group_request_card.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/floating_action_button.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:pinnacle_main/framework/widgets/user_profile/user_profile_card.dart';
import 'package:pinnacle_main/framework/widgets/user_widgets.dart';

class FrameworkDemo extends StatelessWidget {
  const FrameworkDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWithShadow(
        titleName: GeneralString.appBarTitle,
      ),
      floatingActionButton: CustomfloatingActionButton(
        onPress: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: CustomColors.mainBackgroundColor161513,
      bottomNavigationBar: const CustomBottomNavigationBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // App Bar
            UserWidgets.userTopProfileBar(
              userName: GeneralString.userName,
              userImage: AssetPath.userImage,
              userStatus: false,
            ),

            // User Card
            UserProfileCard(
              userName: GeneralString.userName,
              userImage: AssetPath.userImage,
              userProfileId: GeneralString.userId,
            ),

            // Chat Tile
            UserWidgets.chatTile(
              userName: GeneralString.userName,
              userImage: AssetPath.userImage,
              usermessage: GeneralString.userMessage,
              userTime: DateTime.now(),
            ),

            // Travel Component
            TravelRequestCard(
              title: GeneralString.travelTitle,
              startDate: DateTime.now(),
              endDate: DateTime.now(),
              price: GeneralString.travelPrice,
              days: 5,
              cityLocation: 'Lonavala',
            ),

            // Category
            SingleCategoryCard(
              categoryImage: AssetPath.categoryImage,
            ),

            // Group Request Card
            GroupRequestCard(
              userName: GeneralString.userName,
              userId: GeneralString.userId,
              userImage: AssetPath.userImage,
            ),

            // Settings Tab
            UserWidgets.settingsTab(
              label: "Setting",
              iconPath: AssetPath.userSquareIcon,
              onTap: () {},
            ),

            TextFieldWidget(
              label: "Email",
              hintText: "Enter your email",
              prefixIcon: AssetPath.alarmIcon,
              keyboardType: TextInputType.emailAddress,
              textFieldTheme: TextFeildTheme.dark,
            ),

            // Budget Text Field
            const TextFieldWidget(
              label: "Budget",
              hintText: "2000",
              keyboardType: TextInputType.number,
              textFieldTheme: TextFeildTheme.light,
            ),

            // Nearby Attraction Small Card
            NerabyAttractionSmallCard(
              imagePath: AssetPath.loadingLocationImage,
              locationName: '',
              distance: '',
            ),

            GeneralComponent.requestCardDataInfo(
              iconPath: AssetPath.locationIcon,
              title: 'Location',
            )
          ],
        ),
      ),
    );
  }
}
