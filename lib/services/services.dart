import 'dart:convert';

import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:io';

class CurrentUser {
  String url = 'http://alsaha-app.com/api/v1/register';
  Future getCurrentUser() async {
    http.Response current_user = await http.get(
      url,
      headers: {
        HttpHeaders.authorizationHeader:
            "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjMzLCJpc3MiOiJodHRwOi8vYWxzYWhhLWFwcC5jb20vYXBpL3YxL2xvZ2luIiwiaWF0IjoxNTc2Nzk5ODIzLCJleHAiOjE2OTY3OTk4MjMsIm5iZiI6MTU3Njc5OTgyMywianRpIjoieTA3a2t0ZFlvTXFsMm50cyJ9.-jirirUbnionr1RzzHuc1USzqxDzNkvu3dgM12da5FM"
      },
    );
    print(current_user.statusCode);
    if (current_user.statusCode == 200) {
      var responsebody = jsonDecode(current_user.body);
      return responsebody;
    } else {
      print('cant find');
    }

    // var id = responsebody['id'];
    // var name = responsebody['username'];
    // var phone = responsebody['phone'];
    // String email = responsebody['email'];
    // String city = responsebody['city']['name'];
  }

  Future newUser() async {
    String regdata =
        '{"username":"amir","email":"medo.medo@gmail.com","state_id": 1001,"password":0000000,"phone":0544508117 , "password_confirmation":0000000}';

// emailasem.elrays@gmail.com
// state_id3146
// password000000
// phone0544508117
// password_confirmation

    http.Response register_new = await http.post(
      url,
      body: regdata,
      headers: {'Content-Type': 'application/json'},
    );
    print(register_new.statusCode);
    if (register_new.statusCode == 200) {
      var responsebody = jsonDecode(register_new.body);
      return responsebody;
    } else {
      print('cant find');
    }
  }
}
