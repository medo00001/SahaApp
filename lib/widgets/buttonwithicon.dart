import 'package:flutter/material.dart';

class ButtonWithIcon extends StatelessWidget {
  final String text;
  final String logoname;
  const ButtonWithIcon(this.text, this.logoname);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
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
            width: 15,
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
