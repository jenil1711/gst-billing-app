# GST Billing App

A Flutter application for managing GST billing, products, customers, and invoices.

## Features

- 🔐 Authentication (Email/Password)
- 🎨 Theme Support (Light/Dark)
- 📦 Product Management
- 📝 Invoice Generation
- 👥 Customer Management
- 📊 Reports and Analytics

## Tech Stack

- Flutter
- Firebase Authentication
- Firebase Firestore
- Riverpod for State Management
- SharedPreferences for Local Storage

## Getting Started

1. Clone the repository
2. Install dependencies:
   ```bash
   flutter pub get
   ```
3. Add your Firebase configuration:
   - Place `google-services.json` in `android/app/`
4. Run the app:
   ```bash
   flutter run
   ```

## Project Structure

```
lib/
├── models/         # Data models
├── providers/      # State management
├── screens/        # UI screens
├── theme/          # App theming
└── utils/          # Utility functions
```

## Contributing

1. Fork the repository
2. Create your feature branch
3. Commit your changes
4. Push to the branch
5. Create a Pull Request

## License

This project is licensed under the MIT License.
