# One Campus One Solution - Flutter App

A complete academic management mobile application built with Flutter and Firebase.

## 📋 Features Implemented:

✅ **Authentication System**
- User Registration with Firebase
- User Login with validation
- Logout functionality
- Session management
- Firebase Authentication integrated

✅ **Course Management**
- View all available courses with details
- Course enrollment system
- Detailed course information page
- 5 sample courses included for testing
- Course schedule, classroom, instructor info
- Credits and student count display

✅ **Navigation System**
- Bottom navigation bar with 4 tabs
- Home, Courses, Messages, Profile sections
- Smooth screen transitions
- Responsive navigation

✅ **User Interface**
- Modern Material Design 3
- Responsive layouts for all screen sizes
- Loading states with spinners
- Error handling and messages
- Feature cards on home screen
- Gradient headers and custom cards

---

## 🚀 Quick Start Guide

### Prerequisites:
- Flutter SDK 3.0+ installed
- Android Studio or Xcode
- Firebase account (optional - uses test data by default)

### Installation Steps:

**1. Get the code:**
```bash
git clone <repository-url>
cd one-campus-one-solution
flutter pub get
```

**2. Run the app:**
```bash
flutter run
```

**3. For iOS:**
```bash
cd ios && pod install && cd ..
flutter run
```

---

## 📁 Project Structure:

```
lib/
├── main.dart                      # App entry point with providers
├── models/
│   ├── course.dart               # Course data model
│   └── enrollment.dart           # Student enrollment model
├── providers/
│   ├── auth_provider.dart        # Firebase authentication logic
│   └── course_provider.dart      # Course management logic
├── screens/
│   ├── splash_screen.dart        # Loading screen
│   ├── login_screen.dart         # Login UI
│   ├── signup_screen.dart        # Registration UI
│   ├── home_screen.dart          # Main dashboard (with tabs)
│   ├── courses_screen.dart       # Courses list view
│   └── course_detail_screen.dart # Course details view
├── data/
│   └── sample_courses.dart       # 5 test courses
└── firebase_options.dart         # Firebase configuration
```

---

## 🧪 Testing with Sample Data:

**App includes 5 sample courses:**

1. **Introduction to Flutter Development** (CS101)
   - Instructor: Dr. John Smith
   - Schedule: Mon/Wed/Fri, 10:00 AM
   - Credits: 3, Room 101

2. **Data Structures and Algorithms** (CS201)
   - Instructor: Prof. Sarah Johnson
   - Schedule: Tue/Thu, 2:00 PM
   - Credits: 4, Room 205

3. **Database Management Systems** (CS301)
   - Instructor: Dr. Michael Chen
   - Schedule: Mon/Wed, 1:00 PM
   - Credits: 3, Lab 301

4. **Web Development with React** (CS401)
   - Instructor: Emily Rodriguez
   - Schedule: Tue/Thu/Sat, 11:00 AM
   - Credits: 3, Room 401

5. **Cloud Computing with AWS** (CS501)
   - Instructor: Prof. David Williams
   - Schedule: Mon/Wed/Fri, 3:00 PM
   - Credits: 3, Room 501

**Current Mode:** Using local test data ✅

**To switch to Firebase:**
1. Open `lib/providers/course_provider.dart`
2. Change line 10: `bool _useTestData = false;`
3. Configure Firebase in `firebase_options.dart`

---

## 🎯 How to Use:

### First Time Setup:
1. Launch app → See Splash Screen
2. Click "Sign Up" → Create account with email/password
3. Click "Login" → Enter credentials
4. See Home Screen → Explore features

### Using the App:

**📱 Home Tab:**
- Welcome message
- Feature cards: Course Materials, Assignments, Schedule, Grades
- Quick access to main functions

**📚 Courses Tab:**
- List of all 5 sample courses
- Course cards showing: name, code, credits, instructor, location, schedule
- Click any course to see full details

**📖 Course Details:**
- Full course information displayed
- Instructor name with icon
- Classroom location with icon
- Class schedule with icon
- Student enrollment count
- Action buttons: Materials, Assignments, Grades (placeholders)

**💬 Messages Tab:**
- Coming soon (placeholder)

**👤 Profile Tab:**
- Display user name from Firebase
- User email
- Profile icon

---

## 🔧 Configuration:

### Firebase Setup (Optional):
If you want to use real Firebase instead of test data:

1. Create Firebase project on [firebase.google.com](https://firebase.google.com)
2. Add your project credentials to `firebase_options.dart`
3. Enable Authentication (Email/Password provider)
4. Create Firestore database
5. Set `_useTestData = false` in `course_provider.dart`

### Customize App:
Edit `main.dart` to change:
- App title: `title: 'Your App Name'`
- Primary color: `primarySwatch: Colors.blue`
- Font: `fontFamily: 'Poppins'`

### Add More Courses:
Edit `lib/data/sample_courses.dart`:
```dart
Course(
  id: '6',
  name: 'Your Course Name',
  code: 'CS601',
  instructor: 'Your Instructor',
  description: 'Course description...',
  students: ['student1', 'student2'],
  credits: 3,
  schedule: 'Days and time',
  classroom: 'Room number',
  createdAt: DateTime.now(),
),
```

---

## 📊 Current Status:

| Component | Status | Notes |
|-----------|--------|-------|
| Authentication | ✅ Ready | Firebase Auth integrated |
| Courses List | ✅ Complete | 5 sample courses |
| Course Details | ✅ Complete | Full information display |
| Navigation | ✅ Complete | 4 tabs working |
| Messages | 🔄 Placeholder | Coming soon |
| Grades | 🔄 Placeholder | Coming soon |
| Assignments | 🔄 Placeholder | Coming soon |
| Dark Mode | ❌ Not yet | Can be added |
| Search | ❌ Not yet | Can be added |

---

## 🐛 Troubleshooting:

**App won't start:**
```bash
flutter clean
flutter pub get
flutter run
```

**Firebase errors:**
- Set `_useTestData = true` in `course_provider.dart`
- Or configure Firebase properly

**UI looks broken:**
- Update Flutter: `flutter upgrade`
- Clear cache: `flutter clean`

**Can't login:**
- Check Firebase is configured
- Try creating new account with Sign Up
- Ensure Firebase Auth is enabled

---

## 📝 Next Features to Add:

Priority: High
- [ ] Assignments submission system
- [ ] Grades and performance tracking
- [ ] Real-time messaging

Priority: Medium
- [ ] Search and filter courses
- [ ] Push notifications
- [ ] Course materials download

Priority: Low
- [ ] Dark mode support
- [ ] Multi-language support
- [ ] Offline mode

---

## 🛠️ Technology Stack:

- **Framework:** Flutter 3.x
- **Language:** Dart
- **Backend:** Firebase (Authentication + Firestore)
- **State Management:** Provider pattern
- **UI:** Material Design 3
- **Architecture:** MVVM

---

## 📞 Support & Contributions:

Found a bug or want to contribute?
1. Fork the repository
2. Create a feature branch
3. Commit your changes
4. Push and create a Pull Request

---

## 📜 License:

This project is open source and available under the MIT License.

---

## 👨‍💻 Author:

**Poojitha**  
GitHub: [@poojithavnsk2008-sys](https://github.com/poojithavnsk2008-sys)

---

**Version:** 1.0.0  
**Last Updated:** September 14, 2026  
**Status:** ✅ Ready for Testing & Development
