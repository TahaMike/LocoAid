import '../entities/doctor.dart';

abstract class DoctorRepository {
  Future<List<Doctor>> getDoctorList({
    String? specialization,
    String? location,
    String? name,
  });

  Future<Doctor> getDoctorDetails(String doctorId);
}
