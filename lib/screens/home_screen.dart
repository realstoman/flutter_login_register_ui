import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // Custom color
  static const customBgColor = Color.fromARGB(255, 27, 42, 74);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Stoman',
            style: TextStyle(
              fontSize: 28.0,
              fontWeight: FontWeight.bold,
            )),
        elevation: 0.0,
        centerTitle: false,
      ),
    );
  }
}
