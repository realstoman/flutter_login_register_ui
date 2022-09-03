import 'package:flutter/material.dart';
// import 'package:flutter_svg/svg.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          child: Column(
        children: const <Widget>[
          // CircleAvatar(
          //   radius: 5.0,
          //   // backgroundImage: AssetImage('/learning.svg'),
          //   // child: SvgImage('assets/images/learning.svg'),
          // ),
          // SizedBox(
          //   height: 100,
          //   width: 100,
          //   child: SvgPicture.asset("assets/flag.svg", //asset location
          //       color: Colors.red, //svg color
          //       semanticsLabel: 'SVG From asset folder.'),
          // ),
          Text('Hello'),
        ],
      )),
    );
  }
}
