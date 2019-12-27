import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saha/screen/screen2.dart';
import 'package:saha/utilites/cities.dart';

class Screen0 extends StatefulWidget {
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen0> {
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
          child: SafeArea(
            child: Column(
              children: <Widget>[
                Container(
                  height: 250,
                  child: Stack(
                    children: <Widget>[
                      Image(
                        image: AssetImage('images/background_graphics.png'),
                      ),
                      Positioned(
                        top: 10,
                        left: 150,
                        // width: 100,
                        // height: 100,
                        child: IconButton(
                          onPressed: () {},
                          icon: Image(
                            image: AssetImage('images/logo.png'),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: 100),
                        padding: EdgeInsets.all(15),
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: myfunc('انا ايحث عن...', 'search.png',
                              TextInputType.text),
                        ),
                      ),
                      Positioned(
                        width: 400,
                        top: 200,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Card(
                              margin: EdgeInsets.all(20),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'الشركات',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Almarai-bold",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(20),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'الشركات',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Almarai-bold",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Card(
                              margin: EdgeInsets.all(20),
                              child: Row(
                                children: <Widget>[
                                  Text(
                                    'الشركات',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: "Almarai-bold",
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  '*  اعلان ممول  *',
                  style: TextStyle(
                    fontSize: 16,
                    fontFamily: "Almarai-bold",
                  ),
                ),
                Image(
                  image: AssetImage('images/bmw1.jpg'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

Widget myfunc(String mytext, String image, TextInputType type) {
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
          borderRadius: BorderRadius.all(Radius.circular(15)),
          borderSide: BorderSide(
            color: Color(0xff25364F),
          ),
        ),
        prefixIcon: IconButton(
          icon: Image(
            image: AssetImage('images/search.png'),
          ),
          onPressed: () {},
          padding: EdgeInsets.only(left: 10),
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
        size: 35,
        color: Color(0xff00AEEF),
      ),
    );
  }
}

// SizedBox(
//   height: 50,
// ),
// Container(
//   child: Text(
//     'اشترك الان مع تطبيق الساحة',
//     style: TextStyle(
//       fontSize: 22,
//       fontFamily: "Almarai",
//     ),
//   ),
// ),
// SizedBox(
//   height: 50,
// ),
// myfunc('رقم الجوال', 'phone', TextInputType.number),
// Container(
//   margin: EdgeInsets.all(20),
//   width: 140,
//   height: 50,
//   child: RaisedButton(
//     color: Colors.lightBlue[400],
//     onPressed: () {
//       Navigator.pop(context);
//     },
//     child: Center(
//         child: Text(
//       'تسجيل ',
//       style: TextStyle(fontSize: 20, fontFamily: "Almarai-bold"),
//     )),
//     textColor: Colors.white,
//   ),
// ),
