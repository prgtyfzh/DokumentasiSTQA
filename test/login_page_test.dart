import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:exercise_paml/login_page.dart';

void main() {
  group('LoginPage Widget Tests', () {
    testWidgets('Renders UI elements', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(home: LoginPage()));

      // Verify that the Image widget is rendered.
      expect(find.byType(Image), findsOneWidget);

      // Verify that the "Let's get started" text is rendered.
      expect(find.text("Let's get started."), findsOneWidget);

      // Verify that the "There's No Sense In Going Out Of..." text is rendered.
      expect(
          find.text(
              "There's No Sense In Going Out Of \n Your Way To Get Somebody To Like You."),
          findsOneWidget);

      // Verify that the Name and Password text fields are rendered.
      expect(find.text('Name'), findsOneWidget);
      expect(find.text('Password'), findsOneWidget);

      // Verify that the "Sign In" button is rendered.
      expect(find.text('Sign In'), findsOneWidget);

      // Verify that the "Don't have an account?" text and "Sign Up" button are rendered.
      expect(find.text("Don't have an account?"), findsOneWidget);
      expect(find.text('Sign Up'), findsOneWidget);
    });

    testWidgets('Validates form input', (WidgetTester tester) async {
      // Build our app and trigger a frame.
      await tester.pumpWidget(MaterialApp(home: LoginPage()));

      // Enter an invalid name (less than 6 characters).
      await tester.enterText(find.byType(TextFormField).first, 'abc');

      // Enter a valid password.
      await tester.enterText(find.byType(TextFormField).last, 'validpassword');

      // Tap the "Sign In" button.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // Expect to find an error message for the name field.
      expect(find.text('Name must be at least 6 characters'), findsOneWidget);

      // Enter a valid name.
      await tester.enterText(find.byType(TextFormField).first, 'username');

      // Tap the "Sign In" button again.
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      // Expect no error messages to be present.
      expect(find.text('Name must be at least 6 characters'), findsNothing);
      expect(find.text('Password must be at least 6 characters'), findsNothing);
      expect(find.text('Please enter your name'), findsNothing);
      expect(find.text('Please enter your password'), findsNothing);
    });
  });
}
