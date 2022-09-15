import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  // Custom background color
  static const customBgColor = Color.fromARGB(255, 255, 255, 255);

  String _email = '';
  String _password = '';

  // Note: This is a form key which is used to hold the state of our form and this is the recommended way to do so.
  final _formKey = GlobalKey<FormState>();
  bool _rememberMe = false;

  // Sign in button styles
  final ButtonStyle btnStyle = ElevatedButton.styleFrom(
      primary: const Color.fromARGB(255, 27, 42, 74),
      elevation: 5.0,
      padding: const EdgeInsets.all(10.0),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      textStyle: const TextStyle(
          fontSize: 18,
          fontFamily: 'GeneralSans',
          fontWeight: FontWeight.w500));

  // Email input field widget
  Widget _buildEmailField() {
    return TextFormField(
      decoration: InputDecoration(
        labelText: 'Registered Email',
        contentPadding: const EdgeInsets.only(top: 10.0, left: 10.0),
        // prefixIcon: Icon(Icons.email, color: Colors.black87),
        hintText: 'Enter your email',
        fillColor: Colors.white,
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            color: Color.fromARGB(255, 27, 42, 74),
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
          borderSide: const BorderSide(
            color: Color.fromARGB(131, 177, 177, 177),
            width: 1.0,
          ),
        ),
      ),
    );
  }

  // Sign in button widget
  Widget _buildPasswordResentButton() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      width: double.infinity,
      child: ElevatedButton(
        style: btnStyle,
        onPressed: () => print('Reset link sent'),
        child: const Text('Send reset link'),
      ),
    );
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
        leading: IconButton(
          onPressed: Navigator.of(context).pop,
          icon: const Padding(
            padding: EdgeInsets.only(
              top: 21.0,
              left: 25.0,
            ),
            child: Icon(
              Icons.chevron_left,
              color: Color.fromARGB(221, 23, 23, 23),
              size: 35,
            ),
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
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 120.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Padding(
                    padding: EdgeInsets.only(bottom: 40.0),
                    child: Text('Reset your password',
                        style: TextStyle(
                            color: Colors.black87,
                            fontFamily: 'GeneralSans',
                            fontSize: 26.0,
                            fontWeight: FontWeight.w500)),
                  ),
                  Container(
                    margin: const EdgeInsets.all(20),
                    child: Form(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          _buildEmailField(),
                          const SizedBox(height: 35.0),
                          _buildPasswordResentButton(),
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
