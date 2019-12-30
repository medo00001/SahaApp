import 'package:flutter/material.dart';
import 'package:saha/screen/screen0.dart';

import 'grideview.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 230,
      child: GridView.count(
        padding: EdgeInsets.all(15),
        // Create a grid with 2 columns. If you change the scrollDirection to
        // horizontal, this produces 2 rows.
        crossAxisCount: 3,
        // Generate 100 widgets that display their index in the List.
        children: <Widget>[
          GridWiew(
            image: 'cars.png',
            text: 'سيارات',
            mycolor: Color(0xffE5F7FD),
          ),
          GridWiew(
            image: 'services.png',
            text: 'خدمات',
            mycolor: Color(0xffF4DBE7),
          ),
          GridWiew(
            image: 'furniture.png',
            text: 'اثاث',
            mycolor: Color(0xffF1F4DB),
          ),
          GridWiew(
            image: 'devices.png',
            text: 'اجهزة',
            mycolor: Color(0xffDBF4DC),
          ),
          GridWiew(
            image: 'real_estate.png',
            text: 'عقارات',
            mycolor: Color(0xffF4DCDB),
          ),
          GridWiew(
            image: 'accessories.png',
            text: 'اكسسوارات',
            mycolor: Color(0xffE3DBF4),
          ),
        ],
      ),
    );
  }
}
