import 'package:flutter/material.dart';

class AdsCard extends StatelessWidget {
  const AdsCard({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              blurRadius: 2,
              offset: Offset.fromDirection(0.5, 0.5),
              color: Colors.grey)
        ],
        // color: Color(0xffFFFFFF),
        color: Colors.white,
        borderRadius: BorderRadius.all(
          Radius.circular(10),
        ),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.all(10),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 30,
              child: Row(
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.all(0),
                    onPressed: () {},
                    icon: Icon(Icons.gps_fixed),
                  ),
                  Text(
                    'الرياض',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: 'Almarai-bold',
                      color: Color(0xff25364F),
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {},
              child: Text(
                'تأمين',
                style: TextStyle(
                    fontFamily: 'Almarai-bold',
                    color: Color(0xff00AEEF),
                    fontSize: 12,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
        subtitle: Align(
          child: Container(
            width: 160,
            child: InkWell(
              onTap: () {
                print('tappes');
              },
              child: Text(
                'شركة السعودية للصناعات الأساسية',
                textDirection: TextDirection.rtl,
                style: TextStyle(
                  fontFamily: 'Almarai-bold',
                  color: Color(0xff25364F),
                  fontSize: 14,
                ),
              ),
            ),
          ),
          alignment: Alignment.centerRight,
        ),
        trailing: Image(
          height: 75,
          fit: BoxFit.contain,
          image: AssetImage(
            'images/company.png',
          ),
        ),
      ),
    );
  }
}
