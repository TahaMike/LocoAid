import 'package:flutter/material.dart';
import 'package:locoaid/features/appointments/presentation/appointments_screen.dart';
import 'package:locoaid/features/profile/presentation/profile_screen.dart';
import '../../../home/presentation/screens/home_screen.dart';
import '../widgets/custom_bottom_navbar.dart';

class RootScreen extends StatefulWidget {
  const RootScreen({super.key});

  @override
  State<RootScreen> createState() => _RootScreenState();
}

class _RootScreenState extends State<RootScreen> {
  int _currentIndex = 0;

  final _pages = const [
    HomeScreen(),
    AppointmentsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _pages,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
      ),
    );
  }
}
