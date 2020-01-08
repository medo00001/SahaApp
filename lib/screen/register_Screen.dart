import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saha/widgets/RegisterPage.dart';
import 'package:saha/widgets/alertdialog.dart';
import 'package:saha/widgets/backicon.dart';
import 'package:saha/widgets/choose_city.dart';
import 'package:saha/API/authentication.dart';

class RegisterScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: RegScreenWidget(),
    );
  }
}

class RegScreenWidget extends StatefulWidget {
  @override
  _RegScreenWidgetState createState() => _RegScreenWidgetState();
}

class _RegScreenWidgetState extends State<RegScreenWidget> {
//  controller for widget
  final username = TextEditingController();
  final phone = TextEditingController();
  final password = TextEditingController();
  final email = TextEditingController();

  Authentication authentication = Authentication();
//  its  pass data function to class that contain http get or post
  Future futureFetch() {
    var future = authentication.register(
        username.text, email.text, password.text, phone.text, password.text);
    // print(future);
    return future;
  }

  Dialoge dialog = Dialoge();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF5FCFF),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 50,
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
                    BackIcon(),
                  ],
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
              myfunc(' اسم المستخدم', 'user.png', TextInputType.text, username),
              SizedBox(height: 10),
              myfunc('رقم الجوال', 'phone.png', TextInputType.number, phone),
              SizedBox(height: 10),
              myfunc('الايميل', 'email.png', TextInputType.emailAddress, email),
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
              myfunc('كلمة المرور', 'password.png',
                  TextInputType.visiblePassword, password),

              SizedBox(
                height: 10,
              ),

              FutureBuilder(
                future: futureFetch(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  var users = (snapshot.data);
                  if (snapshot.hasData) {
                    return Container(
                      margin: EdgeInsets.all(10),
                      width: 135,
                      height: 50,
                      child: RaisedButton(
                        color: Colors.lightBlue[400],
                        onPressed: () {
                          dialog.info(context, users.message);
                          // var message = await x['message'];
                          setState(() {
                            // Navigator.push(
                            //   context,
                            //   MaterialPageRoute(
                            //     builder: (context) {
                            //       return Widget;
                            //     },
                            //   ),
                            // );
                          });
                        },
                        child: Center(
                          child: Text(
                            'تسجيل ',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: "Almarai-bold",
                            ),
                          ),
                        ),
                        textColor: Colors.white,
                      ),
                    );
                  }
                  return CircularProgressIndicator();
                },
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Container(
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
              // Center(
              //   child: FutureBuilder(
              //     future: futureFetch(),
              //     builder: (BuildContext context, AsyncSnapshot snapshot) {
              //       var users = (snapshot.data);
              //       if (snapshot.hasData) {
              //         return Text(users.message);
              //       }
              //       return CircularProgressIndicator();
              //     },
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
// register API
//
//
// old design

//  show dialog

// AlertDialog(

//                           semanticLabel: 'hello man',
//                           elevation: 5,
//                           title: Text('Rewind and remember'),
//                           content: SingleChildScrollView(
//                             child: ListBody(
//                               children: <Widget>[
//                                 Text('You will never be satisfied.'),
//                                 Text('You\’re like me. I’m never satisfied.'),
//                               ],
//                             ),
//                           ),
//                           actions: <Widget>[
//                             FlatButton(
//                               child: Text('Regret'),
//                               onPressed: () {
//                                 Navigator.of(context, rootNavigator: true)
//                                     .pop();
//                               },
//                             ),
//                           ],
//                         );
