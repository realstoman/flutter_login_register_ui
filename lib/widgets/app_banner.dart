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
              const Padding(
                padding: EdgeInsets.all(14.0),
                child: Text('Discover Lifelong Learning',
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
