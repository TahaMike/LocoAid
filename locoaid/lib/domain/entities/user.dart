class User {
  final String id;
  final String name;
  final String phone;
  final String? email;
  final String role;

  User({
    required this.id,
    required this.name,
    required this.phone,
    this.email,
    required this.role,
  });
}
