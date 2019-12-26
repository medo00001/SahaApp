import 'package:flutter/material.dart';
import 'package:saha/widgets/description.dart';

class CommentSection extends StatelessWidget {
  final String commentdata;
  final String profilepic;
  final String time;
  const CommentSection({this.commentdata, this.profilepic, this.time});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: <Widget>[
          Description(
            description: commentdata,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: <Widget>[
                    Text(
                      time,
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: "Almarai",
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: <Widget>[
                  Text(
                    'محمد أمير',
                    style: TextStyle(
                      fontSize: 12,
                      fontFamily: "Almarai",
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        print("tapped");
                      },
                      child: CircleAvatar(
                        radius: 20,
                        // backgroundImage:NetworkImage('https://assets-ouch.icons8.com/thumb/884/5e822766-3dc6-456a-a370-9af1b1b339c3.png') ,
                        backgroundImage: AssetImage('images/$profilepic'),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
