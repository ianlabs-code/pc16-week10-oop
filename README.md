# PC16 Week 10 — Object-Oriented Programming in Dart (Part 2)

## Student information
- **Name:** Andrian Almaden
- **Section:** [Enter your section]
- **Course:** PC16 — Mobile Development with Lab

## Important note
This is a new beginner-friendly example because the Week 9 source file was not available. The Week 10 guide asks students to enhance their own Week 9 class. Ask your instructor whether this replacement example is acceptable if they require the original class.

## What the program demonstrates
- **Abstract class:** `Vehicle` defines shared fields and the abstract `move()` method.
- **Inheritance:** `Car` and `Motorcycle` extend `Vehicle`.
- **Polymorphism:** Each derived class overrides `move()` with different behavior.
- **Mixin:** `MaintenanceLogger` is applied with `with` to `ServiceCenter`, a class outside the `Vehicle` inheritance hierarchy.
- **Objects and constructors:** `Car`, `Motorcycle`, and `ServiceCenter` are instantiated in `main()`.

## Requirements
Install the Dart SDK and Visual Studio Code with the Dart extension.

## Run from VS Code
1. Open this folder (the one containing `pubspec.yaml`) in VS Code.
2. Open **Terminal → New Terminal**.
3. Run:

```powershell
dart --version
dir
dart pub get
dart format .
dart run
```

Alternatively, run the source file directly with `dart run bin/week10_oop.dart`.

Expected output is saved in `expected_output.txt`.

## Before submission
1. Replace `[Enter your section]` with your real section.
2. Run the program and compare the terminal with `expected_output.txt`.
3. Read the code and be ready to explain inheritance, polymorphism, abstract classes, and mixins.
4. Submit the `.dart` file or your GitHub repository link, depending on your instructor's instruction.
