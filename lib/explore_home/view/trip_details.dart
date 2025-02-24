import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/general_component.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';

import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';

import 'package:pinnacle_main/explore_home/uikit/travel_request_component.dart';
import 'package:pinnacle_main/framework/widgets/user_profile/user_profile_card.dart';

class TripDetails extends StatefulWidget {
  const TripDetails({
    super.key,
  });

  @override
  State<TripDetails> createState() => _TripDetailsState();
}

class _TripDetailsState extends State<TripDetails> {
  final TextEditingController _notesController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: CustomColors.mainBackgroundColor161513,
      appBar: customAppBarWithShadow(
        titleName: 'Explore',
        backgroundColor: CustomColors.mainBackgroundColor161513,
        titleColor: CustomColors.mainTextColor,
        fontSize: Sizes.size32.sp,
        fontWeight: FontWeight.w600,
      ),
      body: Padding(
        padding: EdgeInsets.all(Sizes.size16.dp),
        child: ListView(
          children: [
            TravelRequestCard(
              title: 'Travel Title',
              startDate: DateTime.now(),
              endDate: DateTime.now(),
              price: 'Travel Price',
              days: 5,
              cityLocation: 'Lonavala',
            ),
            SizedBox(height: Sizes.size16.dp),
            UserProfileCard(
              userName: 'User Name',
              userImage: AssetPath.userImage,
              userProfileId: 'User Id',
            ),
            SizedBox(height: Sizes.size16.dp),
            GeneralComponent.requestCardDataInfo(
              title: 'Location',
              iconPath: AssetPath.locationIcon,
              iconColor: CustomColors.mainTextColor,
            ),
            SizedBox(height: Sizes.size16.dp),
            GeneralComponent.requestCardDataInfo(
              title: 'Group size',
              iconPath: AssetPath.groupSizeIcon,
              iconColor: CustomColors.mainTextColor,
            ),
            SizedBox(height: Sizes.size16.dp),
            GeneralComponent.requestCardDataInfo(
              title: 'English',
              iconPath: AssetPath.globeIcon,
              iconColor: CustomColors.mainTextColor,
            ),
            _buildNotesField(),
            SizedBox(height: Sizes.size16.dp),
            _buildPreferences(),
            SizedBox(height: Sizes.size16.dp),
            SizedBox(height: Sizes.size16.dp),
            _postButton(),
          ],
        ),
      ),
    );
  }

  Widget _buildNotesField() {
    return TextField(
      controller: _notesController,
      maxLength: 500,
      maxLines: null, // Allows dynamic height expansion
      keyboardType: TextInputType.multiline,
      decoration: InputDecoration(
        hintText: 'Notes...',
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none,
        ),
        filled: true,
        fillColor: CustomColors.cardBackgroundColor313131,
        contentPadding: EdgeInsets.all(Sizes.size12.dp),
      ),
      style: const TextStyle(color: Colors.white),
    );
  }

  Widget _buildPreferences() {
    return Row(
      children: [
        _buildPreferenceChip('No Alcohol'),
        SizedBox(width: Sizes.size10.dp),
        _buildPreferenceChip('No Smoking'),
        SizedBox(width: Sizes.size10.dp),
        _buildPreferenceChip('Bikes'),
      ],
    );
  }

  Widget _buildPreferenceChip(String label) {
    return Chip(
      label: TextWidget(
          text: label, color: CustomColors.mainBackgroundColor161513),
      backgroundColor: CustomColors.mainTextColor,
      padding: EdgeInsets.all(Sizes.size10.dp),
      labelPadding: EdgeInsets.all(Sizes.size5.dp),
    );
  }

  Widget _postButton() {
    String text = 'Post your trip ';
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.buttonBackgroundCreamColor,
      ),
      onPressed: () {},
      child:
          TextWidget(text: text, color: CustomColors.mainBackgroundColor161513),
    );
  }
}
