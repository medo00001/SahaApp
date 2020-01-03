import 'package:flutter/material.dart';

import 'grideview.dart';

class Categories extends StatelessWidget {
  const Categories({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      physics: NeverScrollableScrollPhysics(),
      childAspectRatio: 1,
      padding: EdgeInsets.all(15),
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this produces 2 rows.
      crossAxisCount: 3,
      // Generate 100 widgets that display their index in the List.
      children: <Widget>[
        GridWiewItem(
          image: 'cars.png',
          text: 'سيارات',
          mycolor: Color(0xffE5F7FD),
        ),
        GridWiewItem(
          image: 'services.png',
          text: 'خدمات',
          mycolor: Color(0xffF4DBE7),
        ),
        GridWiewItem(
          image: 'furniture.png',
          text: 'اثاث',
          mycolor: Color(0xFFF1F4DB),
        ),
        GridWiewItem(
          image: 'devices.png',
          text: 'اجهزة',
          mycolor: Color(0xffDBF4DC),
        ),
        GridWiewItem(
          image: 'real_estate.png',
          text: 'عقارات',
          mycolor: Color(0xffF4DCDB),
        ),
        GridWiewItem(
          image: 'accessories.png',
          text: 'اكسسوارات',
          mycolor: Color(0xffE3DBF4),
        ),
      ],
    );
  }
}
