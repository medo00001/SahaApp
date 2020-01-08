import 'package:flutter/material.dart';
import 'package:saha/API/ads_api.dart';

import 'grideview.dart';

class Categories extends StatefulWidget {
  @override
  _CategoriesState createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  Ads_Api ads = Ads_Api();
  fetchdata() {
    Future future = ads.getAds();
    return future;
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: fetchdata(),
      builder: (BuildContext context, AsyncSnapshot snapshot) {
        var categories = (snapshot.data);
        String cars = categories.title[0]['name'];
        String services = categories.title[1]['name'];

        var cars_photo = categories.photo[0]['photo'];
        var services_photo = categories.photo[1]['photo'];

        // print(cars_photo.runtimeType);

        if (snapshot.hasData) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Text('waiting data');
          } else if (snapshot.connectionState == ConnectionState.done) {
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
                  image: (categories.photo != null)
                      ? Image.network(
                          categories.photo[0]['photo'].toString(),
                          height: 70,
                        )
                      : Image.asset('images/categories/cars.png'),
                  text: cars,
                  mycolor: Color(0xffE5F7FD),
                ),
                GridWiewItem(
                  image: Image.network(
                    services_photo,
                    height: 70,
                  ),
                  text: services,
                  mycolor: Color(0xffF4DBE7),
                ),
                GridWiewItem(
                  image: Image.network(
                    services_photo,
                    height: 70,
                  ),
                  text: 'اثاث',
                  mycolor: Color(0xFFF1F4DB),
                ),
                GridWiewItem(
                  image: Image.network(
                    services_photo,
                    height: 70,
                  ),
                  text: 'اجهزة',
                  mycolor: Color(0xffDBF4DC),
                ),
                GridWiewItem(
                  image: Image.network(
                    services_photo,
                    height: 70,
                  ),
                  text: 'عقارات',
                  mycolor: Color(0xffF4DCDB),
                ),
                GridWiewItem(
                  image: Image.network(
                    services_photo,
                    height: 70,
                  ),
                  text: 'اكسسوارات',
                  mycolor: Color(0xffE3DBF4),
                ),
              ],
            );
          }
        }
        return CircularProgressIndicator();
      },
    );
  }
}
