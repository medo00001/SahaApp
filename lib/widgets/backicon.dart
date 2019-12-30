import 'package:flutter/material.dart';
import 'package:saha/screen/screen2.dart';

class BackIcon extends StatefulWidget {
  @override
  _BackIconState createState() => _BackIconState();
}

class _BackIconState extends State<BackIcon> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return Screen2();
          }));
        });
      },
      child: Icon(
        Icons.arrow_forward,
        size: 24,
        color: Color(0xff00AEEF),
      ),
    );
  }
}
