import 'package:flutter/material.dart';
import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/constants.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/constants/strings.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/services/route_navigator.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';

class CustomFloatingActionButton extends StatelessWidget {
  const CustomFloatingActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        final overlay = Overlay.of(context);

        final RenderBox button = context.findRenderObject() as RenderBox;
        final Offset position = button.localToGlobal(Offset.zero,
            ancestor: overlay.context.findRenderObject());

        showMenu(
          context: context,
          position: RelativeRect.fromLTRB(
            position.dx.dp,
            position.dy.dp - Sizes.size100.dp,
            position.dx.dp + button.size.width.dp,
            position.dy.dp + button.size.height.dp,
          ),
          shadowColor: CustomColors.mainBackgroundColor161513,
          color: CustomColors.cardBackgroundColor313131,
          items: [
            PopupMenuItem(
              value: Routes.travelRequest,
              child: ListTile(
                leading: SizedBox(
                  height: Sizes.size40.sp,
                  width: Sizes.size40.sp,
                  child: IconWidget(
                    path: AssetPath.mapIcon,
                  ),
                ),
                title: TextWidget(
                  text: GeneralString.addTrvlReq,
                  color: CustomColors.whiteColor,
                ),
              ),
            ),
            PopupMenuItem(
              value: Routes.planATrip,
              child: ListTile(
                leading: SizedBox(
                  height: Sizes.size40.sp,
                  width: Sizes.size40.sp,
                  child: IconWidget(
                    path: AssetPath.locationIcon,
                  ),
                ),
                title: TextWidget(
                  text: GeneralString.planTrip,
                  color: CustomColors.whiteColor,
                ),
              ),
            ),
          ],
        ).then((value) {
          if (!context.mounted) return;
          if (value == Routes.travelRequest) {
            RouteNavigator.push(context, '/explorepage/travelpost');
          } else if (value == Routes.planATrip) {
            // Handle plan trip action
          }
        });
      },
      backgroundColor: CustomColors.buttonBackgroundCreamColor,
      shape: const CircleBorder(),
      elevation: Elevation.large,
      child: IconWidget(
        path: AssetPath.plusIcon,
        color: CustomColors.whiteColor,
        size: Sizes.size24.sp,
      ),
    );
  }
}
