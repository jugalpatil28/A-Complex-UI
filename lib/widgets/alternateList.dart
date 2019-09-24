import 'package:date_ui/widgets/dailyList.dart';
import 'package:flutter/cupertino.dart';

class AlternateList extends StatelessWidget {
  const AlternateList({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        Flexible(
          child: DailyList(),
        ),
        SizedBox(
          width: 4,
        ),
        Flexible(
          child: DailyList(),
        )
      ],
    );
  }
}
