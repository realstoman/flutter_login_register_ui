import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Custom color
  static const customBgColor = Color.fromARGB(255, 27, 42, 74);

  Widget _buildEmailTF() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Email',
              style: TextStyle(color: Colors.white, fontFamily: 'GeneralSans')),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(),
            height: 60.0,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(Icons.email, color: Colors.white),
                hintText: 'Enter your email',
              ),
            ),
          ),
        ]);
  }

  Widget _buildPasswordTF() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Password',
              style: TextStyle(color: Colors.white, fontFamily: 'GeneralSans')),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(),
            height: 60.0,
            child: const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.white),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(Icons.lock, color: Colors.white),
                hintText: 'Enter your password',
              ),
            ),
          ),
        ]);
  }

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
      body: Stack(
        children: <Widget>[
          Container(
            height: double.infinity,
            child: SingleChildScrollView(
              physics: const AlwaysScrollableScrollPhysics(),
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text('Sign In',
                      style: TextStyle(
                          color: Colors.white,
                          fontFamily: 'GeneralSans',
                          fontSize: 30.0,
                          fontWeight: FontWeight.w500)),
                  const SizedBox(height: 30.0),
                  _buildEmailTF(),
                  SizedBox(height: 10.0),
                  _buildPasswordTF(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
