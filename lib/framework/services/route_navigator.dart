import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pinnacle_main/framework/services/app_router.dart';
import 'package:pinnacle_main/main.dart';

class RouteNavigator {
  static List<GoRoute> _convertRoutes(List<AppRoute> routes) {
    return routes.map((route) {
      return GoRoute(
        path: route.path,
        builder: route.builder,
        routes: _convertRoutes(route.subRoutes),
      );
    }).toList();
  }

  static final GoRouter _router = GoRouter(
    initialLocation: '/',
    routes: _convertRoutes(routers),
  );

  static GoRouter get router => _router;

  static void go(BuildContext context, String route) {
    debugPrint(route);
    try {
      context.go(route);
    } on GoException catch (e) {
      debugPrint("GoRouter Exception in go(): ${e.message}");
    } catch (e) {
      debugPrint("Unexpected Navigation Error in go(): $e");
    }
  }

  static void push(BuildContext context, String route) {
    try {
      context.push(route);
    } on GoException catch (e) {
      debugPrint("GoRouter Exception in push(): ${e.message}");
    } catch (e) {
      debugPrint("Unexpected Navigation Error in push(): $e");
    }
  }

  static void goBack(BuildContext context) {
    try {
      if (context.canPop()) {
        context.pop();
      } else {
        debugPrint("Navigation Warning: No route to pop in goBack()");
      }
    } on GoException catch (e) {
      debugPrint("GoRouter Exception in goBack(): ${e.message}");
    } catch (e) {
      debugPrint("Unexpected Navigation Error in goBack(): $e");
    }
  }

  static void pushWithParams(
      BuildContext context, String route, Object params) {
    try {
      context.push(route, extra: params);
    } on GoException catch (e) {
      debugPrint("GoRouter Exception in pushWithParams(): ${e.message}");
    } catch (e) {
      debugPrint("Unexpected Navigation Error in pushWithParams(): $e");
    }
  }

  static void replace(BuildContext context, String route) {
    try {
      context.replace(route);
    } on GoException catch (e) {
      debugPrint("GoRouter Exception in replace(): ${e.message}");
    } catch (e) {
      debugPrint("Unexpected Navigation Error in replace(): $e");
    }
  }

  static void replaceWithParams(
      BuildContext context, String route, Object params) {
    try {
      context.replace(route, extra: params);
    } on GoException catch (e) {
      debugPrint("GoRouter Exception in replaceWithParams(): ${e.message}");
    } catch (e) {
      debugPrint("Unexpected Navigation Error in replaceWithParams(): $e");
    }
  }

  static void popUntil(BuildContext context, String route) {
    try {
      context.go(route);
    } on GoException catch (e) {
      debugPrint("GoRouter Exception in popUntil(): ${e.message}");
    } catch (e) {
      debugPrint("Unexpected Navigation Error in popUntil(): $e");
    }
  }

  static void clearAndGo(BuildContext context, String route) {
    try {
      context.go(route);
    } on GoException catch (e) {
      debugPrint("GoRouter Exception in clearAndGo(): ${e.message}");
    } catch (e) {
      debugPrint("Unexpected Navigation Error in clearAndGo(): $e");
    }
  }

  static void pushAndClear(BuildContext context, String route) {
    try {
      context.go(route);
    } on GoException catch (e) {
      debugPrint("GoRouter Exception in pushAndClear(): ${e.message}");
    } catch (e) {
      debugPrint("Unexpected Navigation Error in pushAndClear(): $e");
    }
  }

  static bool canGoBack(BuildContext context) {
    try {
      return context.canPop();
    } on GoException catch (e) {
      debugPrint("GoRouter Exception in canGoBack(): ${e.message}");
      return false;
    } catch (e) {
      debugPrint("Unexpected Navigation Error in canGoBack(): $e");
      return false;
    }
  }
}
