import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Navigation extends StatelessWidget {
  final Widget child;
  final state;

  const Navigation({super.key, required this.child, required this.state});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ElevatedButton(
              onPressed: () => GoRouter.of(context).go("/login"),
              child: const Text("Login")),
          ElevatedButton(
              onPressed: () => GoRouter.of(context).go("/users/seardhParams"),
              child: const Text("Det P")),
          ElevatedButton(
              onPressed: () => GoRouter.of(context).go(Uri(
                  path: "/users",
                  queryParameters: {"userId": "Query Params"}).toString()),
              child: const Text("Det QP"))
        ],
      ),
    );
  }
}
