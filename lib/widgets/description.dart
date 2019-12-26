import 'package:flutter/material.dart';

class Description extends StatelessWidget {
  final String description;
  const Description({this.description});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 10,
        ),
        Container(
          margin: EdgeInsets.all(5),
          width: double.infinity,
          child: Text(
            description,
            overflow: TextOverflow.clip,
            textDirection: TextDirection.rtl,
            style: TextStyle(
              fontSize: 16,
              fontFamily: "Almarai",
              color: Color(0xff25364F),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
