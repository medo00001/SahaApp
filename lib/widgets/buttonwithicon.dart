import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final String text;
  final String logoname;
  const ButtonWithIcon(this.text, this.logoname);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.all(1),
      child: Row(
        children: <Widget>[
          Text(
            text,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontFamily: "Almarai-bold",
            ),
          ),
          SizedBox(
            width: 12,
          ),
          Image(
            height: 20,
            image: AssetImage('images/$logoname'),
          ),
        ],
      ),
      onPressed: () {},
    );
  }
}
