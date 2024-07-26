import 'package:flutter/material.dart';

class DetailsPage extends StatelessWidget {
  final id;
  const DetailsPage({super.key, required this.id});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Detailed Page")),
      body: Center(
        child: Text("Detailed Page for ID: $id"),
      ),
    );
  }
}
