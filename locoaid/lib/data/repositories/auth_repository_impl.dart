import 'package:locoaid/data/datasources/remote/auth_remote_datasource.dart';
import 'package:locoaid/domain/repositories/auth_repository.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthRemoteDataSource remote;

  AuthRepositoryImpl({required this.remote});

  @override
  Future<void> signInWithPhone(String phoneNumber) {
    return remote.signInWithPhone(phoneNumber);
  }

  @override
  Future<void> verifyOtp(String otp) {
    return remote.verifyOtp(otp);
  }

  @override
  Future<void> signOut() {
    return remote.signOut();
  }

  @override
  Future<String?> getCurrentUserId() {
    return remote.getCurrentUserId();
  }
}
