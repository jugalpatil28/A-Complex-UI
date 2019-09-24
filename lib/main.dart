import 'package:date_ui/pages/HomePage.dart';
import 'package:date_ui/scopedModel.dart/TabModel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:scoped_model/scoped_model.dart';


void main(){
  // debugPaintSizeEnabled = true;
  // debugPaintBaselinesEnabled = true;
  // debugPaintPointersEnabled = true;
   runApp(MyApp());
   }

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return ScopedModel<TabModel>(
      model: TabModel(),
      child: MaterialApp(
        home: HomePage(),
        theme: ThemeData(
          primaryColor: Colors.red.withRed(180).withGreen(60).withBlue(90),
          accentColor: Colors.redAccent,
          buttonColor: Colors.red.withRed(180).withGreen(60).withBlue(90),
        ),
      ),
    );
  }
}
