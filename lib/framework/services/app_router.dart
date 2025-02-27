import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppRoute {
  final String path;
  final Widget Function(BuildContext, GoRouterState) builder;
  final List<AppRoute> subRoutes;

  AppRoute({
    required this.path,
    required this.builder,
    this.subRoutes = const [],
  });
}