

// class ExplorePagePost extends StatelessWidget {
//   final String userName;
//   final String userImage;
//   final String userCaption;
//   final String userProfileId;
//   final List<String> uploadedImage;
//   const ExplorePagePost({
//     super.key,
//     required this.userName,
//     required this.userImage,
//     required this.userCaption,
//     required this.userProfileId,
//     required this.uploadedImage,
//   });
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         InkWell(
//           child: Container(
//             height: 35.sp,
//             padding: EdgeInsets.symmetric(
//               horizontal: Sizes.size20,
//             ),
//             margin: EdgeInsets.symmetric(
//               vertical: Sizes.size4,
//             ),
//             decoration: BoxDecoration(
//               color: CustomColors.mainBackgroundColor,
//             ),
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.center,
//               children: [
//                 CircleAvatar(
//                   backgroundImage: AssetImage(userImage),
//                   radius: Sizes.size21.sp,
//                   backgroundColor: Colors.transparent,
//                 ),
//                 SizedBox(width: Sizes.size15),
//                 Expanded(
//                   child: Column(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       TextWidget(
//                         text: userName,
//                         color: Colors.white,
//                         size: Sizes.size19.sp,
//                         type: FontWeight.bold,
//                       ),
//                       TextWidget(
//                         text: '@$userProfileId',
//                         color: CustomColors.lightBackgroundColor,
//                         size: Sizes.size16.sp,
//                       ),
//                     ],
//                   ),
//                 ),
//                 IconWidget(
//                   icon: Icons.menu,
//                   size: Sizes.size22.sp,
//                   color: Colors.white,
//                 ),
//               ],
//             ),
//           ),
//         ),
//         InkWell(
//           onTap: () {
//           },
//           child: Container(
//             color: CustomColors.mainBackgroundColor,
//             child: Column(
//               children: [
//                 CarouselSlider(
//                   items: uploadedImage.map(
//                     (item) {
//                       return Container(
//                         decoration: BoxDecoration(
//                           image: DecorationImage(
//                             image: Image.asset(
//                               item,
//                             ).image,
//                             fit: BoxFit.cover,
//                           ),
//                         ),
//                       );
//                     },
//                   ).toList(),
//                   options: CarouselOptions(
//                     autoPlay: true,
//                     autoPlayCurve: Curves.fastOutSlowIn,
//                     enableInfiniteScroll: false,
//                     autoPlayAnimationDuration:
//                         const Duration(milliseconds: 800),
//                     viewportFraction: 1,
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 15,
//                         vertical: 10,
//                       ),
//                       child: TextWidget(
//                         text: userName,
//                         color: CustomColors.buttonBackgroundCreamColor,
//                         size: Sizes.size18.sp,
//                         type: FontWeight.bold,
//                       ),
//                     ),
//                     TextWidget(
//                       text: userCaption,
//                       color: Colors.white,
//                       size: Sizes.size16.sp,
//                     )
//                   ],
//                 ),
//                 Container(
//                   margin: const EdgeInsets.only(
//                     top: 5,
//                     left: 20,
//                     right: 20,
//                     bottom: 10,
//                   ),
//                   padding: const EdgeInsets.symmetric(horizontal: 15),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(CircularRadius.medium),
//                   ),
//                   child: Row(
//                     children: [
//                       Expanded(
//                         child: TextField(
//                           controller: TextEditingController(),
//                           decoration: InputDecoration(
//                             hintText: GeneralString.commentWrite,
//                           ),
//                         ),
//                       ),
//                       IconButton(
//                         onPressed: () {},
//                         icon: Icon(
//                           Icons.send,
//                           color: Colors.green,
//                           size: Sizes.size25,
//                         ),
//                         color: Colors.green,
//                       )
//                     ],
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 20),
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       const Row(
//                         children: [
//                           IconWithTextWidget(icon: Icons.favorite, value: 1),
//                           SizedBox(
//                             width: 20,
//                           ),
//                           IconWithTextWidget(
//                               icon: Icons.mode_comment_rounded, value: 4),
//                         ],
//                       ),
//                       IconButtonWidget(
//                         pressedFunction: () {},
//                         icon: Icons.bookmark_border,
//                         size: Sizes.size20.sp,
//                         color: Colors.white,
//                       ),
//                     ],
//                   ),
//                 )
//               ],
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }



// class AwardCard extends StatelessWidget {
//   const AwardCard({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       decoration: BoxDecoration(
//         color: CustomColors.cardBackgroundColor,
//         borderRadius: BorderRadius.circular(CircularRadius.medium),
//       ),
//       width: 200,
//       height: 300,
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           Container(
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.only(
//                 topLeft: Radius.circular(CircularRadius.medium),
//                 topRight: Radius.circular(CircularRadius.medium),
//               ),
//               image: DecorationImage(
//                 image: Image.asset(TempStrings.awardImage).image,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             height: 230,
//           ),
//           TextWidget(
//             text: GeneralString.awardTitle,
//             color: CustomColors.buttonBackgroundCreamColor,
//             size: Sizes.size17.sp,
//             alignment: TextAlign.center,
//           ),
//           TextWidget(
//             text: GeneralString.awardCaption,
//             size: Sizes.size14.sp,
//             color: Colors.white,
//             alignment: TextAlign.center,
//           ),
//         ],
//       ),
//     );
//   }
// }
