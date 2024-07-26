import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

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
