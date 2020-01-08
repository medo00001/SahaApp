class Post {
  String title;
  String body;
  int id;
  Post(this.title, this.body, this.id);

  Post.fromJson(
    Map<dynamic, dynamic> json,
  ) {
    this.title = json['title'];
    this.body = json['body'];
    this.id = json['id'];
  }
}
