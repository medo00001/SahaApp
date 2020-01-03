import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saha/screen/screen0.dart';
import 'package:saha/screen/screen2.dart';
import 'package:saha/services/services.dart';
import 'package:saha/utilites/cities.dart';
import 'package:saha/widgets/RegisterPage.dart';
import 'package:saha/widgets/backicon.dart';
import 'package:saha/widgets/choose_city.dart';
import 'package:saha/API/authentication.dart';

class Screen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegisterScreen(),
    );
  }
}

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final mytitle = TextEditingController();
  Authentication authentication = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        child: Center(
          child: FutureBuilder(
            future: authentication.register('userbdnadme0z0',
                'medo0101.merozbzd0ds0@gmail.com', 123456, 05310889910, 123456),
            builder: (BuildContext context, AsyncSnapshot snapShot) {
              return Center(
                child: Text('text'),
              );
            },
          ),
        ),
      ),
    );
  }
}

// Scaffold(
//       backgroundColor: Color(0xffF5FCFF),
//       body: SingleChildScrollView(
//         child: SafeArea(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.start,
//             children: <Widget>[
//               Container(
//                 height: 50,
//                 color: Color(0x60F5FCFF),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: <Widget>[
//                     SizedBox(
//                       width: 121,
//                     ),
//                     Text(
//                       'تسجيل حساب جديد',
//                       style: TextStyle(
//                         fontSize: 14,
//                         fontFamily: "Almarai-bold",
//                       ),
//                     ),
//                     BackIcon(),
//                   ],
//                 ),
//               ),
//               SizedBox(
//                 height: 40,
//               ),
//               Container(
//                 child: Text(
//                   'اشترك الان مع تطبيق الساحة',
//                   style: TextStyle(
//                     fontSize: 16,
//                     fontFamily: "Almarai",
//                   ),
//                 ),
//               ),
//               SizedBox(
//                 height: 35,
//               ),
//               myfunc(' اسم المستخدم', 'user.png', TextInputType.text),
//               SizedBox(height: 10),
//               myfunc('رقم الجوال', 'phone.png', TextInputType.number),
//               SizedBox(height: 10),
//               myfunc('الايميل', 'email.png', TextInputType.emailAddress),
//               // SizedBox(height: 10),
//               // myfunc('المدينة', 'city.png', TextInputType.text),
//               Container(
//                 height: 50,
//                 margin: EdgeInsets.all(15),
//                 padding: EdgeInsets.all(8),
//                 decoration: BoxDecoration(
//                   borderRadius: BorderRadius.all(Radius.circular(2)),
//                   // color: Color(0xff25364F),
//                   border: Border.all(
//                     width: 0.6,
//                     color: Color(0xff25364F),
//                   ),
//                 ),
//                 child: CurrentCity(),
//               ),
//               myfunc(
//                   'كلمة المرور', 'password.png', TextInputType.visiblePassword),

//               SizedBox(
//                 height: 10,
//               ),

//               Container(
//                 margin: EdgeInsets.all(10),
//                 width: 135,
//                 height: 50,
//                 child: RaisedButton(
//                   color: Colors.lightBlue[400],
//                   onPressed: () {
//                     // var message = await x['message'];
//                     setState(() {
//                       Navigator.push(context,
//                           MaterialPageRoute(builder: (context) {
//                         return Screen0();
//                       }));
//                     });
//                   },
//                   child: Center(
//                       child: Text(
//                     'تسجيل ',
//                     style: TextStyle(
//                       fontSize: 16,
//                       fontFamily: "Almarai-bold",
//                     ),
//                   )),
//                   textColor: Colors.white,
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 crossAxisAlignment: CrossAxisAlignment.end,
//                 children: <Widget>[
//                   Container(
//                     child: Row(
//                       children: <Widget>[
//                         SizedBox(
//                           height: 35,
//                         ),
//                         InkWell(
//                           onTap: () {},
//                           child: Text(
//                             'الشروط والاحكام',
//                             style: TextStyle(
//                                 fontFamily: "Almarai",
//                                 fontSize: 14,
//                                 color: Color(0xff00AEEF)),
//                           ),
//                         ),
//                         Text(
//                           'بالتسجيل مع الساحة أنا أوافق على ',
//                           style: TextStyle(
//                             fontSize: 14,
//                             fontFamily: "Almarai",
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
