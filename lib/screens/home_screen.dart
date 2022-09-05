import 'package:flutter/material.dart';
import 'package:flutter_login_register_ui/widgets/app_banner.dart';
import 'package:flutter_login_register_ui/widgets/app_home_buttons.dart';

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
          title: const Padding(
            padding: EdgeInsets.only(
              left: 10.0,
              top: 33.0,
            ),
            child: Text('Stoman',
                style: TextStyle(
                  fontSize: 26.0,
                  fontFamily: 'Arial',
                  fontWeight: FontWeight.bold,
                )),
          ),
          elevation: 0.0,
          centerTitle: false,
        ),
        body: Column(
          children: const <Widget>[
            AppBanner(),
            AppHomeButtons(),
          ],
        ));
  }
}
