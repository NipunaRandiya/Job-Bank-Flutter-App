class Job {
  final String imagename;
  final String brifeDescription;
  final String jobTag;
  final String time;
  final String payment;
  final String paymentType;

  Job({
    required this.imagename,
    required this.brifeDescription,
    required this.jobTag,
    required this.time,
    required this.payment,
    required this.paymentType,
  });

  factory Job.fromJson(Map<String, dynamic> json) {
    return Job(
      imagename: json['image_name'],
      brifeDescription: json['brife_description'],
      jobTag: json['job_tag'],
      time: json['time'],
      payment: json['payment'],
      paymentType: json['payment_type'],
    );
  }
}
