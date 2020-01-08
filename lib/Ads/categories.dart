class Categories {
  int id;
  String name;
  String photo;
  Categories(this.id, this.name, this.photo);

  Categories.fromjson(json) {
    this.id = json['id'];
  }
}

// {
//     "id": 1,
//     "name": "سيارات ومركبات",
//     "photo": "http://alsaha-app.com/uploads/category-1576993388-5dff026c7f6e7.png"
// },
