import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saha/screen/screen2.dart';
import 'package:saha/utilites/cities.dart';
import 'package:saha/widgets/Dividertext.dart';
import 'package:saha/widgets/categories.dart';
import 'package:saha/widgets/mainmenu.dart';
import 'package:saha/widgets/search_input.dart';

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
          backgroundColor: Color(0xffFFC117),
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
  const MainPage({
    Key key,
  }) : super(key: key);

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
                    margin: EdgeInsets.only(top: 90, left: 20),
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
            Image(
              height: 220,
              width: 400,
              image: AssetImage(
                'images/bmw1.jpg',
              ),
            ),
            DividerText(
              dividertext: '* اقسام الشركات*',
            ),
            SizedBox(
              child: Categories(),
              width: MediaQuery.of(context).size.height - 50,
              height: MediaQuery.of(context).size.height - 350,
            ),
            DividerText(
              dividertext: '*شركات مميزة *',
            )
          ],
        ),
      ),
    );
  }
}
