class Enrollment {
  final String id;
  final String studentId;
  final String courseId;
  final DateTime enrolledAt;
  final String status; // active, completed, dropped
  final double currentGrade;

  Enrollment({
    required this.id,
    required this.studentId,
    required this.courseId,
    required this.enrolledAt,
    required this.status,
    required this.currentGrade,
  });

  factory Enrollment.fromJson(Map<String, dynamic> json) {
    return Enrollment(
      id: json['id'] ?? '',
      studentId: json['studentId'] ?? '',
      courseId: json['courseId'] ?? '',
      enrolledAt: json['enrolledAt'] != null
          ? DateTime.parse(json['enrolledAt'])
          : DateTime.now(),
      status: json['status'] ?? 'active',
      currentGrade: (json['currentGrade'] ?? 0.0).toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'studentId': studentId,
      'courseId': courseId,
      'enrolledAt': enrolledAt.toIso8601String(),
      'status': status,
      'currentGrade': currentGrade,
    };
  }
}
