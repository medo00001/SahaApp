import 'dart:convert';
import 'dart:io';
import 'package:saha/user/user.dart';
import 'package:http/http.dart' as http;
import 'package:saha/API/api_util.dart';

class Authentication {
  // register new users
  Future<User> register(String username, String email, var password, var phone,
      var password_confirmation) async {
    String url = ApiUtil.register_url;
    Map<dynamic, dynamic> body = {
      'username': username,
      'email': email,
      'password': password,
      'phone': phone,
      'password_confirmation': password_confirmation,
      'state_id': '20'
    };

    http.Response response = await http
        .post(url, body: body, headers: {"Accept": "application/json"});
    var data = jsonDecode(response.body);
    // data = data['message'];
    print(response.statusCode);
    print(response.body);

    if (response.statusCode >= 400) {
      print('sucess but ... ');
      if (data == null) {
        print('its null value 1');
        return (User.fromJson(data));
      } else {
        // print('it have value');

        // print(data['message']);
        return (User.fromJson(data));
      }
    } else if (response.statusCode == 200) {
      if (data == null) {
        // print('its null value');
      } else {
        return User.fromJson(data);
      }
    } else {
      print('its code ${response.statusCode}');
    }
    return null;
  }

//  get current User data
  Future<User> current() async {
    String url = ApiUtil.current_userurl;
    http.Response current_user_res = await http.get(
      url,
      headers: {
        HttpHeaders.authorizationHeader:
            "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjMzLCJpc3MiOiJodHRwOi8vYWxzYWhhLWFwcC5jb20vYXBpL3YxL2xvZ2luIiwiaWF0IjoxNTc2Nzk5ODIzLCJleHAiOjE2OTY3OTk4MjMsIm5iZiI6MTU3Njc5OTgyMywianRpIjoieTA3a2t0ZFlvTXFsMm50cyJ9.-jirirUbnionr1RzzHuc1USzqxDzNkvu3dgM12da5FM"
      },
    );
    var data = jsonDecode(current_user_res.body);
    print(current_user_res.statusCode);
    if (current_user_res.statusCode == 200) {
      // print(body);
      return User.fromJson(data);
      // var data = body['message'];
    } else {
      print('null');
    }
    // return User.fromJson(body);
  }

// http://alsaha-app.com/api/v1/current-user
// HEADERS
// AuthorizationBearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjMzLCJpc3MiOiJodHRwOi8vYWxzYWhhLWFwcC5jb20vYXBpL3YxL2xvZ2luIiwiaWF0IjoxNTc2Nzk5ODIzLCJleHAiOjE2OTY3OTk4MjMsIm5iZiI6MTU3Njc5OTgyMywianRpIjoieTA3a2t0ZFlvTXFsMm50cyJ9.-jirirUbnionr1RzzHuc1USzqxDzNkvu3dgM12da5FM

// login auth (get )
  Future login(String email, dynamic password) async {
    String url = ApiUtil.login_url;

    Map<String, dynamic> body = {"email": email, "password": password};
    http.Response login_res = await http.post(url, body: body);

    if (login_res.statusCode == 200) {
      var data = jsonDecode(login_res.body);
      return User.fromJson(data);
    } else {
      print('cant log in with code message ${login_res.statusCode}');
    }
  }

  logout() {}
}
