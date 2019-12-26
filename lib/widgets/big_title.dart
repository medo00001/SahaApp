import 'package:flutter/material.dart';

class BigTitle extends StatelessWidget {
  final String title;
  const BigTitle({this.title});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Text(
        title,
        overflow: TextOverflow.visible,
        style: TextStyle(
          fontSize: 16,
          fontFamily: "Almarai-bold",
          color: Color(0xff25364F),
        ),
      ),
    );
  }
}
