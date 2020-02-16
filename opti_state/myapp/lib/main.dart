import 'package:flutter/material.dart';
import 'home_screen.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new HomeScreen(), //calling chat_screen_item.dart
    );
  }
}