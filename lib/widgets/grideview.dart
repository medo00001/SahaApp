import 'package:flutter/material.dart';

class GridWiew extends StatelessWidget {
  GridWiew({this.image, this.text, this.mycolor});
  final String image;
  final String text;
  final Color mycolor;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 1,
      child: InkWell(
        highlightColor: Colors.white.withOpacity(0.5),
        splashColor: mycolor,
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Image(
              image: AssetImage('images/categories/$image'),
            ),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}
