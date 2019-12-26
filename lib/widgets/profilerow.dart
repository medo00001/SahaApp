import 'package:flutter/material.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Wrap(
      spacing: 0,
      runSpacing: 0,
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 40,
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
                    '1200',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Almarai-bold",
                    ),
                  ),
                ],
              ),
            ),
            FlatButton(
              padding: EdgeInsets.all(1),
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
                    '199',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Almarai-bold",
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
            IconButton(
              padding: EdgeInsets.all(1),
              icon: Image(
                height: 20,
                image: AssetImage('images/star_premium.png'),
              ),
              // child: Image(
              //   image: AssetImage('images/star_premium.png'),
              // ),
              onPressed: () {},
            ),
            Row(
              children: <Widget>[
                Container(
                  width: 60,
                  child: Text(
                    'محمد أمير',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Almarai",
                      color: Colors.grey,
                    ),
                  ),
                ),
                Container(
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
        ),
      ],
    );
  }
}
