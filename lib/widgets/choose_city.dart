import 'package:flutter/material.dart';
import 'package:saha/utilites/cities.dart';

class CurrentCity extends StatefulWidget {
  @override
  _CurrentCityState createState() => _CurrentCityState();
}

class _CurrentCityState extends State<CurrentCity> {
  List<DropdownMenuItem> getcity() {
    List<DropdownMenuItem<String>> mycities = [];
    for (int i = 0; i < cities.length; i++) {
      String mycity = cities[i];
      var newcity = DropdownMenuItem(
        child: Text(mycity),
        value: mycity,
      );
      mycities.add(newcity);
    }

    return mycities;
  }

  String selectedValue;
  @override
  Widget build(BuildContext context) {
    return Container(
      child: DropdownButtonHideUnderline(
        child: DropdownButton<String>(
          icon: Image.asset('images/city.png'),
          isExpanded: true,
          value: selectedValue,
          hint: Center(
            child: Text(
              'اختار مدينتك الحالية',
              style: TextStyle(
                fontSize: 16,
                fontFamily: "Almarai",
              ),
              textAlign: TextAlign.center,
            ),
          ),
          onChanged: (value) {
            setState(() {
              selectedValue = value;
            });
          },
          items: getcity(),
        ),
      ),
    );
  }
}
