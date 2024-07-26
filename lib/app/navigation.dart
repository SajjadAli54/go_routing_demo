import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatelessWidget {
  final Widget child;

  BottomNavigation({super.key, required this.child});

  var handleClick = (route, context) => GoRouter.of(context).go(route);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomAppBar(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 60,
        color: Colors.cyan.shade400,
        notchMargin: 5,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              icon: const Icon(
                Icons.home,
                color: Colors.black,
              ),
              onPressed: () => handleClick("/", context),
            ),
            IconButton(
              icon: Icon(Icons.person),
              color: Colors.black,
              onPressed: () => handleClick("/login", context),
            ),
            IconButton(
              icon: Icon(Icons.search),
              color: Colors.black,
              onPressed: () => handleClick("/users/searchParams", context),
            ),
            _buildBottomNavItem(
              context,
              icon: Icons.search,
              label: 'Search',
              route: '/users/searchParams',
            ),
            _buildBottomNavItem(
              context,
              icon: Icons.details_rounded,
              label: 'Details',
              route: Uri(
                path: "/users",
                queryParameters: {"userId": "Query Params"},
              ).toString(),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildBottomNavItem(
    BuildContext context, {
    required IconData icon,
    required String label,
    required String route,
  }) {
    return Expanded(
      child: TextButton(
        onPressed: () => GoRouter.of(context).go(route),
        style: TextButton.styleFrom(
          padding: EdgeInsets.symmetric(vertical: 10),
          backgroundColor: Colors.blueAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              icon,
              size: 28,
              color: Colors.white,
            ),
            SizedBox(height: 2),
            Text(
              label,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
