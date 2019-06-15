import 'package:flutter/material.dart';

import 'package:github_trend/src/widget/repositoryCardView.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trending Repos'),
      ),
      body: ListView(
        children: <Widget>[
          RepositoryCardView(),
        ],
      ),
    );
  }
}
