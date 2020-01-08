class User {
  String username;
  String email;
  var state_id;
  var password;
  var phone;
  var password_confirmation;
  var id;
  String message;
  var token;

  String photo;
  String city;

  User(this.username, this.email, this.password, this.password_confirmation,
      this.token, this.city, this.photo, this.phone,
      [this.state_id, this.id]);

// this named constructor for return from API post
  User.fromJson(Map<dynamic, dynamic> json) {
    this.message = json['message'];
    this.username = json['username'];
    this.city = json['city'];
    this.token = json['token'];
    this.id = json['id'];
    this.photo = json['photo'];
    this.email = json['email'];
    this.state_id = json['state_id'];
    this.password = json['password'];
    this.phone = json['phone'];
    this.password_confirmation = json['password_confirmation'];
  }
}
