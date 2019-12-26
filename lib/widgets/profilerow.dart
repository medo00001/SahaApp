import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(10),
          child: Row(
            children: <Widget>[
              Image(
                height: 20,
                image: AssetImage('images/views.png'),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '103',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Almarai-bold",
                ),
              ),
            ],
          ),
        ),
        FlatButton(
          child: Row(
            children: <Widget>[
              Image(
                height: 20,
                image: AssetImage('images/like.png'),
              ),
              SizedBox(
                width: 5,
              ),
              Text(
                '103',
                style: TextStyle(
                  fontSize: 12,
                  fontFamily: "Almarai-bold",
                ),
              ),
            ],
          ),
          onPressed: () {},
        ),
        Row(
          children: <Widget>[
            IconButton(
              icon: Image(
                image: AssetImage('images/star_premium.png'),
              ),
              // child: Image(
              //   image: AssetImage('images/star_premium.png'),
              // ),
              onPressed: () {},
            ),
            Text(
              'محمد أمير',
              style: TextStyle(
                fontSize: 12,
                fontFamily: "Almarai",
                color: Colors.grey,
              ),
            ),
            Container(
              margin: EdgeInsets.all(10),
              child: InkWell(
                onTap: () {
                  print("tapped");
                },
                child: CircleAvatar(
                  radius: 20,
                  // backgroundImage:NetworkImage('https://assets-ouch.icons8.com/thumb/884/5e822766-3dc6-456a-a370-9af1b1b339c3.png') ,
                  backgroundImage: AssetImage('images/amir.jpg'),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
