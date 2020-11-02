import 'package:flutter/material.dart';

class HomeTopInfo extends StatelessWidget {
  final textStyle = TextStyle(
    color: Colors.white,
    fontSize: 32.0,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    fontFamily: 'Arial',
  );
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(" shou 3abelak?", style: textStyle)
                // Text(" 3a belakk ?", style: textStyle)
              ]),
          Icon(Icons.notifications_none,
              size: 30.0, color: Theme.of(context).primaryColor),
        ],
      ),
    );
  } //
}
