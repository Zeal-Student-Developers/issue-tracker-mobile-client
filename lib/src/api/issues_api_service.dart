import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:final_app/constants.dart';
import 'package:final_app/src/api/login_api_service.dart';

var apiService = new APIService();

Future<List<Map<String, dynamic>>> getAllIssues() async {
  List<Map<String, dynamic>> allIssues = [];
  var jsonResponse;
  String url = '$kBaseUrl/issues/all?page=1&limit=20';
  var token = await apiService.getToken();
  var headers = {
    'Authorization': 'Bearer ' + token["token"],
    'Content-Type': 'application/json'
  };
  try {
    http.Response response = await http.get(Uri.parse(url), headers: headers);
    if (response.statusCode == 200) {
      jsonResponse = jsonDecode(response.body);

      for (var issues in jsonResponse['data']['issues']) {
        allIssues.add({
          'description': issues['description'],
          'CreatedOn': issues['CreatedOn'],
          'title': issues['title'],
          'department': issues['department'],
          'upvotes': issues['upvotes'],
          'commentsCount': issues['commentsCount'],
          'isResolved': issues['isResolved'],
          'images': issues['images']
        });
      }
    }
  } catch (e) {
    print(e);
  }

  return allIssues;
}

Future<List<Map<String, dynamic>>> getIssuesByPhrase(String phrase) async {
  List<Map<String, dynamic>> allIssues = [];
  var jsonResponse;
  var token = await apiService.getToken();
  var queryParam = {'phrase': phrase};
  var headers = {
    'Authorization': 'Bearer ' + token["token"],
    'Content-Type': 'application/json'
  };
  String queryString = Uri(queryParameters: queryParam).query;
  String url = '$kBaseUrl/issues/phrase?';
  var requestUrl = url + queryString + '&page=1&limit=10';
  try {
    http.Response response =
        await http.get(Uri.parse(requestUrl), headers: headers);
    // print(response.statusCode);
    if (response.statusCode == 200) {
      jsonResponse = jsonDecode(response.body);

      for (var issues in jsonResponse['data']['issues']) {
        allIssues.add({
          'description': issues['description'],
          'department': issues['department'],
          'isResolved': issues['isResolved'],
          'images': issues['images']
        });
      }
    }
  } catch (e) {
    print(e);
  }
  return allIssues;
}
