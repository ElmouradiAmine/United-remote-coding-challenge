import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:github_trend/src/widgets/repositoryCardView.dart';
import 'package:github_trend/src/models/repositoryModel.dart';

class MyHomePageListView extends StatefulWidget {
  @override
  _MyHomePageListViewState createState() => _MyHomePageListViewState();
}

class _MyHomePageListViewState extends State<MyHomePageListView> {
  final String url =
      "https://api.github.com/search/repositories?q=created:>2017-10-22&sort=stars&order=desc";
  List data;
  bool isLoading = true;

  Future<String> getRepo() async {
    var res = await http.get(url);
    print(res.body);
    setState(() {
      var resBody = json.decode(res.body);
      data = resBody["items"];
      isLoading = false;
    });
    return "Success";
  }

  @override
  Widget build(BuildContext context) {
    return isLoading ? Center(
      child: CircularProgressIndicator(),
    ) : ListView.builder(
        itemCount: data!= null ? data.length : 0,
        itemBuilder: (context,index){
          return RepositoryCardView(
            RepositoryModel.fromJson(data[index])
          );
        });

  }

  @override
  void initState() {
    super.initState();
    getRepo();
  }
}
