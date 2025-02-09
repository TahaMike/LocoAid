class Doctor {
  final String id;
  final String name;
  final String specialization;
  final double rating;
  final double fees;
  final String address;
  final double latitude;
  final double longitude;

  Doctor({
    required this.id,
    required this.name,
    required this.specialization,
    required this.rating,
    required this.fees,
    required this.address,
    required this.latitude,
    required this.longitude,
  });
}

List<Doctor> mockDoctors = [
  Doctor(
    id: '1',
    name: 'Dr. John Doe',
    specialization: 'Orthopedic',
    rating: 4.5,
    fees: 500.0,
    address: '123 Main St, City, Country',
    latitude: 28.7041,
    longitude: 77.1025,
  ),
  Doctor(
    id: '2',
    name: 'Dr. Jane Smith',
    specialization: 'Physiotherapy',
    rating: 4.8,
    fees: 400.0,
    address: '456 Elm St, City, Country',
    latitude: 28.5355,
    longitude: 77.3910,
  ),
  Doctor(
    id: '3',
    name: 'Dr. Jane Frost',
    specialization: 'Physiotherapy',
    rating: 4.3,
    fees: 450.0,
    address: '426 Elm St, City, Country',
    latitude: 29.5355,
    longitude: 78.3910,
  ),
  // Add more doctors as needed
];
