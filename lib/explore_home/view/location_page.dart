import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:pinnacle_main/explore_home/uikit/build_list_view.dart';

import 'package:pinnacle_main/framework/constants/asset_path.dart';
import 'package:pinnacle_main/framework/constants/color.dart';
import 'package:pinnacle_main/framework/constants/constants.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/services/route_navigator.dart';

import 'package:pinnacle_main/framework/uikit/circle_back_button_widget.dart';
import 'package:pinnacle_main/framework/uikit/icon_widget.dart';
import 'package:pinnacle_main/framework/uikit/image_widget.dart';
import 'package:pinnacle_main/framework/uikit/text_widget.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/custom_bottom_navigation_bar.dart';
import 'package:pinnacle_main/framework/widgets/navigation_bar/floating_action_button.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: const CustomFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
      backgroundColor: CustomColors.mainBackgroundColor161513,
      bottomNavigationBar: const CustomBottomNavigationBar(
        currentIndex: 1,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Center(
                    child: ImageWidget(
                      path: AssetPath.dummyLocationImage,
                      width: double.infinity,
                      height: Sizes.size420.dp,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Positioned(
                    top: Sizes.size10.dp,
                    left: Sizes.size10.dp,
                    child: CircleBackButtonWidget(
                      onPress: () {
                        RouteNavigator.pop(context);
                      },
                    ),
                  ),
                  Positioned(
                    bottom: Sizes.size0.dp,
                    child: Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: Sizes.size15.dp),
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          TextWidget(
                            text: 'Lonavala',
                            size: Sizes.size30.sp,
                            fontWeight: FontWeight.bold,
                            fontStyle: FontStyle.italic,
                            alignment: TextAlign.center,
                            color: CustomColors.mainTextColor,
                          ),
                          TextWidget(
                            text:
                                'Lonavala-Khandala is a hill station and a Municipal Council in the Pune district, Maharashtra, India.',
                            alignment: TextAlign.center,
                            size: Sizes.size16.sp,
                            fontStyle: FontStyle.italic,
                            color: CustomColors.mainTextColor,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: Sizes.size200.dp,
                padding: EdgeInsets.fromLTRB(
                  Sizes.size15.dp,
                  Sizes.size10.dp,
                  Sizes.size15.dp,
                  Sizes.size5.dp,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(Sizes.size12.dp),
                  child: FlutterMap(
                    options: const MapOptions(
                      initialCenter: LatLng(51.509364, -0.128928),
                      initialZoom: 3.2,
                      // interactionOptions: InteractionOptions(
                      //   flags: InteractiveFlag.none,
                      // ),
                    ),
                    children: [
                      TileLayer(
                        urlTemplate: Constants.mapUrlTemp,
                      ),
                      MarkerLayer(
                        markers: [
                          Marker(
                            point: const LatLng(51.509364, -0.128928),
                            child: IconWidget(
                              path: AssetPath.locationPinIcon,
                              size: Sizes.size24.sp,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              const BuildListView(),
            ],
          ),
        ),
      ),
    );
  }
}
