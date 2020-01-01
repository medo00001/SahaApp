import 'package:flutter/material.dart';

class GridWiewItem extends StatelessWidget {
  GridWiewItem({this.image, this.text, this.mycolor});
  final String image;
  final String text;
  final Color mycolor;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8),
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
