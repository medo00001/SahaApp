import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saha/utilites/cities.dart';

class Screen1 extends StatelessWidget {
  final mytitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xffF5FCFF),
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_forward,
                size: 35,
                color: Color(0xff00AEEF),
              ),
            )
          ],
          title: Center(
              child: Text(
            "تسجيل حساب جديد",
            style: TextStyle(
                color: Color(0xff25364F),
                fontFamily: "Almarai-bold",
                fontSize: 17),
          )),
        ),
        backgroundColor: Color(0xffF5FCFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 50,
              ),
              Container(
                child: Text(
                  'اشترك الان مع تطبيق الساحة',
                  style: TextStyle(
                    fontSize: 22,
                    fontFamily: "Almarai",
                  ),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Card(
                margin: EdgeInsets.all(10),
                //color: Colors.blue[200],
                child: ListTile(
                  title: Text(
                    'محمد أمير',
                    style: TextStyle(
                      fontSize: 16,
                      fontFamily: "Almarai",
                    ),
                    textAlign: TextAlign.right,
                  ),
                  trailing: Image(
                    image: AssetImage('images/user.png'),
                  ),
                  subtitle: Text(
                    'اخر دخول منذ 2 د ',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Almarai",
                    ),
                    textAlign: TextAlign.right,
                  ),
                ),
              ),
              myfunc('رقم الجوال', 'phone', TextInputType.number),
              myfunc('الايميل', 'email', TextInputType.emailAddress),
              myfunc('المدينة', 'city', TextInputType.text),
              Container(
                height: 60,
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(2)),
                  // color: Color(0xff25364F),
                  border: Border.all(
                    width: 0.6,
                    color: Color(0xff25364F),
                  ),
                ),
                child: CurrentCity(),
              ),
              myfunc('الرقم السرى', 'password', TextInputType.visiblePassword),
              Container(
                margin: EdgeInsets.all(20),
                width: 140,
                height: 50,
                child: RaisedButton(
                  color: Colors.lightBlue[400],
                  onPressed: () {},
                  child: Center(
                      child: Text(
                    'تسجيل ',
                    style: TextStyle(fontSize: 20, fontFamily: "Almarai-bold"),
                  )),
                  textColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

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

Widget myfunc(String mytext, String image, TextInputType type) {
  return Card(
    margin: EdgeInsets.all(10),
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
          borderSide: BorderSide(
            color: Color(0xff25364F),
          ),
        ),
        suffixIcon: Image.asset("images/$image.png"),
      ),
    ),
  );
}
