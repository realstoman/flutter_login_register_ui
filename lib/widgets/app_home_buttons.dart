import 'package:flutter/material.dart';
import 'package:flutter_login_register_ui/screens/login_screen.dart';
import 'package:flutter_login_register_ui/screens/register_screen.dart';

class AppHomeButtons extends StatefulWidget {
  const AppHomeButtons({Key? key}) : super(key: key);

  @override
  State<AppHomeButtons> createState() => _AppHomeButtonsState();
}

class _AppHomeButtonsState extends State<AppHomeButtons> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: SizedBox(
                        width: 280,
                        height: 42,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.black87,
                              textStyle: const TextStyle(fontSize: 16)),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen())),
                          child: const Text('Join now'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: SizedBox(
                        width: 280,
                        height: 42,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.black87,
                              textStyle: const TextStyle(fontSize: 16)),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen())),
                          child: const Text('Continue with GitHub'),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 3.0),
                      child: SizedBox(
                        width: 280,
                        height: 42,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                              backgroundColor: Colors.white,
                              primary: Colors.black87,
                              textStyle: const TextStyle(fontSize: 16)),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen())),
                          child: const Text('Continue with Google'),
                        ),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 18)),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen())),
                      child: const Text('Sign in'),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
