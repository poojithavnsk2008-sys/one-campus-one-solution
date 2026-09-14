## App Prototype - UI/UX Walkthrough

This document provides a visual and detailed walkthrough of the "One Campus One Solution" app prototype.

---

## 🎨 App Screen Flows

### **Screen 1: Splash Screen (1-2 seconds)**
```
┌─────────────────────────────────┐
│                                 │
│                                 │
│         📚 ONE CAMPUS           │
│        ONE SOLUTION             │
│                                 │
│      [Loading Spinner]          │
│                                 │
│                                 │
└─────────────────────────────────┘
```
**Purpose:** App initialization, check user login status
**Duration:** Auto-navigates to Login or Home after loading

---

### **Screen 2: Login Screen**
```
┌─────────────────────────────────┐
│     < Back                      │
├─────────────────────────────────┤
│                                 │
│      LOGIN TO YOUR ACCOUNT      │
│                                 │
│  ┌───────────────────────────┐  │
│  │ Email Address             │  │
│  │ student@university.com    │  │
│  └───────────────────────────┘  │
│                                 │
│  ┌───────────────────────────┐  │
│  │ Password                  │  │
│  │ ••••••••                  │  │
│  └───────────────────────────┘  │
│                                 │
│  [ ] Remember me                │
│                                 │
│  ┌───────────────────────────┐  │
│  │      LOGIN                │  │
│  └───────────────────────────┘  │
│                                 │
│  Don't have account? Sign Up    │
│                                 │
└─────────────────────────────────┘
```

**Fields:**
- Email input with validation
- Password input with show/hide toggle
- "Remember me" checkbox
- Login button (full width)
- Sign up link

**Flow:** 
- Valid email + password → Home Screen
- Invalid credentials → Error message
- Click "Sign Up" → Registration Screen

---

### **Screen 3: Sign Up Screen**
```
┌─────────────────────────────────┐
│     < Back                      │
├─────────────────────────────────┤
│                                 │
│      CREATE NEW ACCOUNT         │
│                                 │
│  ┌───────────────────────────┐  │
│  │ Full Name                 │  │
│  │ John Doe                  │  │
│  └───────────────────────────┘  │
│                                 │
│  ┌───────────────────────────┐  │
│  │ Email Address             │  │
│  │ john@university.com       │  │
│  └───────────────────────────┘  │
│                                 │
│  ┌───────────────────────────┐  │
│  │ Password                  │  │
│  │ ••••••••                  │  │
│  └───────────────────────────┘  │
│                                 │
│  ┌───────────────────────────┐  │
│  │ Confirm Password          │  │
│  │ ••••••••                  │  │
│  └───────────────────────────┘  │
│                                 │
│  ┌───────────────────────────┐  │
│  │    CREATE ACCOUNT         │  │
│  └───────────────────────────┘  │
│                                 │
│  Already have account? Login    │
│                                 │
└─────────────────────────────────┘
```

**Fields:**
- Full Name input
- Email input with validation
- Password input
- Confirm Password input
- Create Account button

**Validations:**
- Email format check
- Password strength check (min 6 characters)
- Password match verification

---

### **Screen 4: Home Screen (Dashboard)**
```
┌─────────────────────────────────┐
│  One Campus One Solution   ≡ 🚪 │
├─────────────────────────────────┤
│                                 │
│    Welcome to Campus 👋         │
│    Hi, John Doe!                │
│                                 │
├─────────────────────────────────┤
│                                 │
│  ┌─────────────────────────┐    │
│  │ 📚 COURSE MATERIALS     │    │
│  │ Access all course mat.. │    │
│  │              [→]        │    │
│  └─────────────────────────┘    │
│                                 │
│  ┌─────────────────────────┐    │
│  │ 📝 ASSIGNMENTS          │    │
│  │ View and submit assign..│    │
│  │              [→]        │    │
│  └─────────────────────────┘    │
│                                 │
│  ┌─────────────────────────┐    │
│  │ 📅 SCHEDULE             │    │
│  │ Check your class sched..│    │
│  │              [→]        │    │
│  └─────────────────────────┘    │
│                                 │
│  ┌─────────────────────────┐    │
│  │ 📊 GRADES               │    │
│  │ Track your performance..│    │
│  │              [→]        │    │
│  └─────────────────────────┘    │
│                                 │
├─────────────────────────────────┤
│ 🏠     📚     💬     👤        │
│HOME  COURSES MESSAGES PROFILE   │
└─────────────────────────────────┘
```

**Components:**
- App bar with title and logout button
- Welcome message personalized with user name
- 4 feature cards (clickable, with icons & descriptions)
- Bottom navigation bar with 4 tabs

**Navigation:**
- Click card → Opens relevant section
- Bottom tabs → Switch between sections

---

### **Screen 5: Courses Screen (Main Tab)**
```
┌─────────────────────────────────┐
│  One Campus One Solution   ≡ 🚪 │
├─────────────────────────────────┤
│         COURSES                 │
├─────────────────────────────────┤
│                                 │
│  ┌─────────────────────────┐    │
│  │ 📚 FLUTTER DEVELOPMENT  │ 3  │
│  │ CS101                   │cr..│
│  │                         │    │
│  │ Learn Flutter widgets   │    │
│  │ and state management    │    │
│  │                         │    │
│  │ 👨‍🏫 Dr. John Smith      │    │
│  │ 📍 Room 101, Building A │    │
│  │ 🕐 Mon/Wed/Fri 10 AM    │    │
│  └─────────────────────────┘    │
│                                 │
│  ┌─────────────────────────┐    │
│  │ 📚 DATA STRUCTURES      │ 4  │
│  │ CS201                   │cr..│
│  │                         │    │
│  │ Master arrays, linked.. │    │
│  │ lists, trees & graphs   │    │
│  │                         │    │
│  │ 👨‍🏫 Prof. Sarah Johnson  │    │
│  │ 📍 Room 205, Building B │    │
│  │ 🕐 Tue/Thu 2:00 PM      │    │
│  └─────────────────────────┘    │
│                                 │
│  ┌─────────────────────────┐    │
│  │ 📚 DATABASE MANAGEMENT  │ 3  │
│  │ CS301                   │cr..│
│  │                         │    │
│  │ Learn SQL, database     │    │
│  │ design & normalization  │    │
│  │                         │    │
│  │ 👨‍🏫 Dr. Michael Chen     │    │
│  │ 📍 Lab 301, Building C  │    │
│  │ 🕐 Mon/Wed 1:00 PM      │    │
│  └─────────────────────────┘    │
│                                 │
│  [Scroll for more courses...]   │
│                                 │
├─────────────────────────────────┤
│ 🏠     📚     💬     👤        │
│HOME  COURSES MESSAGES PROFILE   │
└─────────────────────────────────┘
```

**Card Contents:**
- Course title
- Course code
- Credits badge (top right)
- Brief description (2 lines max)
- Instructor name with icon
- Classroom location with icon
- Schedule with icon

**Interactions:**
- Tap card → Course Detail Screen
- Scroll → View more courses
- Each card is clickable

---

### **Screen 6: Course Detail Screen**
```
┌─────────────────────────────────┐
│  < Flutter Development     ≡ 🚪 │
├─────────────────────────────────┤
│                                 │
│  ╔═════════════════════════════╗│
│  ║ FLUTTER DEVELOPMENT        ║│
│  ║ Code: CS101                 ║│
│  ╚═════════════════════════════╝│
│                                 │
├─────────────────────────────────┤
│                                 │
│  DESCRIPTION                    │
│  ─────────────────────────────  │
│  Learn the basics of Flutter    │
│  development, including widgets,│
│  state management, and building │
│  responsive mobile applications.│
│                                 │
│  COURSE INFORMATION             │
│  ─────────────────────────────  │
│                                 │
│  👨‍🏫 INSTRUCTOR                  │
│  Dr. John Smith                 │
│                                 │
│  📍 CLASSROOM                   │
│  Room 101, Building A           │
│                                 │
│  🕐 SCHEDULE                    │
│  Monday, Wednesday, Friday      │
│  10:00 AM                       │
│                                 │
│  🎓 CREDITS                     │
│  3                              │
│                                 │
│  👥 ENROLLED STUDENTS           │
│  23 students                    │
│                                 │
├─────────────────────────────────┤
│                                 │
│  ┌───────────┐  ┌───────────┐  │
│  │ 📥 MATERIAL│  │ 📝ASSIGNM │  │
│  │          │  │ ENT       │  │
│  └───────────┘  └───────────┘  │
│                                 │
│  ┌──────────────────────────┐   │
│  │  📊 VIEW GRADES          │   │
│  └──────────────────────────┘   │
│                                 │
└─────────────────────────────────┘
```

**Sections:**
1. **Header** - Gradient background with course title
2. **Description** - Course overview
3. **Course Info** - Instructor, location, schedule, credits, students
4. **Action Buttons** - Materials, Assignments, Grades

**Buttons:**
- Materials → Shows course documents (coming soon)
- Assignments → View/submit work (coming soon)
- Grades → Shows performance (coming soon)

---

### **Screen 7: Messages Screen**
```
┌─────────────────────────────────┐
│  One Campus One Solution   ≡ 🚪 │
├─────────────────────────────────┤
│       MESSAGES                  │
├─────────────────────────────────┤
│                                 │
│         💬                      │
│                                 │
│    MESSAGES                     │
│                                 │
│    Coming soon...               │
│                                 │
│  Connect with instructors and   │
│  classmates. Feature coming in  │
│  next update!                   │
│                                 │
│                                 │
│                                 │
│                                 │
├─────────────────────────────────┤
│ 🏠     📚     💬     👤        │
│HOME  COURSES MESSAGES PROFILE   │
└─────────────────────────────────┘
```

**Status:** Placeholder screen (feature coming soon)

---

### **Screen 8: Profile Screen**
```
┌─────────────────────────────────┐
│  One Campus One Solution   ≡ 🚪 │
├─────────────────────────────────┤
│       PROFILE                   │
├─────────────────────────────────┤
│                                 │
│            👤                   │
│         [Avatar Circle]         │
│                                 │
│         JOHN DOE                │
│                                 │
│    john@university.com          │
│                                 │
│                                 │
│  ┌─────────────────────────┐    │
│  │  📚 MY COURSES (4)      │    │
│  │                         │    │
│  │  > Flutter Development  │    │
│  │  > Data Structures      │    │
│  │  > Web Development      │    │
│  │  > Cloud Computing      │    │
│  │                         │    │
│  └─────────────────────────┘    │
│                                 │
│  ┌─────────────────────────┐    │
│  │  ⚙️  SETTINGS           │    │
│  │                         │    │
│  │  > Edit Profile         │    │
│  │  > Change Password      │    │
│  │  > Notifications        │    │
│  │  > Privacy Settings     │    │
│  │                         │    │
│  └─────────────────────────┘    │
│                                 │
│  ┌─────────────────────────┐    │
│  │  🚪 LOGOUT             │    │
│  └─────────────────────────┘    │
│                                 │
├─────────────────────────────────┤
│ 🏠     📚     💬     👤        │
│HOME  COURSES MESSAGES PROFILE   │
└─────────────────────────────────┘
```

**Sections:**
- User avatar and name
- User email
- My Courses list (clickable)
- Settings options
- Logout button

---

## 🎨 Design System

### **Color Palette:**
```
Primary Blue:      #2196F3
Secondary Blue:    #1976D2
Dark Blue:         #0D47A1
Light Blue:        #E3F2FD

Success Green:     #4CAF50
Warning Orange:    #FF9800
Error Red:         #F44336

Dark Text:         #212121
Gray Text:         #757575
Light Gray:        #E0E0E0
White:             #FFFFFF
```

### **Typography:**
```
App Title:      Font size 28, Bold (Poppins)
Heading:        Font size 18, Bold
Subheading:     Font size 16, Medium
Body Text:      Font size 14, Regular
Caption:        Font size 12, Regular
```

### **Spacing:**
```
Padding:    16 (default), 20 (large), 12 (small), 8 (tiny)
Margin:     15 (default), 20 (large)
Border Radius: 10 (default), 12 (cards), 20 (buttons)
```

### **Components:**

**Buttons:**
- Primary: Full width, blue background, white text
- Secondary: Outlined, blue border
- Icon buttons: Circular with icons

**Cards:**
- Elevated with shadow
- Rounded corners (12px)
- 16px padding inside
- Clickable with ripple effect

**Input Fields:**
- Border or underline style
- 44px minimum height
- Clear focus state

---

## 🔄 User Flows

### **Flow 1: New User Journey**
```
Splash → Login Screen → Sign Up → Create Account 
→ Home Screen → Explore Features
```

### **Flow 2: Existing User Journey**
```
Splash → Login Screen → Enter Credentials 
→ Home Screen → Navigate Tabs
```

### **Flow 3: Course Discovery**
```
Home → Courses Tab → View List 
→ Click Course → See Details 
→ Click Materials/Assignments/Grades
```

### **Flow 4: Logout**
```
Profile Tab → Scroll Down → Click Logout 
→ Confirm → Login Screen
```

---

## 📱 Responsive Design

### **Mobile (375x667 - iPhone SE):**
- Single column layout
- Full-width cards
- Bottom navigation visible always
- Touch-friendly targets (min 44x44)

### **Tablet (768x1024 - iPad):**
- Could show 2-column course list (future)
- Larger padding
- Split-view possible

---

## ✨ Animations & Interactions

```
Splash Screen:    Fade in logo + spinner
Transitions:      Slide from right (new screen)
Button Press:     Ripple effect
Loading:          Circular spinner
Error:            Shake animation + red color
Success:          Checkmark + green color
```

---

## 📊 Current Implementation Status

| Screen | Status | Notes |
|--------|--------|-------|
| Splash | ✅ Complete | Shows for 1-2 seconds |
| Login | ✅ Complete | Firebase integrated |
| Sign Up | ✅ Complete | Email validation |
| Home | ✅ Complete | 4 feature cards |
| Courses | ✅ Complete | 5 sample courses |
| Course Detail | ✅ Complete | Full info displayed |
| Messages | 🔄 Placeholder | Coming soon |
| Profile | ✅ Complete | Shows user info |

---

## 🎯 Next Phase - Features to Add

1. **Assignments System** - Submit homework
2. **Grades Dashboard** - View marks
3. **Real Messaging** - Chat interface
4. **Search/Filter** - Find courses
5. **Dark Mode** - Night theme
6. **Notifications** - Push alerts

---

**Prototype Version:** 1.0  
**UI Framework:** Material Design 3  
**Last Updated:** September 14, 2026
