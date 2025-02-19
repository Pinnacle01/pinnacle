import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/widgets/components.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:pinnacle_main/framework/widgets/notification_tab.dart';
import 'package:pinnacle_main/framework/widgets/user_widgets.dart';
import 'package:sizer/sizer.dart';

class FrameworkDemo extends StatelessWidget {
  const FrameworkDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            // App Bar
            UserWidgets().userTopProfileBar(
              userName: UserString.userName,
              userImage: TempStrings.userImage,
              userStatus: false,
              leadingIcon: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: Sizes.size20.sp,
                color: Colors.white,
              ),
            ),

            // User Card
            UserProfileCard(
              userName: UserString.userName,
              userImage: TempStrings.userImage,
              userProfileId: UserString.userId,
            ),

            // Chat Tile
            UserWidgets().chatTile(
              userName: UserString.userName,
              userImage: TempStrings.userImage,
              usermessage: UserString.userMessage,
              userTime: DateTime.now(),
            ),

            // Travel Component
            TravelRequestComponent(
              title: UserString.travelTitle,
              startDate: DateTime.now(),
              endDate: DateTime.now(),
              price: UserString.travelPrice,
              days: 5,
              cityLocation: 'Lonavala',
            ),

            // Category
            const CategoryCard(),

            // Notification Tab
            NotificationTab(
              logoImage: TempStrings.userImage,
              count: 5,
            ),

            const CustomBottomNavigationBar(),
          ],
        ),
      ),
    );
  }
}
