// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'core/router/app_router.dart';
import 'core/theme/app_theme.dart';

void main() {
  // await Firebase.initializeApp();

  runApp(const ProviderScope(child: LocoAidApp()));
}

class LocoAidApp extends StatelessWidget {
  const LocoAidApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'LocoAid',
      theme: AppTheme.lightTheme,
      routerConfig: router,
    );
  }
}
