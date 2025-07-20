abstract class BookAppointment {
  Future<void> call({
    required String doctorId,
    required DateTime appointmentTime,
  });
}
