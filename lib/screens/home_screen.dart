import 'package:flutter/material.dart';
import 'package:locoaid/data/therapist_data.dart';
import 'package:locoaid/screens/doctor_details_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('LocoAid')),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        CategoryListScreen(category: 'Home Visit')),
              );
            },
            child: const Text('Home Visit'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        CategoryListScreen(category: 'Clinic Visit')),
              );
            },
            child: const Text('Clinic Visit'),
          ),
        ],
      ),
    );
  }
}

class CategoryListScreen extends StatelessWidget {
  final String category;

  CategoryListScreen({required this.category});

  @override
  Widget build(BuildContext context) {
    // In future, replace mockDoctors with data fetched from the database
    final doctors = mockDoctors;

    return Scaffold(
      appBar: AppBar(title: Text('$category Doctors')),
      body: ListView.builder(
        itemCount: doctors.length,
        itemBuilder: (context, index) {
          final doctor = doctors[index];
          return ListTile(
            title: Text(doctor.name),
            subtitle:
                Text('${doctor.specialization} - Rating: ${doctor.rating}'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => DoctorDetailsScreen(doctor: doctor),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
