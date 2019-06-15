import 'package:flutter/material.dart';

import 'package:github_trend/src/widgets/repositoryCardView.dart';

class MyHomePageListView extends StatefulWidget {
  @override
  _MyHomePageListViewState createState() => _MyHomePageListViewState();
}

class _MyHomePageListViewState extends State<MyHomePageListView> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        RepositoryCardView(),
        RepositoryCardView(),
        RepositoryCardView(),
        RepositoryCardView(),
        RepositoryCardView(),
      ],
    );
  }
}
