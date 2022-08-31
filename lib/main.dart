import 'package:flutter/material.dart';
import 'package:flutter_login_register_ui/screens/home_screen.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // Custom color
  static const primaryColor = Color(0x1B2A4A);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Stoman',
      theme: ThemeData(
        primaryColor: primaryColor,
      ),
      home: const HomeScreen(),
    );
  }
}
