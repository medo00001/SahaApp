import 'package:flutter/material.dart';

class MyInput extends StatelessWidget {
  final String mytext;
  final String image;
  final TextInputType type;
  MyInput({this.image, this.type, this.mytext});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(15),
        ),
      ),
      width: double.infinity,
      child: TextField(
        textAlign: TextAlign.center,
        // textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 16,
          fontFamily: "Almarai",
        ),
        keyboardType: type,
        decoration: InputDecoration(
          hintText: mytext,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(15),
            ),
            borderSide: BorderSide(
              color: Color(0xff25364F),
            ),
          ),
          prefixIcon: IconButton(
            icon: Image(
              height: 24,
              image: AssetImage('images/search.png'),
            ),
            onPressed: () {},
            padding: EdgeInsets.only(left: 10),
          ),
        ),
      ),
    );
  }
}
