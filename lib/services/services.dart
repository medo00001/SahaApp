import 'dart:convert';

import 'package:saha/models/post_model.dart';
import 'package:http/http.dart' as http;

import 'dart:async';
import 'dart:io';

class CurrentUser {
  Future<void> getCurrentUser() async {
    String url = 'http://alsaha-app.com/api/v1/current-user';
    http.Response current_user = await http.get(
      url,
      headers: {
        HttpHeaders.authorizationHeader:
            "Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJzdWIiOjMzLCJpc3MiOiJodHRwOi8vYWxzYWhhLWFwcC5jb20vYXBpL3YxL2xvZ2luIiwiaWF0IjoxNTc2Nzk5ODIzLCJleHAiOjE2OTY3OTk4MjMsIm5iZiI6MTU3Njc5OTgyMywianRpIjoieTA3a2t0ZFlvTXFsMm50cyJ9.-jirirUbnionr1RzzHuc1USzqxDzNkvu3dgM12da5FM"
      },
    );
    print(current_user.statusCode);
    var x = jsonDecode(current_user.body);
    print(x);
  }
}
