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
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        width: 280,
                        height: 42,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            primary: Colors.black87,
                            textStyle: const TextStyle(fontSize: 16),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen())),
                          child: const Text('Join now',
                              style: TextStyle(
                                  fontFamily: 'GeneralSans',
                                  fontWeight: FontWeight.w500)),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 280,
                      height: 42,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 16),
                          side: const BorderSide(color: Colors.white60),
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        onPressed: () => Navigator.of(context).push(
                            MaterialPageRoute(
                                builder: (context) => const RegisterScreen())),
                        child: const Text('Continue with GitHub',
                            style: TextStyle(
                                fontFamily: 'GeneralSans',
                                fontWeight: FontWeight.w400)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        width: 280,
                        height: 42,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 16),
                            side: const BorderSide(color: Colors.white60),
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          onPressed: () => Navigator.of(context).push(
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen())),
                          child: const Text('Continue with Google',
                              style: TextStyle(
                                  fontFamily: 'GeneralSans',
                                  fontWeight: FontWeight.w400)),
                        ),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 16),
                          side: const BorderSide(color: Colors.transparent)),
                      onPressed: () => Navigator.of(context).push(
                          MaterialPageRoute(
                              builder: (context) => const LoginScreen())),
                      child: const Text('Sign in',
                          style: TextStyle(
                              fontFamily: 'GeneralSans',
                              fontWeight: FontWeight.w500)),
                    ),
                  ],
                ),
              ),
            ],
          )),
    );
  }
}
