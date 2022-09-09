import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Custom color
  static const customBgColor = Color.fromARGB(255, 27, 42, 74);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: customBgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Padding(
          padding: EdgeInsets.only(
            left: 10.0,
            top: 33.0,
          ),
        ),
        elevation: 0.0,
        centerTitle: false,
      ),
      body: Column(children: const <Widget>[
        Padding(
          padding: EdgeInsets.all(14.0),
          child: Text('Login to your account',
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Arial',
                fontWeight: FontWeight.w500,
                fontSize: 23,
              )),
        ),
      ]),
    );
  }
}
