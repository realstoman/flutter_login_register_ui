import 'package:flutter/material.dart';

class AppBanner extends StatelessWidget {
  const AppBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 100,
        child: Column(
          children: <Widget>[
            CircleAvatar(
              radius: 5.0,
              backgroundImage: AssetImage('/learning.svg'),
            ),
            Text('Hello'),
          ],
        ));
  }
}
