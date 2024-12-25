import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/general_constants.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/general_widgets.dart';
import 'package:pinnacle_main/framework/widgets/tool_bar_widgets.dart';
import 'package:carousel_slider/carousel_slider.dart';

class TravelRequestComponent extends StatelessWidget {
  const TravelRequestComponent({
    super.key,
    required this.title,
    required this.startDate,
    required this.endDate,
    required this.price,
    required this.days,
    required this.cityLocation,
  });

  final String title;
  final DateTime startDate;
  final DateTime endDate;
  final String price;
  final int days;
  final String cityLocation;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(Radius.medium),
            color: CustomColors.cardBackgroundColor,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: Image.asset(
                            TempStrings.userPostImage,
                          ).image,
                          fit: BoxFit.cover),
                      borderRadius: BorderRadius.circular(Radius.medium),
                    ),
                    height: 180,
                  ),
                  Positioned(
                    bottom: 10,
                    left: 10,
                    child: curvedBox(
                      cityLocation,
                      icon: Icons.location_on,
                    ),
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Radius.medium,
                  right: Radius.medium,
                  top: Sizes.size10,
                ),
                child: TextWidget(
                  text: title,
                  color: Colors.white,
                  size: Sizes.size20.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Radius.medium),
                child: TextWidget(
                  text: startDate.month == endDate.month
                      ? '${month[startDate.month - 1]} ${startDate.day} - ${endDate.day} '
                      : '${month[startDate.month - 1]} ${startDate.day} - ${month[endDate.month - 1]} ${endDate.day}',
                  color: Colors.white,
                  size: Sizes.size16.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: Radius.medium),
                child: TextWidget(
                  text: '₹$price',
                  color: Colors.white,
                  size: Sizes.size16.sp,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: Radius.medium,
                  right: Radius.medium,
                  bottom: Sizes.size10,
                ),
                child: Row(
                  children: [
                    IconWidget(
                      icon: Icons.alarm_sharp,
                      color: CustomColors.buttonBackgroundCreamColor,
                      size: Sizes.size15.sp,
                    ),
                    TextWidget(
                      text: '$days Days Remaining !',
                      color: CustomColors.buttonBackgroundCreamColor,
                      size: Sizes.size15.sp,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}

class ExplorePagePost extends StatelessWidget {
  final String userName;
  final String userImage;
  final String userCaption;
  final String userProfileId;
  final List<String> uploadedImage;

  const ExplorePagePost({
    super.key,
    required this.userName,
    required this.userImage,
    required this.userCaption,
    required this.userProfileId,
    required this.uploadedImage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          child: Container(
            height: 35.sp,
            padding: EdgeInsets.symmetric(
              horizontal: Sizes.size20,
            ),
            margin: EdgeInsets.symmetric(
              vertical: Sizes.size4,
            ),
            decoration: BoxDecoration(
              color: CustomColors.mainBackgroundColor,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage(userImage),
                  radius: Sizes.size21.sp,
                  backgroundColor: Colors.transparent,
                ),
                SizedBox(width: Sizes.size15),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidget(
                        text: userName,
                        color: Colors.white,
                        size: Sizes.size19.sp,
                        type: FontWeight.bold,
                      ),
                      TextWidget(
                        text: '@$userProfileId',
                        color: CustomColors.lightBackgroundColor,
                        size: Sizes.size16.sp,
                      ),
                    ],
                  ),
                ),
                IconWidget(
                  icon: Icons.menu,
                  size: Sizes.size22.sp,
                  color: Colors.white,
                ),
              ],
            ),
          ),
        ),
        InkWell(
          onTap: () {
            print('object');
          },
          child: Container(
            color: CustomColors.mainBackgroundColor,
            child: Column(
              children: [
                CarouselSlider(
                  items: uploadedImage.map((item) {
                    return Container(
                      decoration: BoxDecoration(
                          image: DecorationImage(
                        image: Image.asset(
                          item,
                        ).image,
                        fit: BoxFit.cover,
                      )),
                    );
                  }).toList(),
                  options: CarouselOptions(
                    autoPlay: true,
                    autoPlayCurve: Curves.fastOutSlowIn,
                    enableInfiniteScroll: false,
                    autoPlayAnimationDuration:
                        const Duration(milliseconds: 800),
                    viewportFraction: 1,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10,
                      ),
                      child: TextWidget(
                        text: userName,
                        color: CustomColors.buttonBackgroundCreamColor,
                        size: Sizes.size18.sp,
                        type: FontWeight.bold,
                      ),
                    ),
                    TextWidget(
                      text: userCaption,
                      color: Colors.white,
                      size: Sizes.size16.sp,
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    top: 5,
                    left: 20,
                    right: 20,
                    bottom: 10,
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(Radius.medium),
                  ),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: TextEditingController(),
                          decoration: InputDecoration(
                            hintText: GeneralString.commentWrite,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: Icon(
                          Icons.send,
                          color: Colors.green,
                          size: Sizes.size25,
                        ),
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          IconWithTextWidget(icon: Icons.favorite, value: 1),
                          SizedBox(
                            width: 20,
                          ),
                          IconWithTextWidget(
                              icon: Icons.mode_comment_rounded, value: 4),
                        ],
                      ),
                      IconButtonWidget(
                        pressedFunction: () {},
                        icon: Icons.bookmark_border,
                        size: Sizes.size20.sp,
                        color: Colors.white,
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: Image.asset(
                  TempStrings.categoryImage,
                ).image,
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(Radius.medium),
            ),
            height: 210,
          ),
          Positioned(
            bottom: 10,
            left: 15,
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 6, horizontal: 30),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: TextWidget(
                text: TempStrings.biking,
                size: Sizes.size18.sp,
                type: FontWeight.bold,
              ),
            ),
          )
        ],
      ),
    );
  }
}
