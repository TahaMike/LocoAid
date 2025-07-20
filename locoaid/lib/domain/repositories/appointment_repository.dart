import '../entities/appointment.dart';

abstract class AppointmentRepository {
  Future<void> bookAppointment({
    required String doctorId,
    required DateTime appointmentTime,
  });

  Future<List<Appointment>> getAppointments(String patientId);
}
