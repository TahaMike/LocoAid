abstract class AuthRepository {
  Future<void> signInWithPhone(String phoneNumber);
  Future<void> verifyOtp(String otp);
  Future<void> signOut();
  Future<String?> getCurrentUserId();
}
