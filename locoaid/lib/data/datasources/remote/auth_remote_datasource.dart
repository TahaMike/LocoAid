import 'package:firebase_auth/firebase_auth.dart';

abstract class AuthRemoteDataSource {
  Future<void> signInWithPhone(String phoneNumber);
  Future<void> verifyOtp(String otp);
  Future<void> signOut();
  Future<String?> getCurrentUserId();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? _verificationId;

  @override
  Future<void> signInWithPhone(String phoneNumber) async {
    await _auth.verifyPhoneNumber(
      phoneNumber: phoneNumber,
      verificationCompleted: (PhoneAuthCredential credential) async {
        // Auto-retrieval, rarely used on modern Android versions
        await _auth.signInWithCredential(credential);
      },
      verificationFailed: (FirebaseAuthException e) {
        throw Exception('Verification failed: ${e.message}');
      },
      codeSent: (String verificationId, int? resendToken) {
        _verificationId = verificationId;
      },
      codeAutoRetrievalTimeout: (String verificationId) {
        _verificationId = verificationId;
      },
      timeout: const Duration(seconds: 60),
    );
  }

  @override
  Future<void> verifyOtp(String otp) async {
    if (_verificationId == null) {
      throw Exception('Verification ID is null. Start phone sign-in first.');
    }

    final credential = PhoneAuthProvider.credential(
      verificationId: _verificationId!,
      smsCode: otp,
    );

    await _auth.signInWithCredential(credential);
  }

  @override
  Future<void> signOut() async {
    await _auth.signOut();
  }

  @override
  Future<String?> getCurrentUserId() async {
    return _auth.currentUser?.uid;
  }
}
