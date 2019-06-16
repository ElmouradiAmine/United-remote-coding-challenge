import 'package:http/http.dart' as http;
import 'dart:convert';


class Api {



  static getRepos(currentPage) async {
    DateTime date = DateTime.now();
    date.subtract(Duration(days: 30));
    var res = await http.get("https://api.github.com/search/repositories?q=created:>${date.year}-${date.month}-${date.day}&sort=stars&order=desc&page=$currentPage");
    var resBody = res.body;
    var resDecode = jsonDecode(resBody);
    return resDecode["items"];
  }

}