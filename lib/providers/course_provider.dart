import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/course.dart';
import '../data/sample_courses.dart';

class CourseProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Course> _courses = [];
  bool _isLoading = false;
  String? _error;
  bool _useTestData = true; // Set to false when Firebase is fully configured

  List<Course> get courses => _courses;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Fetch all courses
  Future<void> fetchCourses() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      if (_useTestData) {
        // Use sample data for testing
        await Future.delayed(const Duration(milliseconds: 800));
        _courses = sampleCourses;
      } else {
        // Fetch from Firebase
        final snapshot = await _firestore.collection('courses').get();
        _courses = snapshot.docs.map((doc) {
          return Course.fromJson({...doc.data(), 'id': doc.id});
        }).toList();
      }

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  // Fetch enrolled courses for a student
  Future<void> fetchEnrolledCourses(String studentId) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      if (_useTestData) {
        // Filter sample data for student
        await Future.delayed(const Duration(milliseconds: 800));
        _courses = sampleCourses
            .where((course) => course.students.contains(studentId))
            .toList();
      } else {
        final snapshot = await _firestore
            .collection('courses')
            .where('students', arrayContains: studentId)
            .get();

        _courses = snapshot.docs.map((doc) {
          return Course.fromJson({...doc.data(), 'id': doc.id});
        }).toList();
      }

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  // Fetch courses taught by an instructor
  Future<void> fetchInstructorCourses(String instructorId) async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      if (_useTestData) {
        // Filter sample data for instructor
        await Future.delayed(const Duration(milliseconds: 800));
        _courses = sampleCourses
            .where((course) => course.instructor.contains(instructorId))
            .toList();
      } else {
        final snapshot = await _firestore
            .collection('courses')
            .where('instructor', isEqualTo: instructorId)
            .get();

        _courses = snapshot.docs.map((doc) {
          return Course.fromJson({...doc.data(), 'id': doc.id});
        }).toList();
      }

      _isLoading = false;
      notifyListeners();
    } catch (e) {
      _error = e.toString();
      _isLoading = false;
      notifyListeners();
    }
  }

  // Get single course details
  Future<Course?> getCourseDetails(String courseId) async {
    try {
      if (_useTestData) {
        // Get from sample data
        return sampleCourses.firstWhere(
          (course) => course.id == courseId,
          orElse: () => sampleCourses.first,
        );
      } else {
        final doc =
            await _firestore.collection('courses').doc(courseId).get();
        if (doc.exists) {
          return Course.fromJson({...doc.data()!, 'id': doc.id});
        }
        return null;
      }
    } catch (e) {
      _error = e.toString();
      return null;
    }
  }

  // Create a new course (for teachers)
  Future<bool> createCourse(Course course) async {
    try {
      if (_useTestData) {
        // Add to sample data (in-memory only)
        _courses.add(course);
        notifyListeners();
      } else {
        await _firestore.collection('courses').add(course.toJson());
        await fetchInstructorCourses(course.instructor);
      }
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    }
  }

  // Enroll student in a course
  Future<bool> enrollStudent(String courseId, String studentId) async {
    try {
      if (_useTestData) {
        // Update sample data
        final courseIndex =
            _courses.indexWhere((course) => course.id == courseId);
        if (courseIndex != -1) {
          final course = _courses[courseIndex];
          if (!course.students.contains(studentId)) {
            course.students.add(studentId);
            notifyListeners();
          }
        }
      } else {
        await _firestore.collection('courses').doc(courseId).update({
          'students': FieldValue.arrayUnion([studentId])
        });
        await fetchEnrolledCourses(studentId);
      }
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    }
  }

  // Update course
  Future<bool> updateCourse(String courseId, Map<String, dynamic> data) async {
    try {
      if (_useTestData) {
        // Update sample data
        final courseIndex =
            _courses.indexWhere((course) => course.id == courseId);
        if (courseIndex != -1) {
          notifyListeners();
        }
      } else {
        await _firestore.collection('courses').doc(courseId).update(data);
        await fetchCourses();
      }
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    }
  }

  // Delete course
  Future<bool> deleteCourse(String courseId) async {
    try {
      if (_useTestData) {
        // Delete from sample data
        _courses.removeWhere((course) => course.id == courseId);
        notifyListeners();
      } else {
        await _firestore.collection('courses').doc(courseId).delete();
        await fetchCourses();
      }
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    }
  }

  // Toggle between test data and Firebase
  void setUseTestData(bool useTest) {
    _useTestData = useTest;
    notifyListeners();
  }
}
