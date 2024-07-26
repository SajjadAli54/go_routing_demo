import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:go_routing_demo/app/details.dart';

import 'package:go_routing_demo/app/home.dart';
import 'package:go_routing_demo/app/login.dart';

final _router = GoRouter(routes: [
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
  )
]);

void main() {
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
