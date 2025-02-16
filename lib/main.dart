import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/widgets/components.dart';
import 'package:pinnacle_main/framework/widgets/notification_tab.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:pinnacle_main/framework/widgets/user_widgets.dart';
import 'package:sizer/sizer.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Sizer(
      builder: (context, orientation, screenType) {
        return MaterialApp(
          theme: ThemeData(
            fontFamily: 'Afacad',
          ),
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: CustomColors.mainBackgroundColor,
            floatingActionButton: const CustomfloatingActionButton(),
            floatingActionButtonLocation:
                FloatingActionButtonLocation.centerDocked,
            appBar: customAppBarWithShadow(
              titleName: UserString.appBarTitle,
            ),
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

                  // Explore Page Post
                  ExplorePagePost(
                    userName: UserString.userName,
                    userImage: TempStrings.userImage,
                    userCaption: UserString.userCaption,
                    userProfileId: UserString.userId,
                    uploadedImage: [
                      TempStrings.userPostImage,
                      TempStrings.userImage,
                      TempStrings.categoryImage,
                    ],
                  ),

                  // Category
                  const CategoryCard(),

                  // Notification Tab
                  NotificationTab(
                    logoImage: TempStrings.userImage,
                    count: 5,
                  ),
                  // Award Card

                  const AwardCard(),
                ],
              ),
            ),
            bottomNavigationBar: const CustomBottomNavigationBar(),
          ),
        );
      },
    );
  }
}
