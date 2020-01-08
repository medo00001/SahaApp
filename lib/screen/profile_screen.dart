import 'package:flutter/material.dart';
import 'package:saha/API/authentication.dart';

class ProfileScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreenWidget(),
    );
  }
}

class ProfileScreenWidget extends StatefulWidget {
  @override
  _ProfileScreenWidgetState createState() => _ProfileScreenWidgetState();
}

class _ProfileScreenWidgetState extends State<ProfileScreenWidget> {
  final mytitle = TextEditingController();
  Authentication authentication = Authentication();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: FutureBuilder(
          future: authentication.current(),
          builder: (BuildContext context, AsyncSnapshot snapShot) {
            var users = (snapShot.data);
            // print(users.username);
            // if (snapShot.hasError) {
            //   print((snapShot.error));
            // }
            return (!snapShot.hasData == false)
                ? Center(
                    child: ListView(
                      children: <Widget>[
                        (!snapShot.hasError)
                            ? Text("welcome back :" + users.username)
                            : Text('text'),
                        Image.network(
                          "${users.photo}",
                        ),
                        Text('مدينتك الحالية هى ' + '${users.city}'),
                        Text("الايميل المسجل هو" + '${users.email}'),
                        Text('Your id is :' + ' ${users.id}'),
                        Text('Your phone is :' + ' ${users.phone}'),
                        Text('التوكن الحالى  :' + ' ${users.token}'),
                      ],
                    ),
                  )
                : CircularProgressIndicator();
          },
        ),
      ),
    );
  }
}
