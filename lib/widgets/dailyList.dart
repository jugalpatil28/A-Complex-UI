import 'package:date_ui/scopedModel.dart/TabModel.dart';
import 'package:date_ui/widgets/ListTileIndexed.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class DailyList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TabModel>(
      builder: (BuildContext context, Widget child, TabModel model) {
        return ListView.builder(
          itemCount: model.weekdays.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                ListTileIndexed(index: index,),
                Divider(color: Colors.grey,),
              ],
            );
          },
        );
      },
    );
  }
}
