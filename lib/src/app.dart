import 'package:flutter/material.dart';
import 'package:github_trend/src/pages/homePage.dart';


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Github starred repo',
      home: MyHomePage(),
    );
  }
}
