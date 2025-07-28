// import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:locoaid/presentation/pages/home_screen.dart';

import '../../presentation/pages/splash_screen.dart';
import '../../presentation/pages/login_screen.dart';
import '../../presentation/pages/sign_up_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/splash',
  routes: [
    GoRoute(path: '/splash', builder: (context, state) => const SplashScreen()),
    GoRoute(path: '/signup', builder: (context, state) => const SignUpScreen()),
    GoRoute(path: '/login', builder: (context, state) => const LoginScreen()),
    GoRoute(
      path: '/homescreen',
      builder: (context, state) => const HomeScreen(),
    ),
  ],
);
