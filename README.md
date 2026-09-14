# One Campus One Solution

A comprehensive Flutter application designed to bring students and teachers together on a unified campus platform.

## Features

- 🔐 **User Authentication**: Secure login and signup for students and teachers
- 📚 **Course Management**: Access course materials and resources
- 📝 **Assignments**: Submit and track assignments
- 📅 **Schedule**: View class schedules and important dates
- 📊 **Grades**: Track academic performance
- 💬 **Messaging**: Communication between students and teachers
- 👤 **User Profiles**: Personalized user profiles

## Tech Stack

- **Frontend**: Flutter 3.0+
- **Backend**: Firebase (Authentication, Firestore, Storage)
- **State Management**: Provider
- **Architecture**: MVVM

## Getting Started

### Prerequisites

- Flutter SDK (3.0 or higher)
- Dart SDK
- Firebase Account
- Android Studio or Xcode (for emulators)

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/poojithavnsk2008-sys/one-campus-one-solution.git
   cd one-campus-one-solution
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Setup Firebase**
   - Create a new Firebase project
   - Update `lib/firebase_options.dart` with your Firebase credentials
   - Enable Authentication (Email/Password)
   - Create a Firestore database

4. **Run the app**
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── main.dart                 # App entry point
├── firebase_options.dart     # Firebase configuration
├── providers/                # State management
│   └── auth_provider.dart
├── screens/                  # UI screens
│   ├── splash_screen.dart
│   ├── login_screen.dart
│   ├── signup_screen.dart
│   └── home_screen.dart
└── models/                   # Data models

```

## Key Components

### Authentication Provider
Manages user authentication state and Firebase Auth integration.

### Screens
- **SplashScreen**: Initial loading screen
- **LoginScreen**: User login interface
- **SignupScreen**: New user registration
- **HomeScreen**: Main dashboard with navigation

## Future Enhancements

- [ ] Real-time notifications
- [ ] Video conferencing for lectures
- [ ] Assignment submission with file uploads
- [ ] Grade analytics dashboard
- [ ] Discussion forums
- [ ] Mobile app for both iOS and Android
- [ ] Offline mode support
- [ ] Multi-language support

## Contributing

We welcome contributions! Please feel free to submit a Pull Request.

## License

This project is open source and available under the MIT License.

## Support

For support, email support@onecampusonesolution.com or open an issue in the repository.

## Authors

- **Poojitha** - *Initial work* - [GitHub](https://github.com/poojithavnsk2008-sys)

---

**Happy Coding! 🚀**
