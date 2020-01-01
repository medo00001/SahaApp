import 'package:flutter/material.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.all(Radius.circular(15))),
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: RaisedButton(
              color: Colors.white,
              elevation: 0,
              onPressed: () {},
              // margin: EdgeInsets.all(20),
              child: Text(
                'الشركات',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Almarai-bold",
                ),
              ),
            ),
          ),
          RaisedButton(
            color: Colors.lightBlueAccent,
            onPressed: () {},
            // margin: EdgeInsets.all(20),
            child: Text(
              'المتاجر',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: "Almarai-bold",
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: RaisedButton(
              color: Colors.white,
              elevation: 0,
              onPressed: () {},
              child: Text(
                'الاعلانات',
                style: TextStyle(
                  fontSize: 16,
                  fontFamily: "Almarai-bold",
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
