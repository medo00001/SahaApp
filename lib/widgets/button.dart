import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      width: 120,
      height: 40,
      child: RaisedButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        color: Colors.lightBlue[400],
        onPressed: () {},
        child: Text(
          '12.000 SR ',
          style: TextStyle(fontSize: 16, fontFamily: "Almarai-bold"),
        ),
        textColor: Colors.white,
      ),
    );
  }
}
