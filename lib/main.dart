import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:pinnacle_main/explore_home/view/explore_home.dart';
import 'package:pinnacle_main/explore_home/view/travel_post.dart';
import 'package:pinnacle_main/explore_home/view/trip_details.dart';
import 'package:pinnacle_main/framework/digital/device.dart';
import 'package:pinnacle_main/framework_demo.dart';
import 'package:pinnacle_main/home.dart';

void main() {
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/google_fonts/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });

  return runApp(const MyApp());
}

final _router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      name: 'home',
      path: '/',
      builder: (context, state) => const HomeApp(),
      routes: <RouteBase>[
        GoRoute(
          path: 'component',
          builder: (BuildContext context, GoRouterState state) {
            return const FrameworkDemo();
          },
        ),
        GoRoute(
          path: 'explorepage',
          builder: (BuildContext context, GoRouterState state) {
            return const ExploreHome();
          },
        ),
        GoRoute(
          path: 'tripdetails',
          builder: (BuildContext context, GoRouterState state) {
            return const TripDetails();
          },
        ),
        GoRoute(
            path: 'travelpost',
            builder: (BuildContext context, GoRouterState state) {
              return const TravelPost();
            }),
      ],
    ),
  ],
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Device.init(context);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: _router,
    );
  }
}
