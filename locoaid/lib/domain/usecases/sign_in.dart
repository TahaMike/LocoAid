// abstract class SignIn {
//   Future<void> call({
//     required String phoneNumber,
//     String? otp,
//   });
// }
import 'package:locoaid/domain/repositories/auth_repository.dart';

class SignIn {
  final AuthRepository repository;

  SignIn(this.repository);

  Future<void> call({required String phoneNumber, String? otp}) {
    if (otp == null) {
      return repository.signInWithPhone(phoneNumber);
    } else {
      return repository.verifyOtp(otp);
    }
  }
}
