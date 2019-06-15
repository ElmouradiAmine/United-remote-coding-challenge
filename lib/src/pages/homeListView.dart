import 'package:flutter/material.dart';

import 'package:github_trend/src/widgets/repositoryCardView.dart';
import 'package:github_trend/src/models/repositoryModel.dart';
import 'package:github_trend/src/api/api.dart';

class MyHomePageListView extends StatefulWidget {
  @override
  _MyHomePageListViewState createState() => _MyHomePageListViewState();
}

class _MyHomePageListViewState extends State<MyHomePageListView> {
  ScrollController _scrollController = ScrollController();
  bool isLoading;
  List<RepositoryModel> repositories = List<RepositoryModel>();
  int currentPage = 1;

  fetchRepo() async {
    setState(() {
      isLoading = true;
    });
    var res = await Api.getRepos(currentPage);
    setState(() {
      for (int i = 0; i < res.length; i++) {
        repositories.add(RepositoryModel.fromJson(res[i]));
      }
      isLoading = false;
      currentPage++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        controller: _scrollController,
        shrinkWrap: true,
        children: <Widget>[]
          ..addAll(repositories.map((model) {
            return RepositoryCardView(model);
          }).toList())
          ..add(Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: isLoading
                ? Center(
                    child: CircularProgressIndicator(),
                  )
                : Container(
                    height: 0,
                    width: 0,
                  ),
          )),
      ),
    );
  }

  @override
  void initState() {
    super.initState();
    fetchRepo();
    _scrollController.addListener(() {
      if (_scrollController.position.pixels ==
          _scrollController.position.maxScrollExtent) {
        fetchRepo();
      }
    });
  }

  @override
  void dispose() {
    super.dispose();
    _scrollController.dispose();
  }
}
