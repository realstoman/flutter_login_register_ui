import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  // Custom color
  static const customBgColor = Color.fromARGB(255, 255, 255, 255);

  Widget _buildEmailTF() {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text('Email',
              style: TextStyle(color: Colors.white, fontFamily: 'GeneralSans')),
          const SizedBox(height: 10.0),
          Container(
            alignment: Alignment.centerLeft,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            height: 60.0,
            child: const TextField(
              keyboardType: TextInputType.emailAddress,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(Icons.email, color: Colors.black87),
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
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            height: 60.0,
            child: const TextField(
              obscureText: true,
              style: TextStyle(color: Colors.black87),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: EdgeInsets.only(top: 14.0),
                prefixIcon: Icon(Icons.lock, color: Colors.black87),
                hintText: 'Enter your password',
              ),
            ),
          ),
        ]);
  }

  String _email = '';
  String _password = '';

  // Note: This is a form key which is used to hold the state of our form and this is the recommended way to do so.
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  Widget _buildEmailField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Email'),
    );
  }

  Widget _buildPasswordField() {
    return TextFormField(
      decoration: const InputDecoration(labelText: 'Password'),
    );
  }

  @override
  Widget build(BuildContext context) {
    final ButtonStyle btnStyle = ElevatedButton.styleFrom(
        textStyle: const TextStyle(
            fontSize: 20,
            fontFamily: 'GeneralSans',
            fontWeight: FontWeight.w500));

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
                  const Text('Sign in to Skill Academy',
                      style: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'GeneralSans',
                          fontSize: 26.0,
                          fontWeight: FontWeight.w500)),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _buildEmailField(),
                          const SizedBox(height: 8.0),
                          _buildPasswordField(),
                          const SizedBox(height: 50.0),
                          ElevatedButton(
                            style: btnStyle,
                            onPressed: () {},
                            child: const Text('Sign in'),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
