import 'package:flutter/material.dart';
import 'package:pinnacle_main/explore_home/uikit/travel_request_component.dart';
import 'package:pinnacle_main/framework/constants/size.dart';
import 'package:pinnacle_main/framework/digital/sizer.dart';
import 'package:pinnacle_main/framework/services/route_navigator.dart';

class BuildListView extends StatelessWidget {
  const BuildListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: Sizes.size5.dp,
            horizontal: Sizes.size15.dp,
          ),
          child: InkWell(
            onTap: () => RouteNavigator.go(
              context,
              '/explorepage/tripdetails',
            ),
            child: TravelRequestCard(
              title: 'Travel Title',
              startDate: DateTime.now(),
              endDate: DateTime.now(),
              price: 'Travel Price',
              days: 5,
              cityLocation: 'Lonavala',
            ),
          ),
        );
      },
    );
  }
}
