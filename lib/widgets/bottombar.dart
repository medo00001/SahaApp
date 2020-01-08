import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:saha/screen/details.dart';
import 'package:saha/screen/home.dart';

class HomePage1 extends StatefulWidget {
  HomePage1({Key key}) : super(key: key);

  @override
  HomePage1State createState() => HomePage1State();
}

class HomePage1State extends State<HomePage1> {
  int selectedIndex = 0;
  final widgetOptions = [
    DetailScreen(),
    HomeScreen(),
    Text('Favourites'),
    Text('no 1'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: widgetOptions.elementAt(selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            title: Text('data'),
            icon: IconButton(
              icon: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/more.png'),
                  )
                ],
              ),
            ),
          ),
          BottomNavigationBarItem(
            title: Text('data'),
            icon: IconButton(
              icon: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/user.png'),
                  )
                ],
              ),
            ),
          ),
          BottomNavigationBarItem(
            title: Text('data'),
            icon: IconButton(
              icon: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/nav_notifications.png'),
                  )
                ],
              ),
            ),
          ),
          BottomNavigationBarItem(
            title: Text('data'),
            icon: IconButton(
              icon: Column(
                children: <Widget>[
                  Image(
                    image: AssetImage('images/nav_home.png'),
                  )
                ],
              ),
            ),
          ),
        ],
        currentIndex: selectedIndex,
        fixedColor: Colors.deepPurple,
        onTap: onItemTapped,
      ),
    );
  }

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }
}
