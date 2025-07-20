abstract class SubmitReview {
  Future<void> call({
    required String doctorId,
    required int rating,
    required String comment,
  });
}
