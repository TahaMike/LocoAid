
import 'package:locoaid/domain/entities/doctor.dart';

abstract class GetDoctorDetails {
  Future<Doctor> call(String doctorId);
}
