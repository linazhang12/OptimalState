// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility that Flutter provides. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:optimal_state/login_page.dart';

void main() {
  Widget makeTestableWidget({Widget child}) {
    return MaterialApp(
      home: child,
    );
  }

  testWidgets('Login screen test', (WidgetTester tester) async {
    LoginPage loginScreen = LoginPage();

    await tester.pumpWidget(makeTestableWidget(child: loginScreen));

    expect(find.byType(FlutterLogo), findsOneWidget);
    expect(find.byType(OutlineButton), findsOneWidget);
    expect(find.text('Sign in with Google'), findsOneWidget);

    print('Found Flutter logo.');
    print('Button found.');
    print('Found the login button text.');
  });
}