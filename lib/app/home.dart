import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
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
                child: const Text("Login"))
          ],
        ),
      ),
    );
  }
}
