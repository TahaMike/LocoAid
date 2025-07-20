class Review {
  final String id;
  final String name;
  final String phone;
  final String? email;
  final String role;

  Review({
    required this.id,
    required this.name,
    required this.phone,
    this.email,
    required this.role,
  });
}
