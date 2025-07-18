import 'package:flutter/material.dart';
import 'dart:ui';
import 'package:intl/intl.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:locoaid/features/navigation/presentation/main_navigation.dart';
import '../widgets/doctor_card.dart';
import '../widgets/search_bar.dart';
import '../widgets/calendar_bar.dart';


class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      appBar: AppBar(
        title: const Text("Hi, Taha 👋", style: TextStyle(fontWeight: FontWeight.bold)),
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomSearchBar().animate().fadeIn(duration: 400.ms).slideY(begin: 0.3),
            const SizedBox(height: 16),
            const CalendarBar().animate().fadeIn(duration: 400.ms).slideY(begin: 0.2),
            TextButton(
              onPressed: () {},
              child: Text('Go_to_date'),
            ),
            const SizedBox(height: 16),
            Text("Available Psychologists",
                style: Theme.of(context).textTheme.titleMedium?.copyWith(fontWeight: FontWeight.bold),),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: 5,
                itemBuilder: (context, index) => DoctorCard(
                  name: "Dr. Ayesha Siddiqui",
                  specialty: "Clinical Psychologist",
                  rating: 4.8,
                  fee: 700,
                  imageUrl: "https://randomuser.me/api/portraits/women/79.jpg",
                ).animate().fadeIn(duration: 300.ms, delay: (index * 100).ms).slideY(begin: 0.1),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
