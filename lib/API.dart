import 'dart:async';

import 'package:http/http.dart' as http;

const baseUrl = "https://github-trending-api.now.sh";

class API {
  static Future getRepos() {
    var url = baseUrl + "/repositories";
    return http.get(url);
  }
}
