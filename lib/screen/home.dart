import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:saha/API/ads_api.dart';
import 'package:saha/widgets/Dividertext.dart';
import 'package:saha/widgets/ads_cards.dart';
import 'package:saha/widgets/categories.dart';
import 'package:saha/widgets/mainmenu.dart';
import 'package:saha/widgets/search_input.dart';

List<Widget> ads_cards = [
  AdsCard(),
  AdsCard(),
  AdsCard(),
  AdsCard(),
];

class HomeScreen extends StatefulWidget {
  // String currentuser;
  // Screen0({this.currentuser});
  @override
  _Screen1State createState() => _Screen1State();
}

class _Screen1State extends State<HomeScreen> {
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
          tooltip: 'Long Press To add Ads',
          backgroundColor: Color(0xFFFFC117),
          onPressed: () {
            setState(() {
              ads_cards.add(
                AdsCard(),
              );
            });
          },
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

class MainPage extends StatefulWidget {
  // final String currentuser;
  // MainPage({this.currentuser});

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  Ads_Api ads = Ads_Api();

  fetchdata() {
    Future future = ads.getAds();
    return future;
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: CustomScrollView(
      slivers: <Widget>[
        SliverAppBar(
          backgroundColor: Colors.white,
          pinned: true,
          floating: false,
          expandedHeight: 200,
          flexibleSpace: FlexibleSpaceBar(
            background: Stack(
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
            // title: Center(
            //   child: Text(
            //     ('الساحة'),
            //   ),
            // ),
          ),
        ),
        SliverFillRemaining(
          child: ListView(
            children: <Widget>[
              DividerText(
                dividertext: '*  اعلان ممول  *',
              ),
              // Text(currentuser + ' مرحبا بك'),
              FutureBuilder(
                future: fetchdata(),
                builder: (BuildContext context, AsyncSnapshot snapshot) {
                  var feature_ads = snapshot.data;
                  if (snapshot.hasData) {
                    return Image.network(feature_ads.banners
                        // height: 220,
                        // width: 400,
                        // fit: BoxFit.cover,
                        // image: AssetImage(
                        //   'images/bmw1.jpg',
                        // ),
                        );
                  }
                  return CircularProgressIndicator();
                },
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

              SingleChildScrollView(
                child: _myListView(context),
              ),
            ],
          ),
        ),
      ],
    ));
  }
}

Widget _myListView(BuildContext context) {
  // backing data
  return Column(children: ads_cards);
}
