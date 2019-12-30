import 'package:flutter/material.dart';

class DividerText extends StatelessWidget {
  const DividerText({this.dividertext});
  final String dividertext;
  @override
  Widget build(BuildContext context) {
    return Text(
      dividertext,
      style: TextStyle(
        fontSize: 16,
        fontFamily: "Almarai-bold",
      ),
    );
  }
}
