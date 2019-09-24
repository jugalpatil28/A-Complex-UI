import 'package:date_ui/scopedModel.dart/TabModel.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class TrailingListTile extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    return _TralingListTile();
  }
}

class _TralingListTile extends State<TrailingListTile>{
 int count = 0;
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TabModel>(builder: (BuildContext context,Widget child,Model model){
      return Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          CircleAvatar(
            backgroundColor: Colors.red.withRed(180).withGreen(60).withBlue(90),
            radius: 15,
            child: IconButton(
              onPressed: () {
                setState(() {
                 count++; 
                });
              },
              icon: Icon(
                Icons.add,
                color: Colors.white,
                size: 15,
              ),
            ),
          ),
          SizedBox(width: 6,),
          Text(count.toString()),
          SizedBox(width: 6,),
          CircleAvatar(
            backgroundColor: Colors.red.withRed(180).withGreen(60).withBlue(90),
            radius: 15,
            child: IconButton(
              icon: Icon(
                Icons.remove,
                color: Colors.white,
                size: 15,
              ),
              onPressed: () {setState(() {
               count--; 
              });},
            ),
          ),
        ],
      );
    },
    );
  }
}
