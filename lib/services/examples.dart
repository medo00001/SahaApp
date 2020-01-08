import 'package:flutter/material.dart';
import 'package:saha/API/post_api.dart';
import 'package:saha/Post/post.dart';

class MyApp extends StatelessWidget {
  final PostItem postitem = PostItem();
  final TextEditingController titleControler = new TextEditingController();
  final TextEditingController bodyControler = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "WEB SERVICE",
      theme: ThemeData(
        primaryColor: Colors.deepOrange,
      ),
      home: Scaffold(
          appBar: AppBar(
            title: Text('Create Post'),
          ),
          body: new Container(
            margin: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: new Column(
              children: <Widget>[
                new TextField(
                  controller: titleControler,
                  decoration: InputDecoration(
                      hintText: "title....", labelText: 'Post Title'),
                ),
                new TextField(
                  controller: bodyControler,
                  decoration: InputDecoration(
                      hintText: "body....", labelText: 'Post Body'),
                ),
                new RaisedButton(
                  onPressed: () async {
                    Post p = await postitem.createPost(
                        titleControler.text, bodyControler.text);
                    print(p.id);
                  },
                  child: const Text("Create"),
                )
              ],
            ),
          )),
    );
  }
}
