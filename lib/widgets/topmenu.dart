import 'package:flutter/material.dart';
import 'package:saha/screen/register_Screen.dart';

class TopMenu extends StatelessWidget {
  const TopMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        color: Color(0x60F5FCFF),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            FlatButton(
              child: Row(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/report.png'),
                  ),
                  Text(
                    'ابلاغ',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Almarai-bold",
                    ),
                  ),
                ],
              ),
              onPressed: () {},
            ),
            Register(),
          ],
        ),
      ),
    );
  }
}

class Register extends StatefulWidget {
  @override
  _RegisterState createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return FlatButton(
      onPressed: () {
        setState(() {
          Navigator.push(context, MaterialPageRoute(builder: (context) {
            return RegScreenWidget();
          }));
        });
      },
      child: Icon(
        Icons.arrow_forward,
        size: 35,
        color: Color(0xff00AEEF),
      ),
    );
  }
}
