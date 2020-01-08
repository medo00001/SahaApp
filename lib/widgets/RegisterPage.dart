import 'package:flutter/material.dart';

Widget myfunc(String mytext, String image, TextInputType controllertype,
    TextEditingController mycontroller) {
  return Container(
    width: 330,
    height: 50,
    child: Card(
      margin: EdgeInsets.all(0),
      child: TextField(
        controller: mycontroller,
        textAlign: TextAlign.end,
        // textDirection: TextDirection.rtl,
        style: TextStyle(
          fontSize: 16,
          fontFamily: "Almarai",
        ),
        keyboardType: controllertype,
        decoration: InputDecoration(
          labelText: mytext,
          hintText: mytext,
          border: OutlineInputBorder(
            borderSide: BorderSide(
              color: Color(0xff25364F),
            ),
          ),
          suffixIcon: Image.asset(
            "images/$image",
            scale: 1.5,
          ),
        ),
      ),
    ),
  );
}

// TODO use class instead of function

class MyForm extends StatelessWidget {
  // bool _obscureText = true;

  final String mytext;
  final String image;
  final TextInputType type;
  final TextEditingController mycontroller;
  MyForm({this.mytext, this.image, this.type, this.mycontroller});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 50,
      child: Card(
        margin: EdgeInsets.all(0),
        child: TextField(
          controller: mycontroller,
          textAlign: TextAlign.end,
          // textDirection: TextDirection.rtl,
          style: TextStyle(
            fontSize: 16,
            fontFamily: "Almarai",
          ),
          keyboardType: type,
          decoration: InputDecoration(
            hintText: mytext,
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: Color(0xff25364F),
              ),
            ),
            suffixIcon: Image.asset(
              "images/$image",
              scale: 1.5,
            ),
          ),
        ),
      ),
    );
  }
}
