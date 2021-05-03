import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';

class APIService {
  Future<Map> login(String userId, String password) async {
    dynamic postBody = <String, String>{"userId": userId, "password": password};
    String url = "http://52.136.112.220:57842/api/auth/login";
    var headers = {'Content-Type': 'application/json'};
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var jsonResponse = null;
    int timeStamp = DateTime.now().millisecondsSinceEpoch;
    // print(postBody);
    http.Response response = await http.post(Uri.parse(url),
        body: jsonEncode(postBody), headers: headers);
    if (response.statusCode == 200) {
      jsonResponse = jsonDecode(response.body);
      //print(postBody);
      prefs.setString("token", jsonResponse['token']);
      prefs.setString('refreshToken', jsonResponse['refreshToken']);
      prefs.setInt('timeStamp', timeStamp);
      print(jsonResponse['refreshToken']);
      print(prefs.getInt('timeStamp'));
      return {'error': false};
    } else {
      return {'error': true};
    }
  }
}
