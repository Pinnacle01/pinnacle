import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/general_component.dart';
import 'package:pinnacle_main/framework/uikit/text_field_with_dropdown.dart';
import 'package:pinnacle_main/framework/widgets/expense/add_user_expense.dart';
import 'package:pinnacle_main/framework/widgets/expense/single_user_expense.dart';
import 'package:pinnacle_main/framework/widgets/neraby_attraction_small_card.dart';
import 'package:pinnacle_main/framework/uikit/scrollable_textbox.dart';
import 'package:pinnacle_main/explore_home/uikit/single_category_card.dart';
import 'package:pinnacle_main/explore_home/uikit/travel_request_component.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/enums.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_field_widget.dart';
import 'package:pinnacle_main/framework/widgets/common_component/group_request_card.dart';
import 'package:pinnacle_main/framework/widgets/expense/single_expense.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/floating_action_button.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:pinnacle_main/framework/widgets/user_profile/user_profile_card.dart';
import 'package:pinnacle_main/framework/widgets/user_widgets.dart';

class FrameworkDemo extends StatefulWidget {
  const FrameworkDemo({super.key});

  @override
  State<FrameworkDemo> createState() => _FrameworkDemoState();
}

class _FrameworkDemoState extends State<FrameworkDemo> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBarWithShadow(
        titleName: GeneralString.appBarTitle,
      ),
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: CustomColors.mainBackgroundColor161513,
      bottomNavigationBar: const CustomBottomNavigationBar(
        currentIndex: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
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
              onTap: () {},
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

            // Dark theme Text Field Widget
            TextFieldWidget(
              label: "Email",
              hintText: "Enter your email",
              prefixIcon: AssetPath.alarmIcon,
              keyboardType: TextInputType.emailAddress,
              textFieldTheme: TextFeildTheme.dark,
            ),

            // Light Theme Text Field Widget
            const TextFieldWidget(
              label: "Budget",
              hintText: "2000",
              keyboardType: TextInputType.number,
              textFieldTheme: TextFeildTheme.light,
            ),

            // Nearby Attraction Small Card
            SizedBox(
              height: Sizes.size210.dp,
              child: ListView(
                padding: EdgeInsets.symmetric(
                  horizontal: Sizes.size10.dp,
                  vertical: Sizes.size5.dp,
                ),
                scrollDirection: Axis.horizontal,
                children: [
                  NerabyAttractionSmallCard(
                    imagePath: AssetPath.loadingLocationImage,
                    locationName: 'Lonavala',
                    distance: '2.5',
                    onTap: () {},
                  ),
                  NerabyAttractionSmallCard(
                    imagePath: AssetPath.loadingLocationImage,
                    locationName: 'Lonavala',
                    distance: '2.5',
                    onTap: () {},
                  ),
                  NerabyAttractionSmallCard(
                    imagePath: AssetPath.loadingLocationImage,
                    locationName: 'Lonavala',
                    distance: '2.5',
                    onTap: () {},
                  ),
                ],
              ),
            ),

            // Request Card
            GeneralComponent.requestCardDataInfo(
              iconPath: AssetPath.locationIcon,
              title: 'Location',
            ),

            // Single Expense
            SingleExpense(
              expenseType: ExpenseType.fuel,
              expenseTitle: 'Taxi Ride',
              expenseDate: DateTime.now(),
              expenseCost: '500',
              paidBy: 'Yash',
            ),

            // Note Widget
            ScrollableNotesBox(
              maxLength: 500,
              hintText: 'Notes...',
              scrollController: ScrollController(),
            ),

            // Drop Down Widget Text Field
            TextFieldDropDownWidget(
              label: 'Select State',
              hintText: 'hintText',
              dropDownList: const [
                'Pune',
                'Maha',
              ],
              dropDownFunction: (String? value) {},
              initalValue: '--',
            ),

            // Add User Expense
            ExpenseSplit(
              userImage: AssetPath.userImage,
              userName: 'Yash Vaishnav',
              value: isSelected,
              expenseVariant: ExpenseVariant.equal,
              onChange: (value) {
                isSelected = value;
                setState(() {});
              },
            ),
            ExpenseSplit(
              userImage: AssetPath.userImage,
              userName: 'Yash Vaishnav',
              expenseVariant: ExpenseVariant.percentage,
              controller: TextEditingController(),
            ),
            ExpenseSplit(
              userImage: AssetPath.userImage,
              userName: 'Yash Vaishnav',
              expenseVariant: ExpenseVariant.money,
              controller: TextEditingController(),
            ),

            UnpaidUserExpense(
              rupees: 500,
              unpaidExpense: 2,
              userName: GeneralString.userName,
              isOwned: true,
            ),
            const SizedBox(height: 100),
          ],
        ),
      ),
    );
  }
}
