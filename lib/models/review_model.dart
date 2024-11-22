class Review {
  final String senderName;
  final String review;

  Review({required this.senderName, required this.review});

  factory Review.fromJson(Map<String, dynamic> json) {
    return Review(
      senderName: json['sender_name'],
      review: json['review'],
    );
  }
}
