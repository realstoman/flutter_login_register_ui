import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Container(
          child: Column(
        children: const <Widget>[
          CircleAvatar(
            radius: 5.0,
            // backgroundImage: AssetImage('/learning.svg'),
          ),
          SizedBox(height: 6.0),
          Text('Hello'),
        ],
      )),
    );
  }
}
