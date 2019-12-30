import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saha/screen/screen2.dart';
import 'package:saha/services/services.dart';
import 'package:saha/utilites/cities.dart';

class Screen1 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  final mytitle = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xffF5FCFF),
        //   actions: <Widget>[
        //     Register(),
        //   ],
        //   title: Center(
        //       child: Text(
        //     "تسجيل حساب جديد",
        //     style: TextStyle(
        //         color: Color(0xff25364F),
        //         fontFamily: "Almarai-bold",
        //         fontSize: 17),
        //   )),
        // ),
        backgroundColor: Color(0xffF5FCFF),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              SafeArea(
                child: Container(
                  color: Color(0x60F5FCFF),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      SizedBox(
                        width: 121,
                      ),
                      Text(
                        'تسجيل حساب جديد',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Almarai-bold",
                        ),
                      ),
                      Register(),
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Container(
                child: Text(
                  'اشترك الان مع تطبيق الساحة',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Almarai",
                  ),
                ),
              ),
              SizedBox(
                height: 35,
              ),
              myfunc(' اسم المستخدم', 'user.png', TextInputType.text),
              SizedBox(height: 10),
              myfunc('رقم الجوال', 'phone.png', TextInputType.number),
              SizedBox(height: 10),
              myfunc('الايميل', 'email.png', TextInputType.emailAddress),
              // SizedBox(height: 10),
              // myfunc('المدينة', 'city.png', TextInputType.text),
              Container(
                height: 50,
                margin: EdgeInsets.all(15),
                padding: EdgeInsets.all(8),
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
              myfunc(
                  'كلمة المرور', 'password.png', TextInputType.visiblePassword),

              SizedBox(
                height: 10,
              ),

              Container(
                margin: EdgeInsets.all(10),
                width: 135,
                height: 50,
                child: RaisedButton(
                  color: Colors.lightBlue[400],
                  onPressed: () {
                    // CurrentUser currentUser = CurrentUser();
                    // await currentUser.getCurrentUser();

                    Navigator.pop(context);
                  },
                  child: Center(
                      child: Text(
                    'تسجيل ',
                    style: TextStyle(fontSize: 16, fontFamily: "Almarai-bold"),
                  )),
                  textColor: Colors.white,
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
                    // height: 50,
                    // width: 360,
                    // child: RichText(
                    //   text: TextSpan(
                    //       text: '  التسجيل مع الساحة أنا أوافق على',
                    //       style: TextStyle(
                    //         fontSize: 16.0,
                    //         color: Colors.black,
                    //         // decoration: TextDecoration.underline,
                    //         // decorationColor: Colors.deepPurpleAccent,
                    //         // decorationStyle: TextDecorationStyle.dotted,
                    //         // fontStyle: FontStyle.italic,
                    //         // fontWeight: FontWeight.normal,
                    //       ),
                    //       children: <TextSpan>[
                    //         TextSpan(text: 'الشروط والاحكام '),
                    //       ]),
                    // ),

                    child: Row(
                      children: <Widget>[
                        SizedBox(
                          height: 35,
                        ),
                        InkWell(
                          onTap: () {},
                          child: Text(
                            'الشروط والاحكام',
                            style: TextStyle(
                                fontFamily: "Almarai",
                                fontSize: 14,
                                color: Color(0xff00AEEF)),
                          ),
                        ),
                        Text(
                          'بالتسجيل مع الساحة أنا أوافق على ',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: "Almarai",
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
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

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

// TODO add hide password
class _MyFormState extends State<MyForm> {
  // bool _obscureText = true;

  String mytext;
  String image;
  TextInputType type;
  _MyFormState({this.mytext, this.image, this.type});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 330,
      height: 50,
      child: Card(
        margin: EdgeInsets.all(0),
        child: TextField(
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

Widget myfunc(String mytext, String image, TextInputType type) {
  return Container(
    width: 330,
    height: 50,
    child: Card(
      margin: EdgeInsets.all(0),
      child: TextField(
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
            return Screen2();
          }));
        });
      },
      child: Icon(
        Icons.arrow_forward,
        size: 24,
        color: Color(0xff00AEEF),
      ),
    );
  }
}
