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
                        width: 320,
                        height: 44,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,
                            primary: Colors.black87,
                            textStyle: const TextStyle(fontSize: 18),
                            side:
                                const BorderSide(color: Colors.white, width: 1),
                            elevation: 3,
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
                      width: 320,
                      height: 44,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 18),
                          side: const BorderSide(color: Colors.white, width: 1),
                          elevation: 3,
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(20))),
                        ),
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) => AlertDialog(
                              title: const Text('Coming Soon...',
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'GeneralSans')),
                              content: const Text(
                                  "I'll add this feature in the future with GitHub auth. Check back soon.",
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: 'GeneralSans')),
                              actions: [
                                TextButton(
                                  child: const Text('Ok Boss',
                                      style: TextStyle(
                                          fontSize: 20,
                                          fontWeight: FontWeight.w500,
                                          fontFamily: 'GeneralSans')),
                                  onPressed: () => Navigator.pop(context),
                                )
                              ],
                            ),
                          );
                        },
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 40,
                              child: Image.asset(
                                  'assets/images/github-icon.png',
                                  width: 40,
                                  height: 20),
                            ),
                            const Text('Continue with GitHub',
                                style: TextStyle(
                                    fontFamily: 'GeneralSans',
                                    fontWeight: FontWeight.w500)),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      child: SizedBox(
                        width: 320,
                        height: 44,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            primary: Colors.white,
                            textStyle: const TextStyle(fontSize: 18),
                            side:
                                const BorderSide(color: Colors.white, width: 1),
                            elevation: 3,
                            shape: const RoundedRectangleBorder(
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                          ),
                          onPressed: () {
                            showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text('Coming Soon...',
                                    style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.w600,
                                        fontFamily: 'GeneralSans')),
                                content: const Text(
                                    "I'll add this feature in the future with Google Firebase. Check back soon.",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'GeneralSans')),
                                actions: [
                                  TextButton(
                                    child: const Text('Ok Boss',
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'GeneralSans')),
                                    onPressed: () => Navigator.pop(context),
                                  )
                                ],
                              ),
                            );
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                width: 40,
                                child: Image.asset(
                                    'assets/images/google-icon.png',
                                    width: 40,
                                    height: 20),
                              ),
                              const Text('Continue with Google',
                                  style: TextStyle(
                                      fontFamily: 'GeneralSans',
                                      fontWeight: FontWeight.w500)),
                            ],
                          ),
                        ),
                      ),
                    ),
                    OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          primary: Colors.white,
                          textStyle: const TextStyle(fontSize: 18),
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
