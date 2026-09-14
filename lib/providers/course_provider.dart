import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/course.dart';

class CourseProvider extends ChangeNotifier {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  List<Course> _courses = [];
  bool _isLoading = false;
  String? _error;

  List<Course> get courses => _courses;
  bool get isLoading => _isLoading;
  String? get error => _error;

  // Fetch all courses
  Future<void> fetchCourses() async {
    try {
      _isLoading = true;
      _error = null;
      notifyListeners();

      final snapshot = await _firestore.collection('courses').get();
      _courses = snapshot.docs.map((doc) {
        return Course.fromJson({...doc.data(), 'id': doc.id});
      }).toList();

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

      final snapshot = await _firestore
          .collection('courses')
          .where('students', arrayContains: studentId)
          .get();

      _courses = snapshot.docs.map((doc) {
        return Course.fromJson({...doc.data(), 'id': doc.id});
      }).toList();

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

      final snapshot = await _firestore
          .collection('courses')
          .where('instructor', isEqualTo: instructorId)
          .get();

      _courses = snapshot.docs.map((doc) {
        return Course.fromJson({...doc.data(), 'id': doc.id});
      }).toList();

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
      final doc = await _firestore.collection('courses').doc(courseId).get();
      if (doc.exists) {
        return Course.fromJson({...doc.data()!, 'id': doc.id});
      }
      return null;
    } catch (e) {
      _error = e.toString();
      return null;
    }
  }

  // Create a new course (for teachers)
  Future<bool> createCourse(Course course) async {
    try {
      await _firestore.collection('courses').add(course.toJson());
      await fetchInstructorCourses(course.instructor);
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    }
  }

  // Enroll student in a course
  Future<bool> enrollStudent(String courseId, String studentId) async {
    try {
      await _firestore.collection('courses').doc(courseId).update({
        'students': FieldValue.arrayUnion([studentId])
      });
      await fetchEnrolledCourses(studentId);
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    }
  }

  // Update course
  Future<bool> updateCourse(String courseId, Map<String, dynamic> data) async {
    try {
      await _firestore.collection('courses').doc(courseId).update(data);
      await fetchCourses();
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    }
  }

  // Delete course
  Future<bool> deleteCourse(String courseId) async {
    try {
      await _firestore.collection('courses').doc(courseId).delete();
      await fetchCourses();
      return true;
    } catch (e) {
      _error = e.toString();
      return false;
    }
  }
}
