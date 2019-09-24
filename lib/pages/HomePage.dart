import 'package:date_ui/scopedModel.dart/TabModel.dart';
import 'package:date_ui/widgets/Tabs.dart';
import 'package:date_ui/widgets/alternateList.dart';
import 'package:date_ui/widgets/customizeList.dart';
import 'package:date_ui/widgets/dailyList.dart';
import 'package:date_ui/widgets/datePicker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:scoped_model/scoped_model.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.bottomRight,
                    end: Alignment.topLeft,
                    stops: [0.1, 0.5, 0.7, 0.9],
                    colors: [
                      Colors.red.withRed(190).withGreen(63).withBlue(90),
                      Colors.red.withRed(200).withGreen(52).withBlue(81),
                      Colors.red.withRed(210).withGreen(52).withBlue(80),
                      Colors.red.withRed(225).withGreen(50).withBlue(70),
                    ],
                  ),
                ),
                height: 250,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      child: Text(
                        "Your selected plan",
                        style: TextStyle(color: Colors.white, fontSize: 10),
                      ),
                      padding: EdgeInsets.only(left: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      child: Text(
                        "Litres : 2 Lit per day for 30 days",
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                      padding: EdgeInsets.only(left: 20),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    DatePickerLayout(),
                  ],
                ),
              )
            ],
          ),
          Positioned(
            left: 0,
            height: 400,
            right: 0,
            top: 250,
            child: Padding(
              padding: EdgeInsets.only(top: 20),
              child: Container(
                child: ScopedModelDescendant<TabModel>(
                  builder:
                      (BuildContext context, Widget child, TabModel model) {
                    Widget child = DailyList();
                    if (model.dailyButtonStatus) {
                      child = DailyList();
                    }
                    if (model.alternateButtonStatus) {
                      child = AlternateList();
                    }
                    if (model.customizeButtonStatus) {
                      child = CustomizeList();
                    }
                    return child;
                  },
                ),
              ),
            ),
          ),
          Container(
            child: Positioned(
              top: 225,
              left: 30,
              right: 30,
              child: TabLayout(),
            ),
          ),

          // Expanded(
          //   child: Container(
          //     height: 100,
          //     color: Colors.red,
          //     child: ScopedModelDescendant<TabModel>(
          //       builder: (BuildContext context, Widget child, TabModel model) {
          //         Widget child;
          //         // if (model.dailyButtonStatus) {
          //         //   child = DailyList();
          //         // }
          //         // if (model.alternateButtonStatus) {
          //         //   child = DailyList();
          //         // }
          //         // if (model.customizeButtonStatus) {
          //         //   child = DailyList();
          //         // }
          //         return Text("hello");
          //       },
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
