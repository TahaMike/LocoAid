class Doctor {
  final String id;
  final String name;
  final String phone;
  final String? email;
  final String role;

  Doctor({
    required this.id,
    required this.name,
    required this.phone,
    this.email,
    required this.role,
  });
}
