import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pinnacle_main/explore_home/view/explore_home.dart';
import 'package:pinnacle_main/explore_home/view/location_page.dart';
import 'package:pinnacle_main/explore_home/view/travel_post.dart';
import 'package:pinnacle_main/explore_home/view/trip_details.dart';

import 'package:pinnacle_main/framework/digital/device.dart';
import 'package:pinnacle_main/framework/services/app_router.dart';
import 'package:pinnacle_main/framework/services/route_navigator.dart';
import 'package:pinnacle_main/framework_demo.dart';
import 'package:pinnacle_main/home.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  return runApp(const MyApp());
}

final List<AppRoute> routers = [
  AppRoute(
    path: '/',
    builder: (context, state) => const HomeApp(),
    subRoutes: [
      AppRoute(
        path: 'component',
        builder: (context, state) => const FrameworkDemo(),
      ),
      AppRoute(
        path: 'explorepage',
        builder: (context, state) => const ExploreHome(),
        subRoutes: [
          AppRoute(
            path: 'travelpost',
            builder: (context, state) => const TravelPost(),
          ),
          AppRoute(
            path: 'tripdetails',
            builder: (context, state) => const TripDetails(),
          ),
          AppRoute(
            path: 'locationpage',
            builder: (context, state) => const LocationPage(),
          ),
        ],
      ),
    ],
  ),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Device.init(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: RouteNavigator.router,
    );
  }
}
