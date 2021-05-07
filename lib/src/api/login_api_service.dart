import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:final_app/constants.dart';

class APIService {
  Future<Map> login(String userId, String password) async {
    dynamic postBody = <String, String>{"userId": userId, "password": password};

    String url = "$kBaseUrl/auth/login";
    var headers = {'Content-Type': 'application/json'};
    SharedPreferences prefs = await SharedPreferences.getInstance();
    var jsonResponse = null;
    int timeStamp = DateTime.now().millisecondsSinceEpoch;

    http.Response response = await http.post(Uri.parse(url),
        body: jsonEncode(postBody), headers: headers);

    if (response.statusCode == 200) {
      jsonResponse = jsonDecode(response.body);
      prefs.setString("token", jsonResponse['token']);
      prefs.setString('refreshToken', jsonResponse['refreshToken']);
      prefs.setInt('timeStamp', timeStamp);
      //print(jsonResponse['refreshToken']);
      return {'error': false};
    } else {
      return {'error': true};
    }
  }

  Future<Map> getToken() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String token = prefs.getString('token') ?? "";
    String refreshToken = prefs.getString('refreshToken') ?? "";
    dynamic postBody = <String, String>{
      "token": token,
      "refreshToken": refreshToken
    };
    String url = "$kBaseUrl/auth/refresh";
    var headers = {
      'Authentication': 'Bearer $token',
      'Content-Type': 'application/json'
    };

    int tokenTime = prefs.getInt('timeStamp') ?? 0;
    DateTime time = DateTime.fromMillisecondsSinceEpoch(tokenTime);
    var currentTime = DateTime.now();
    Duration timeDiff = currentTime.difference(time);
    int minutes = timeDiff.inMinutes;
    var jsonResponse = null;
    if (minutes > kTimeDiff) {
      http.Response response = await http.post(Uri.parse(url),
          body: jsonEncode(postBody), headers: headers);
      jsonResponse = jsonDecode(response.body);
      print(jsonResponse);
      return {'token': jsonResponse['token']};
    }
    return {'token': token};
  }
}
