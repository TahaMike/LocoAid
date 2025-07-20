import 'package:locoaid/domain/entities/appointment.dart';

abstract class GetAppointments {
  Future<List<Appointment>> call(String patientId);
}
