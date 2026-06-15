# Mobile App Lab - UI Design in Flutter

This Flutter project was created for the ITS-537 Mobile Application course lab assignment.

## Description

The app demonstrates a simple mobile UI using Flutter widgets. It includes two screens:

1. Home Screen - uses `StatelessWidget` to display static content.
2. Interactive Screen - uses `StatefulWidget` to dynamically update text when a button is pressed.

## Widgets Used

- `MaterialApp`
- `Scaffold`
- `AppBar`
- `Center`
- `Padding`
- `Column`
- `Text`
- `ElevatedButton`
- `Navigator`
- `StatelessWidget`
- `StatefulWidget`

## StatefulWidget Interaction

The second screen uses a `StatefulWidget`. When the user presses the "Change Text" button, the app calls `setState()` and updates the displayed message. This demonstrates how Flutter manages dynamic content and refreshes the user interface based on user interaction.

## How to Run

```bash
flutter pub get
flutter run
```

## Screenshots

Screenshots are included in the `screenshots` folder.
