import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saha/screen/screen2.dart';
import 'package:saha/widgets/Dividertext.dart';
import 'package:saha/widgets/categories.dart';
import 'package:saha/widgets/mainmenu.dart';
import 'package:saha/widgets/search_input.dart';

class Screen0 extends StatefulWidget {
  // String currentuser;
  // Screen0({this.currentuser});
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<Screen0> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomAppBar(
          color: Colors.white,
          notchMargin: 10,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              IconButton(
                onPressed: () {},
                icon: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/more.png'),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/user.png'),
                    )
                  ],
                ),
              ),
              SizedBox(
                width: 50,
              ),
              IconButton(
                onPressed: () {},
                icon: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/nav_notifications.png'),
                    )
                  ],
                ),
              ),
              IconButton(
                onPressed: () {},
                icon: Column(
                  children: <Widget>[
                    Image(
                      image: AssetImage('images/nav_home.png'),
                    )
                  ],
                ),
              ),
            ],
          ),
          shape: CircularNotchedRectangle(),
        ),
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color(0xFFFFC117),
          onPressed: () {},
          child: Icon(
            Icons.add,
            size: 50,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        backgroundColor: Color(0xffF5FCFF),
        body: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final String currentuser;
  MainPage({this.currentuser});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: 207,
              child: Stack(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/background_graphics.png'),
                  ),
                  Positioned(
                    top: 10,
                    left: 150,
                    child: IconButton(
                      onPressed: () {},
                      icon: Image(
                        image: AssetImage('images/logo.png'),
                      ),
                    ),
                  ),
                  Container(
                    height: 40,
                    width: 330,
                    margin: EdgeInsets.only(top: 90, left: 20, right: 20),
                    child: Align(
                        alignment: Alignment.center,
                        child: MyInput(
                            image: 'search.png',
                            mytext: 'انا ايحث عن...',
                            type: TextInputType.text)),
                  ),
                  Positioned(
                    width: 360,
                    top: 145,
                    child: MainMenu(),
                  ),
                ],
              ),
            ),
            DividerText(
              dividertext: '*  اعلان ممول  *',
            ),
            Text(currentuser + ' مرحبا بك'),
            Image(
              height: 220,
              width: 400,
              fit: BoxFit.cover,
              image: AssetImage(
                'images/bmw1.jpg',
              ),
            ),
            DividerText(
              dividertext: '* اقسام الشركات*',
            ),
            SizedBox(
              child: Categories(),
              width: 360,
              height: 240,
            ),
            DividerText(
              dividertext: '*شركات مميزة *',
            ),
            SizedBox(
              height: 220,
              width: 450,
              child: Column(
                children: <Widget>[
                  Image(
                    height: 220,
                    width: 400,
                    // fit: BoxFit.cover,
                    image: AssetImage(
                      'images/bmw1.jpg',
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
