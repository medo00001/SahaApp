class Ads {
  List title;
  var price;
  int views;
  int like_count;
  int comment_count;
  var photo;
  var banners;

  Ads(this.title, this.price, this.views, this.like_count, this.comment_count,
      this.photo);

  Ads.fromjson(json) {
    this.title = json['categories'];
    this.photo = json['categories'];
    // print(this.photo);
    this.banners = json['banners'][0]['photo'];
    // print(this.banners);
  }
}

// {
//   "id": 2,
//   "title": "سياارة للبيع",
//   "price": 50000,
//   "views": 1,
//   "likes_count": 0,
//   "comments_count": 0,
//   "photo": {
//     "id": 3,
//     "ads_id": 2,
//     "photo": "http://alsaha-app.com/uploads/file-1577003202-5dff28c2798ca.jpg"
//   },
// }
