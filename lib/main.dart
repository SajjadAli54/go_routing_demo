import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';

import 'package:go_routing_demo/app/details.dart';
import 'package:go_routing_demo/app/home.dart';
import 'package:go_routing_demo/app/login.dart';
import 'package:go_routing_demo/app/navigation.dart';

final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>();

final shellRoute = ShellRoute(
    builder: (context, state, child) => BottomNavigation(child: child),
    routes: [
      GoRoute(
        path: "/",
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: "/login",
        builder: (context, state) => const LoginPage(),
      ),
      GoRoute(
        path: "/users/:userId",
        builder: (context, state) =>
            DetailsPage(id: state.pathParameters["userId"]),
      ),
      GoRoute(
        path: "/users",
        builder: (context, state) =>
            DetailsPage(id: state.uri.queryParameters["userId"]),
      )
    ]);

final _router = GoRouter(
    navigatorKey: _rootNavigatorKey,
    initialLocation: '/',
    routes: [shellRoute]);

void main() {
  // setUrlStrategy(PathUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: _router,
    );
  }
}
