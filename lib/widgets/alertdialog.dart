import 'package:flutter/material.dart';

class Dialoge {
  info(BuildContext context, String text) {
    return showDialog(
      context: context,
      barrierDismissible: true,
      builder: (context) {
        return AlertDialog(
          semanticLabel: 'hello man',
          elevation: 5,
          title: Center(child: Text('رسالة من النظام')),
          content: SingleChildScrollView(
            child: ListBody(
              children: <Widget>[
                Text(
                  text,
                  textDirection: TextDirection.rtl,
                ),
                Text(
                  'برجاء ادخال قيم صحيحة',
                  textDirection: TextDirection.rtl,
                ),
              ],
            ),
          ),
          actions: <Widget>[
            FlatButton(
              child: Text('okay'),
              onPressed: () {
                Navigator.of(context, rootNavigator: true).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
