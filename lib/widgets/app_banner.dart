import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          alignment: Alignment.center,
          child: Column(
            children: <Widget>[
              SizedBox(
                width: 300,
                child: Image.asset('assets/images/learning.png'),
              ),
              Padding(
                padding: const EdgeInsets.all(14.0),
                child: const Text('Discover Lifelong Learning',
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    )),
              ),
            ],
          )),
    );
  }
}
