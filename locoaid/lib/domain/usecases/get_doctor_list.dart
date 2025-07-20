import 'package:locoaid/domain/entities/doctor.dart';

abstract class GetDoctorList {
  Future<List<Doctor>> call({
    String? specialization,
    String? location,
    String? name,
  });
}
