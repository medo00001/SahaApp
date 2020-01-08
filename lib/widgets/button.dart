import 'package:flutter/material.dart';
import 'package:saha/screen/register_Screen.dart';

class Button extends StatefulWidget {
  @override
  _ButtonState createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 35,
      child: RaisedButton(
        padding: EdgeInsets.all(1),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(15),
          ),
        ),
        color: Colors.lightBlue[400],
        onPressed: () {
          setState(() {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return RegScreenWidget();
            }));
          });
        },
        child: Text(
          '12.000 SR ',
          style: TextStyle(fontSize: 16, fontFamily: "Almarai-bold"),
        ),
        textColor: Colors.white,
      ),
    );
  }
}
