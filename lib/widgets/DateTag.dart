import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DateTag extends StatelessWidget {
  String dateType;
  String date;

  DateTag({@required this.dateType, @required this.date});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.bottomRight,
          end: Alignment.topLeft,
          stops: [0.1, 0.5, 0.7, 0.9],
          colors: [
            Colors.grey[500],
            Colors.grey[300],
            Colors.grey[200],
            Colors.grey[100],
          ],
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
      child: Column(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(top: 5, bottom: 10),
            child: Text(
              dateType,
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              date,
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
            padding: EdgeInsets.only(top: 5, bottom: 10),
          ),
        ],
      ),
    );
  }
}
