import 'package:date_ui/scopedModel.dart/TabModel.dart';
import 'package:date_ui/widgets/DateTag.dart';
import 'package:flutter/cupertino.dart';
import 'package:scoped_model/scoped_model.dart';

class DatePickerLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScopedModelDescendant<TabModel>(
      builder: (BuildContext context, Widget child, TabModel model) {
        return Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            GestureDetector(
              onTap: () => model.selectStartDate(context),
              child: DateTag(
                dateType: "Start date",
                date: (model.startDate.day.toString() + '/' + model.startDate.month.toString() + '/' + model.startDate.year.toString()),
              ),
            ),
            SizedBox(
              width: 10,
            ),
            GestureDetector(
              onTap: () => model.selectEndDate(context),
              child: DateTag(
                dateType: "End date",
                date: (model.endDate.day.toString() + '/' + model.endDate.month.toString() + '/' + model.endDate.year.toString()),
              ),
            ),
          ],
        );
      },
    );
  }
}
