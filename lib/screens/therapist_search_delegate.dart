// import 'package:flutter/material.dart';
// import '../data/therapist_data.dart';

// class TherapistSearchDelegate extends SearchDelegate {
//   @override
//   List<Widget> buildActions(BuildContext context) {
//     return [
//       IconButton(
//         icon: Icon(Icons.clear),
//         onPressed: () {
//           query = ''; // Clear search query
//         },
//       ),
//     ];
//   }

//   @override
//   Widget buildLeading(BuildContext context) {
//     return IconButton(
//       icon: Icon(Icons.arrow_back),
//       onPressed: () {
//         close(context, null);
//       },
//     );
//   }

//   @override
//   Widget buildResults(BuildContext context) {
//     final results = therapistData.where((therapist) {
//       final name = therapist['name'].toLowerCase();
//       final specialization = therapist['specialization'].toLowerCase();
//       return name.contains(query.toLowerCase()) ||
//           specialization.contains(query.toLowerCase());
//     }).toList();

//     return ListView.builder(
//       itemCount: results.length,
//       itemBuilder: (context, index) {
//         final therapist = results[index];
//         return ListTile(
//           title: Text(therapist['name']),
//           subtitle: Text(therapist['specialization']),
//           trailing: Text(therapist['rating'].toString()),
//           onTap: () {
//             close(context, therapist);
//           },
//         );
//       },
//     );
//   }

//   @override
//   Widget buildSuggestions(BuildContext context) {
//     final suggestions = therapistData.where((therapist) {
//       final name = therapist['name'].toLowerCase();
//       final specialization = therapist['specialization'].toLowerCase();
//       return name.contains(query.toLowerCase()) ||
//           specialization.contains(query.toLowerCase());
//     }).toList();

//     return ListView.builder(
//       itemCount: suggestions.length,
//       itemBuilder: (context, index) {
//         final therapist = suggestions[index];
//         return ListTile(
//           title: Text(therapist['name']),
//           subtitle: Text(therapist['specialization']),
//           onTap: () {
//             query = therapist['name']; // Set query to selected name
//             showResults(context);
//           },
//         );
//       },
//     );
//   }
// }
