import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:locoaid/presentation/pages/sign_up_screen.dart';

// import '../../presentation/pages/splash_screen.dart';
import '../../presentation/pages/login_screen.dart';
import '../../presentation/pages/sign_up_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  routes: [
    GoRoute(path: '/', builder: (context, state) => const SignUpScreen()),
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(), // Next step
    ),
    // For testing navigation
    GoRoute(
      path: '/signup',
      builder: (context, state) => SignUpScreen(), // replace later
    ),
  ],
);
