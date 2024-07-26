import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: ListView(
          children: [
            ElevatedButton(
                onPressed: () => context.go("/login"),
                child: const Text("Login")),
            ElevatedButton(
                onPressed: () => context.go("/users/seardhParams"),
                child: const Text("Details with Params")),
            ElevatedButton(
                onPressed: () => context.go(Uri(
                    path: "/users",
                    queryParameters: {"userId": "Query Params"}).toString()),
                child: const Text("Details with Query Params"))
          ],
        ),
      ),
    );
  }
}
