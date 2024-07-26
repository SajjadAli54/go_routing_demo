import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BottomNavigation extends StatelessWidget {
  final Widget child;

  const BottomNavigation({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: child,
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _buildBottomNavItem(
              context,
              icon: Icons.home,
              label: 'Home',
              route: '/',
            ),
            _buildBottomNavItem(
              context,
              icon: Icons.person,
              label: 'Profile',
              route: '/login',
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
            SizedBox(height: 3),
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
