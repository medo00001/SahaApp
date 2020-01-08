import 'package:flutter/material.dart';
import 'package:saha/screen/bottomnav.dart';
import 'package:saha/screen/profile_screen.dart';
import 'package:saha/screen/register_Screen.dart';
import 'package:saha/widgets/bottombar.dart';
import 'screen/details.dart';
import 'screen/home.dart';

// void main() => runApp(BottomNavBar());

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Liquorie',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: HomePage1());
  }
}

// how to make list of options

// class TodoMenuItem {
//   final String title;
//   final Icon icon;
//   TodoMenuItem({this.title, this.icon});
// }

// // Create a List of Menu Item for PopupMenuButton
// List<TodoMenuItem> foodMenuList = [
//   TodoMenuItem(title: 'Fast Food', icon: Icon(Icons.fastfood)),
//   TodoMenuItem(title: 'Remind Me', icon: Icon(Icons.add_alarm)),
//   TodoMenuItem(title: 'Flight', icon: Icon(Icons.flight)),
//   TodoMenuItem(title: 'Music', icon: Icon(Icons.audiotrack)),
// ];

//           PopupMenuButton<TodoMenuItem>(
//                 icon: Icon(Icons.view_list),
//                 onSelected: ((valueSelected) {
//                   print('valueSelected: ${valueSelected.title}');
//                 }),
//                 itemBuilder: (BuildContext context) {
//                   return foodMenuList.map((TodoMenuItem todoMenuItem) {
//                     return PopupMenuItem<TodoMenuItem>(
//                       value: todoMenuItem,
//                       child: Row(
//                         children: <Widget>[
//                           Icon(todoMenuItem.icon.icon),
//                           Padding(
//                             padding: EdgeInsets.all(8.0),
//                           ),
//                           Text(todoMenuItem.title),
//                         ],
//                       ),
//                     );
//                   }).toList();
//                 },
//               ),
