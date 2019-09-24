import 'package:date_ui/scopedModel.dart/TabModel.dart';
import 'package:date_ui/widgets/tarilingListTile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class ListTileIndexed extends StatefulWidget {
  final int index;

  ListTileIndexed({this.index});

  @override
  State<StatefulWidget> createState() {
    return _ListTileIndexed();
  }
}

class _ListTileIndexed extends State<ListTileIndexed> {
  bool isTileSelected = false;
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TabModel>(
      builder: (BuildContext context, Widget child, TabModel model) {
        return Container(
          decoration: BoxDecoration(
              border: isTileSelected
                  ? Border(
                      left: BorderSide(
                          color: Colors.red
                              .withRed(180)
                              .withGreen(60)
                              .withBlue(90),
                          width: 10),
                      right: BorderSide(
                          color: Colors.red
                              .withRed(180)
                              .withGreen(60)
                              .withBlue(90),
                          width: 2),
                      bottom: BorderSide(
                          color: Colors.red
                              .withRed(180)
                              .withGreen(60)
                              .withBlue(90),
                          width: 2),
                      top: BorderSide(
                          color: Colors.red
                              .withRed(180)
                              .withGreen(60)
                              .withBlue(90),
                          width: 2),
                    )
                  : null),
          child: ListTile(
            onTap: () {
              setState(() {
                isTileSelected = !isTileSelected;
              });
            },
            trailing: TrailingListTile(),
            title: Text(
              model.weekdays[widget.index],
              style: TextStyle(fontSize: 12),
            ),
          ),
        );
      },
    );
  }
}
