# Faceback

A Facebook-style social profile app built with Flutter. It features a login screen, a saved-accounts picker, and five user profile pages with cover photos, profile pictures, friends count, photo posts, and a logout confirmation dialog.

## Features

- **Login screen** with email/password form validation and a background image
- **Saved accounts screen** — pick a profile picture to go straight to that account's login page
- **Five profile screens** (Jessamae, Macy, Martin, Drei, Mannuel), each with:
  - Cover photo and circular profile picture
  - Friends count
  - Photo gallery / posts
  - Song/Spotify-style section
  - Logout with confirmation dialog
- Assets bundled locally under `assets/images/`

## Requirements

- [Flutter SDK](https://docs.flutter.dev/get-started/install) (Dart SDK `^3.5.3`)
- A platform toolchain for the target device:
  - **Windows**: Visual Studio with Desktop development with C++
  - **Android**: Android Studio + an Android device/emulator
  - **iOS**: Xcode (macOS only)
  - **Web**: Chrome

Verify your setup:

```bash
flutter doctor
```

## Getting Started

```bash
# 1. Install dependencies
flutter pub get

# 2. Run the app (pick one)
flutter run -d windows      # Windows desktop
flutter run -d chrome       # Web
flutter run -d android      # Android device/emulator
flutter run -d ios          # iOS simulator/device (macOS)
```

Or list available devices first with `flutter devices` and run `flutter run` with no arguments.

## Test Accounts

Credentials are hardcoded — no backend is required.

| Name         | Email          | Password |
| ------------ | -------------- | -------- |
| Jessamae     | jss@gmail.com  | jss123   |
| Macy         | mcy@gmail.com  | mcy123   |
| Martin       | mj@gmail.com   | mj123    |
| Drei         | ja@gmail.com   | ja123    |
| Mannuel      | mnl@gmail.com  | mnl123   |

Alternatively, tap **"Switch to saved accounts"** on the login screen and choose a profile picture, then log in from that account's page.

## Project Structure

```
lib/
├── main.dart                  # App entry point, launches LoginScreen
└── screens/
    ├── login.dart             # Email/password login form
    ├── saved_acc_login.dart   # Saved accounts picker + per-account login pages
    ├── jessa.dart             # Jessamae's profile screen
    ├── macy.dart              # Macy's profile screen
    ├── martin.dart            # Martin's profile screen
    ├── drei.dart              # Drei's profile screen
    └── manuel.dart            # Mannuel's profile screen
assets/
└── images/                    # Backgrounds, avatars, cover photos, posts
```

## Run Tests

```bash
flutter test
```

## Build for Release

```bash
flutter build windows   # Windows installer/exe
flutter build web       # Web bundle
flutter build apk       # Android APK
flutter build ios       # iOS (requires macOS + Xcode)
```

## Dependencies

- [`flutter_emoji`](https://pub.dev/packages/flutter_emoji) — emoji support
- [`cupertino_icons`](https://pub.dev/packages/cupertino_icons) — iOS-style icons
- [`flutter_lints`](https://pub.dev/packages/flutter_lints) (dev) — lint rules

## Learn More

- [Flutter documentation](https://docs.flutter.dev/)
- [Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Flutter cookbook](https://docs.flutter.dev/cookbook)
