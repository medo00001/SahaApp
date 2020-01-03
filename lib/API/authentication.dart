import 'dart:convert';

import 'package:saha/user/user.dart';
import 'package:http/http.dart' as http;
import 'package:saha/API/api_util.dart';

class Authentication {
  Future register(String username, String email, var password, int phone,
      var password_confirmation) async {
    String url = ApiUtil.register_url;
    Map<dynamic, dynamic> body = {
      'username': username,
      'email': email,
      'password': password,
      'phone': phone,
      'password_confirmation': password_confirmation,
      'state_id': 10
    };
    print(jsonEncode(body));
    print('before');
    http.Response response = await http.post(url,
        headers: {'Content-Type': 'application/json'}, body: jsonEncode(body));
    print(jsonDecode(response.body));
    print(response.statusCode);

    if (response.statusCode == 200) {
      var body = jsonDecode(response.body);
      print('after');

      print(body);
      return User.fromJson(body);
      // var data = body['message'];
    } else {
      print('null');
    }
  }

  login() {}
  logout() {}
}
