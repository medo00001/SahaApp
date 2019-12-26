import 'package:flutter/material.dart';
import 'package:saha/utilites/carosel.dart';
import 'package:saha/widgets/big_title.dart';
import 'package:saha/widgets/button.dart';
import 'package:saha/widgets/buttonwithicon.dart';
import 'package:saha/widgets/comment_sec.dart';
import 'package:saha/widgets/description.dart';
import 'package:saha/widgets/details-section.dart';
import 'package:saha/widgets/profilerow.dart';
import 'package:saha/widgets/titleandsub.dart';
import 'package:saha/widgets/topmenu.dart';

class Screen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Color(0xffF5FCFF),
        //   actions: <Widget>[
        //     IconButton(
        //       onPressed: () {},
        //       icon: Icon(
        //         Icons.arrow_forward,
        //         size: 35,
        //         color: Color(0xff00AEEF),
        //       ),
        //     )
        //   ],
        //   title: Center(
        //       child: Text(
        //     " جديد",
        //     style: TextStyle(
        //         color: Color(0xff25364F),
        //         fontFamily: "Almarai-bold",
        //         fontSize: 17),
        //   )),
        // ),
        backgroundColor: Color(0xffF5FCFF),
        body: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            TopMenu(),
            CarouselWithIndicator(),
            Container(
              padding: EdgeInsets.all(10),

              decoration: BoxDecoration(
                // boxShadow: [
                //   BoxShadow(
                //
                //     blurRadius: 7.0,
                //     offset: Offset(0.0, 10.0),
                //   ),
                // ],
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(15.0),
                  topRight: Radius.circular(15.0),
                  bottomLeft: Radius.circular(15.0),
                  bottomRight: Radius.circular(15.0),
                ),
                color: Colors.white70,
              ),
              height: MediaQuery.of(context).size.height + 100,
              width: MediaQuery.of(context).size.width,
              // height: 1000,

              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Button(),
                      TitleAndSub(),
                    ],
                  ),
                  ProfileRow(),
                  Divider(),
                  BigTitle(
                    title: 'الوصف',
                  ),
                  Description(
                    description:
                        'الساحة عبارة عن منصة تطبيق الكترونى للجوالات لعرض إعلانات المستخدمين للسلع المستعملة او الجديدة يتم تصميم التطبيق وفق أحدث معايير التصميم والتي تعتمد البساطة والذوق الفني الرفيع، وبشكل يواكب مواقع الشركات والمجموعات العربية والعالمية المشابهة',
                  ),
                  Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Color(0xff00AEEF),
                      borderRadius: BorderRadius.all(
                        Radius.circular(10.0),
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[
                        ButtonWithIcon('تعليق', 'comment.png'),
                        SizedBox(width: 5),
                        ButtonWithIcon('تواصل', 'message.png'),
                        SizedBox(width: 5),
                        ButtonWithIcon('اعجاب', 'like1.png'),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  BigTitle(
                    title: 'العنوان',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      FlatButton(
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Image(
                              height: 24,
                              image: AssetImage('images/location.png'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'عرض المنطقة',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: "Almarai",
                              ),
                            ),
                          ],
                        ),
                        onPressed: () {},
                      ),
                      Text(
                        'الرياض ',
                        style: TextStyle(
                          fontSize: 14,
                          fontFamily: "Almarai",
                        ),
                      ),
                    ],
                  ),
                  Divider(),
                  BigTitle(
                    title: 'المواصفات',
                  ),
                  Details(
                    data: 'الحالة',
                    detail: 'مستعمل',
                  ),
                  Details(
                    data: 'الكيلو مترات',
                    detail: '60.000 - 80.000',
                  ),
                  Details(
                    data: 'ناقل الحركة',
                    detail: ' اتوماتيك',
                  ),
                  Details(
                    data: 'السنة',
                    detail: ' 2019',
                  ),
                  Details(
                    data: 'المحرك',
                    detail: ' 1600 CC',
                  ),
                ],
              ),
            ),
            Container(
              // padding: EdgeInsets.all(5),

              // decoration: BoxDecoration(
              // boxShadow: [
              //   BoxShadow(
              //
              //     blurRadius: 7.0,
              //     offset: Offset(0.0, 10.0),
              //   ),
              // ],
              // borderRadius: BorderRadius.only(
              //   topLeft: Radius.circular(15.0),
              //   topRight: Radius.circular(15.0),
              //   bottomLeft: Radius.circular(15.0),
              //   bottomRight: Radius.circular(15.0),
              // ),
              // color: Colors.white70,
              // ),
              width: MediaQuery.of(context).size.width,
              // height: 1000,

              margin: EdgeInsets.all(10),
              child: Column(
                children: <Widget>[
                  BigTitle(
                    title: 'التعليقات ( 20)',
                  ),
                  CommentSection(
                    commentdata:
                        'الساحة عبارة عن منصة تطبيق الكترونى للجوالات لعرض إعلانات المستخدمين للسلع المستعملة او الجديدة يتم تصميم التطبيق وفق أحدث معايير التصميم والتي تعتمد البساطة والذوق الفني الرفيع، وبشكل يواكب مواقع الشركات والمجموعات العربية والعالمية المشابهة',
                    profilepic: 'amir.jpg',
                    time: ' منذ 3 د',
                  ),
                  CommentSection(
                    commentdata:
                        'الساحة عبارة عن منصة تطبيق الكترونى للجوالات لعرض إعلانات المستخدمين للسلع المستعملة او الجديدة يتم تصميم التطبيق وفق أحدث معايير التصميم والتي تعتمد البساطة والذوق الفني الرفيع، وبشكل يواكب مواقع الشركات والمجموعات العربية والعالمية المشابهة',
                    profilepic: 'amir.jpg',
                    time: ' منذ 3 د',
                  ),
                  CommentSection(
                    commentdata:
                        'الساحة عبارة عن منصة تطبيق الكترونى للجوالات لعرض إعلانات المستخدمين للسلع المستعملة او الجديدة يتم تصميم التطبيق وفق أحدث معايير التصميم والتي تعتمد البساطة والذوق الفني الرفيع، وبشكل يواكب مواقع الشركات والمجموعات العربية والعالمية المشابهة',
                    profilepic: 'amir.jpg',
                    time: ' منذ 3 د',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
