import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:locoaid/features/home/presentation/screens/home_screen.dart';
import 'package:locoaid/features/root/presentation/pages/root_screen.dart';

import '../../features/splash/presentation/splash_screen.dart';
import '../../features/auth/presentation/login_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(), // Next step
    ),
    // For testing navigation
  GoRoute(
    path: '/home',
    builder: (context, state) => RootScreen(), // replace later
  ),

  ],
);


