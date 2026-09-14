class Course {
  final String id;
  final String name;
  final String code;
  final String instructor;
  final String description;
  final List<String> students;
  final int credits;
  final String schedule;
  final String classroom;
  final DateTime createdAt;

  Course({
    required this.id,
    required this.name,
    required this.code,
    required this.instructor,
    required this.description,
    required this.students,
    required this.credits,
    required this.schedule,
    required this.classroom,
    required this.createdAt,
  });

  factory Course.fromJson(Map<String, dynamic> json) {
    return Course(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      code: json['code'] ?? '',
      instructor: json['instructor'] ?? '',
      description: json['description'] ?? '',
      students: List<String>.from(json['students'] ?? []),
      credits: json['credits'] ?? 0,
      schedule: json['schedule'] ?? '',
      classroom: json['classroom'] ?? '',
      createdAt: json['createdAt'] != null
          ? DateTime.parse(json['createdAt'])
          : DateTime.now(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'code': code,
      'instructor': instructor,
      'description': description,
      'students': students,
      'credits': credits,
      'schedule': schedule,
      'classroom': classroom,
      'createdAt': createdAt.toIso8601String(),
    };
  }
}
