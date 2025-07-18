import 'package:flutter/material.dart';
import 'package:locoaid/features/home/presentation/screens/home_screen.dart';
import 'package:locoaid/features/profile/presentation/profile_screen.dart';
import 'package:locoaid/features/appointments/presentation/appointments_screen.dart';
import '../widgets/custom_navbar.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeScreen(),
    AppointmentsScreen(),
    ProfileScreen(),
  ];

  void _onTabSelected(int index) {
    setState(() => _currentIndex = index);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: CustomNavBar(
        currentIndex: _currentIndex,
        onTabSelected: _onTabSelected,
      ),
    );
  }
}
