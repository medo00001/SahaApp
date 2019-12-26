import 'package:flutter/material.dart';

class TitleAndSub extends StatelessWidget {
  const TitleAndSub({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Container(
          width: 180,
          child: Text(
            'فورد ماركيز موديل 2000',
            overflow: TextOverflow.visible,
            style: TextStyle(
              fontSize: 14,
              fontFamily: "Almarai-bold",
              color: Color(0xff25364F),
            ),
          ),
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          'منذ 3 دقائق ',
          style: TextStyle(
            fontSize: 12,
            fontFamily: "Almarai",
            color: Colors.grey,
          ),
        ),
      ],
    );
  }
}
