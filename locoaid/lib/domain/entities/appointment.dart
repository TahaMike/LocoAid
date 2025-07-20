class Appointment {
  final String id;
  final String name;
  final String phone;
  final String? email;
  final String role;

  Appointment({
    required this.id,
    required this.name,
    required this.phone,
    this.email,
    required this.role,
  });
}
