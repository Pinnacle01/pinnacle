import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/widgets/user_profile/user_profile_card.dart';
import 'package:sizer/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/size.dart';

class GroupRequestCard extends StatelessWidget {
  const GroupRequestCard({
    super.key,
    required this.userName,
    required this.userId,
    required this.userImage,
    this.groupAdmissionRequest = 'Group Admission Request',
  });

  final String userName;
  final String userId;
  final String userImage;
  final String groupAdmissionRequest;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: Sizes.size20.dp,
        vertical: Sizes.size10.dp,
      ),
      decoration: BoxDecoration(
        color: CustomColors.mainBackgroundColor,
        borderRadius: BorderRadius.circular(Sizes.size28.dp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 4, 147, 84),
                child: Text(
                  groupAdmissionRequest,
                  style: TextStyle(
                      fontSize: Sizes.size15.sp, fontWeight: FontWeight.w600),
                ),
              ),
              SizedBox(height: Sizes.size6.dp),
              Padding(
                padding: const EdgeInsets.fromLTRB(35, 34, 165, 34),
                child: UserProfileCard(
                  userName: userName,
                  userImage: userImage,
                  userProfileId: userId,
                ),
              ),
            ],
          ),
          SizedBox(width: Sizes.size20.dp),
          Expanded(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(325, 14, 54, 66),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.done_outlined),
                  ),
                ),
                SizedBox(height: Sizes.size6.dp),
                Padding(
                  padding: const EdgeInsets.fromLTRB(325, 58, 54, 23.41),
                  child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.clear_rounded),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
