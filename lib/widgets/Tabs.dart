import 'package:date_ui/scopedModel.dart/TabModel.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:scoped_model/scoped_model.dart';

class TabLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TabModel>(
      builder: (BuildContext context, Widget child, TabModel model) {
        return Container(
          height: 50,
          width: 120,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 20.0,
                spreadRadius: 0.0,
                offset: Offset(
                  0.0,
                  10.0,
                ),
              )
            ],
            color: Colors.white,
            border: Border.all(color: Colors.white),
            borderRadius: BorderRadius.circular(50),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              RaisedButton(
                color: model.dailyButtonStatus ? Colors.red.withRed(180).withGreen(60).withBlue(90) : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "daily",
                  style: TextStyle(color: model.dailyButtonStatus ? Colors.white : Colors.grey),
                ),
                onPressed: () => model.toggleDailyButton(),
              ),
              RaisedButton(
                color:
                    model.alternateButtonStatus ? Colors.red.withRed(180).withGreen(60).withBlue(90) : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "alternate",
                  style: TextStyle(color: model.alternateButtonStatus ? Colors.white : Colors.grey),
                ),
                onPressed: () => model.toggleAlternateButton(),
              ),
              RaisedButton(
                color:
                    model.customizeButtonStatus ? Colors.red.withRed(180).withGreen(60).withBlue(90) : Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
                child: Text(
                  "customize",
                  style: TextStyle(color: model.customizeButtonStatus ? Colors.white : Colors.grey),
                ),
                onPressed: () => model.toggleCustomizeButton(),
              )
            ],
          ),
        );
      },
    );
  }
}
