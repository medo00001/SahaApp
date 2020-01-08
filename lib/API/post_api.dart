import 'package:saha/Post/post.dart';
import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;

class PostItem {
  Future<Post> createPost(String title, String body) async {
    Map<dynamic, dynamic> inputbody = {
      'title': title,
      'body': body,
      'new': 'newa'
    };
    String url = 'https://jsonplaceholder.typicode.com/posts';
    http.Response res = await http.post(url, body: inputbody);
    var data = jsonDecode(res.body);
    print(res.statusCode);
    if (res.statusCode == 201) {
      print(data);
    } else {
      print('A network error occurred');
    }
    return Post.fromJson(data);
  }
}
