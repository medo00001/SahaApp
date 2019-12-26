import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  final String detail;
  final String data;
  const Details({this.detail, this.data});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border(
              bottom: BorderSide(color: Theme.of(context).dividerColor))),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          // SizedBox(
          //   height: 10,
          // ),
          Text(
            detail,
            style: TextStyle(
              fontSize: 14,
              fontFamily: "Almarai-bold",
            ),
          ),
          Text(
            data,
            style: TextStyle(
                fontSize: 12, fontFamily: "Almarai", color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
