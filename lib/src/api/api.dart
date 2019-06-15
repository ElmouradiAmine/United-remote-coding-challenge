import 'package:http/http.dart' as http;
import 'dart:convert';


class Api {

  static String url = "https://api.github.com/search/repositories?q=created:>2017-10-22&sort=stars&order=desc";

  static getRepos(currentPage) async {
    var res = await http.get(url+"&page=$currentPage");
    var resBody = res.body;
    var resDecode = jsonDecode(resBody);
    return resDecode["items"];
  }

}