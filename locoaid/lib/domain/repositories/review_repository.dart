abstract class ReviewRepository {
  Future<void> submitReview({
    required String doctorId,
    required int rating,
    required String comment,
  });
}
