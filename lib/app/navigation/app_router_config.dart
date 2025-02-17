import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_client/app/navigation/app_route.dart';
import 'package:portfolio_client/app/ui/screens/main/main_screen.dart';
import 'package:portfolio_client/app/ui/screens/main/main_screen_view_model.dart';
import 'package:portfolio_client/app/ui/screens/splash/splash_screen.dart';
import 'package:portfolio_client/app/ui/screens/splash/splash_screen_view_model.dart';

class AppRouterConfig {
  late final GoRouter router = GoRouter(
    routes: _routes,
    initialLocation: AppRoute.root,
  );

  void dispose() {}

  late final _routes = <RouteBase>[
    GoRoute(
      path: '/',
      name: AppRoute.root,
      builder: (context, state) =>
          SplashScreen(viewModel: SplashScreenViewModel()),
    ),
    GoRoute(
      path: '/main',
      name: AppRoute.main,
      builder: (_, __) => MainScreen(viewModel: MainScreenViewModel()),
    ),
  ];
}
