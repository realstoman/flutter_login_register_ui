import 'package:flutter/material.dart';

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
            children: const <Widget>[
              Padding(
                padding: EdgeInsets.all(14.0),
                child: Text('Sign In or Join now',
                    style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Arial',
                      fontWeight: FontWeight.w500,
                      fontSize: 23,
                    )),
              ),
            ],
          )),
    );
  }
}
